// fn_createDynamicPrison.sqf
// Spawns a dynamic prison compound using the new compound templates
// Selects from 15 unique compound types with tactical guard placement
// Called on server via remoteExec
// params: [_pos, _player]

params ["_pos", "_player"];

if (!isServer) exitWith {};

// Load compound definitions if not already loaded
if (isNil "A3E_PrisonCompoundTemplates") then {
    call a3e_fnc_PrisonCompoundDefs;
};
if (isNil "A3E_PrisonGuardPositions") then {
    call a3e_fnc_PrisonGuardPositions;
};

// Select a random compound template
// Format: [funcName, flatnessRadius, compoundRadius]
private _compoundDef = selectRandom A3E_PrisonCompoundTemplates;
_compoundDef params ["_templateFunc", "_flatRadius", "_compoundRadius"];

// Find flat ground - use the compound's flatness requirement
// First attempt: tight constraints near the requested position
private _spawnPos = [_pos, 300, _flatRadius, 0.08, 500] call A3E_fnc_findFlatAreaNear;

// Second attempt: relax gradient and expand search
if (count _spawnPos == 0) then {
    _spawnPos = [_pos, 600, (_flatRadius * 0.7), 0.12, 1000] call A3E_fnc_findFlatAreaNear;
};

// Third attempt: even more relaxed for large compounds
if (count _spawnPos == 0) then {
    _spawnPos = [_pos, 800, (_flatRadius * 0.5), 0.15, 1500] call A3E_fnc_findFlatAreaNear;
};

// Last resort: use the original position
if (count _spawnPos == 0) then {
    _spawnPos = _pos;
};

_spawnPos set [2, 0];

// Create the weapon backpack for the player
private _backpackType = missionNamespace getVariable ["a3e_arr_PrisonBackpackType", "B_AssaultPack_khk"];
private _backpack = _backpackType createVehicle _spawnPos;

// Give 1 random pistol + 2 mags
private _weapons = missionNamespace getVariable ["a3e_arr_PrisonBackpackWeapons", []];
if (count _weapons > 0) then {
    private _picked = selectRandom _weapons;
    _picked params ["_weapon", "_mag"];
    _backpack addWeaponCargoGlobal [_weapon, 1];
    _backpack addMagazineCargoGlobal [_mag, 2];
};

// Add prison backpack items (bandage, flashlight, etc.)
private _items = missionNamespace getVariable ["a3e_arr_PrisonBackpackItems", []];
{
    _x params ["_item", "_count"];
    _backpack addItemCargoGlobal [_item, _count];
} forEach _items;

// Build the compound with random rotation
private _fenceRotateDir = random 360;
[_spawnPos, _fenceRotateDir, _backpack] remoteExec [_templateFunc, 0, true];

// === GUARD PLACEMENT ===
// Wait for compound objects to be created
sleep 0.5;

// Wait for A3E_VAR_Side_Opfor to be defined (server init may still be running)
waitUntil { sleep 0.5; !isNil "A3E_VAR_Side_Opfor" };

private _guardTypes = missionNamespace getVariable ["a3e_arr_Escape_StartPositionGuardTypes", []];
if (count _guardTypes == 0) then {
    // No guard types configured - skip guard spawning entirely
    // (fallback classnames would cause faction mismatches)
    diag_log "createDynamicPrison: WARNING - no guard types configured, skipping guards";
};

// ALL guards go in ONE group to prevent any friendly fire issues
private _guardGroup = createGroup [A3E_VAR_Side_Opfor, true];

if (count _guardTypes > 0) then {

    // --- BUILDING GARRISON: Put guards in towers and buildings ---
    private _nearBuildings = nearestObjects [_spawnPos, ["Building"], _compoundRadius];
    {
        private _building = _x;
        private _positions = [];
        private _posIdx = 0;
        private _bpos = _building buildingPos _posIdx;
        while { !(_bpos isEqualTo [0,0,0]) } do {
            _positions pushBack _bpos;
            _posIdx = _posIdx + 1;
            _bpos = _building buildingPos _posIdx;
        };

        if (count _positions > 0) then {
            private _numGuards = (ceil (count _positions / 3)) min 2;
            private _sortedPos = [_positions, [], { _x select 2 }, "DESCEND"] call BIS_fnc_sortBy;

            for "_i" from 0 to (_numGuards - 1) do {
                private _guardPos = _sortedPos select (_i min (count _sortedPos - 1));
                private _guard = _guardGroup createUnit [selectRandom _guardTypes, _guardPos, [], 0, "CAN_COLLIDE"];
                _guard setPosATL _guardPos;
                _guard setDir (random 360);
                _guard setSkill (0.3 + random 0.15);
                _guard setBehaviour "SAFE";
                _guard setCombatMode "YELLOW";
                _guard setUnitPos "UP";
                doStop _guard;
            };
        };
    } forEach _nearBuildings;

    // --- GATE GUARDS ---
    if (!isNil "A3E_PrisonGateObject") then {
        private _gatePos = getPos A3E_PrisonGateObject;
        private _gateDir = getDir A3E_PrisonGateObject;
        for "_i" from 0 to 1 do {
            private _offset = if (_i == 0) then { -3 } else { 3 };
            private _guardPos = _gatePos getPos [_offset, _gateDir + 90];
            private _guard = _guardGroup createUnit [selectRandom _guardTypes, _guardPos, [], 0, "CAN_COLLIDE"];
            _guard setPosATL _guardPos;
            _guard setDir _gateDir;
            _guard setSkill (0.3 + random 0.1);
            _guard setBehaviour "SAFE";
            _guard setCombatMode "YELLOW";
            doStop _guard;
        };
    };

    // --- GROUND PATROL: walks around and inside the compound ---
    for "_i" from 0 to 3 do {
        private _startPos = _spawnPos getPos [_compoundRadius * 0.5, _i * 90];
        private _guard = _guardGroup createUnit [selectRandom _guardTypes, _startPos, [], 0, "FORM"];
        _guard setSkill (0.3 + random 0.1);
    };

    // Patrol waypoints
    for "_angle" from 0 to 270 step 90 do {
        private _wpPos = _spawnPos getPos [_compoundRadius * 0.7, _angle];
        private _wp = _guardGroup addWaypoint [_wpPos, 5];
        _wp setWaypointType "MOVE";
        _wp setWaypointSpeed "LIMITED";
        _wp setWaypointBehaviour "SAFE";
    };
    private _wpCycle = _guardGroup addWaypoint [_spawnPos getPos [_compoundRadius * 0.7, 0], 5];
    _wpCycle setWaypointType "CYCLE";
};

private _allGuards = [_guardGroup];

// Place player inside the prison cell building
// Find the cell building and use its floor position so player isn't clipped underground
private _cellBuilding = nearestObject [_spawnPos, "Building"];
private _playerPos = _spawnPos;
if (!isNull _cellBuilding && (_cellBuilding distance _spawnPos) < 8) then {
    private _bpos = _cellBuilding buildingPos 0;
    if !(_bpos isEqualTo [0,0,0]) then {
        _playerPos = _bpos;
    };
    // Also move the backpack onto the building floor
    _backpack setPosATL _playerPos;
};
_player setPosATL _playerPos;
_player setCaptive true;
_player setVariable ["A3E_MP_InLobby", false, true];
_player setVariable ["A3E_MP_PrisonPos", _spawnPos, true];

// Set A3E_EscapeHasStarted if not already
if (isNil "A3E_EscapeHasStarted") then {
    A3E_EscapeHasStarted = true;
    publicVariable "A3E_EscapeHasStarted";
};

// Watch this player - when they pick up a weapon or move away, release them
[_player, _spawnPos, _allGuards, _compoundRadius] spawn {
    params ["_player", "_prisonPos", "_guardGroups", "_radius"];

    // Wait until player picks up weapon or moves beyond compound radius
    // Bail if player enters lobby (group wipe teleport)
    waitUntil {
        sleep 0.5;
        if (_player getVariable ["A3E_InSpawnLobby", false]) exitWith {true};
        !alive _player ||
        {count weapons _player > 0} ||
        {_player distance _prisonPos > (_radius * 0.8)}
    };

    if (alive _player && !(_player getVariable ["A3E_InSpawnLobby", false]) && !(_player getVariable ["AT_Revive_isUnconscious", false]) && !(_player getVariable ["A3E_MP_InLobby", false])) then {
        // Release from captive - all guards will now engage
        [_player, false] remoteExec ["setCaptive", _player, false];

        // Alert ALL guard groups
        {
            _x setCombatMode "RED";
            _x setBehaviour "COMBAT";
            {
                _x reveal [_player, 4];
            } forEach units _x;
        } forEach _guardGroups;

        systemChat format ["%1 has escaped!", name _player];
    };
};

_spawnPos
