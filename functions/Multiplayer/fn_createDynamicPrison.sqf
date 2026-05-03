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

// === TACTICAL GUARD PLACEMENT ===
// Find the guard config for this template
private _guardData = [];
{
    if ((_x select 0) == _templateFunc) exitWith {
        _guardData = _x select 1;
    };
} forEach A3E_PrisonGuardPositions;

private _guardTypes = missionNamespace getVariable ["a3e_arr_Escape_StartPositionGuardTypes", []];
if (count _guardTypes == 0) then {
    _guardTypes = ["CUP_O_RU_Soldier_GL", "CUP_O_RU_Soldier_MG", "CUP_O_RU_Soldier_TL"];
};

// Spawn guards at tactical positions from the guard config
private _allGuards = [];

if (count _guardData > 0) then {
    // --- STATIC POSITION GUARDS (tower, bunker, gate) ---
    private _staticGroup = createGroup [A3E_VAR_Side_Opfor, true];

    {
        _x params ["_category", "_relPos", "_dir"];

        if (_category in ["tower", "bunker", "gate"]) then {
            private _guardPos = [_spawnPos, _spawnPos vectorAdd _relPos, _fenceRotateDir] call A3E_fnc_rotatePosition;
            private _guard = _staticGroup createUnit [selectRandom _guardTypes, _guardPos, [], 0, "CAN_COLLIDE"];
            _guard setPosATL _guardPos;
            _guard setDir (_dir + _fenceRotateDir);
            _guard setSkill (0.25 + random 0.15);
            _guard setBehaviour "SAFE";
            _guard setCombatMode "YELLOW";

            // Tower guards get elevated position and stay put
            if (_category == "tower") then {
                _guard setUnitPos "UP";
                doStop _guard;
            };
            // Bunker guards go prone
            if (_category == "bunker") then {
                _guard setUnitPos "DOWN";
                doStop _guard;
            };
        };
    } forEach _guardData;

    _allGuards pushBack _staticGroup;

    // --- PERIMETER PATROL ---
    private _perimeterGroup = createGroup [A3E_VAR_Side_Opfor, true];

    // 2 patrol guards walking the perimeter
    for "_i" from 0 to 1 do {
        private _startPos = _spawnPos getPos [_compoundRadius * 0.85, _i * 180];
        private _guard = _perimeterGroup createUnit [selectRandom _guardTypes, _startPos, [], 0, "FORM"];
        _guard setSkill (0.3 + random 0.1);
    };

    // Perimeter waypoints from guard data
    private _perimeterPositions = _guardData select { (_x select 0) == "perimeter" };
    {
        _x params ["", "_relPos", ""];
        private _wpPos = [_spawnPos, _spawnPos vectorAdd _relPos, _fenceRotateDir] call A3E_fnc_rotatePosition;
        private _wp = _perimeterGroup addWaypoint [_wpPos, 5];
        _wp setWaypointType "MOVE";
        _wp setWaypointSpeed "LIMITED";
        _wp setWaypointBehaviour "SAFE";
    } forEach _perimeterPositions;

    // Cycle back to start
    private _wpCycle = _perimeterGroup addWaypoint [_spawnPos getPos [_compoundRadius * 0.85, 0], 5];
    _wpCycle setWaypointType "CYCLE";

    _allGuards pushBack _perimeterGroup;

    // --- INTERIOR PATROL ---
    private _interiorGroup = createGroup [A3E_VAR_Side_Opfor, true];

    // 2 guards patrolling inside the compound
    for "_i" from 0 to 1 do {
        private _startPos = _spawnPos getPos [_compoundRadius * 0.2, _i * 180];
        private _guard = _interiorGroup createUnit [selectRandom _guardTypes, _startPos, [], 0, "FORM"];
        _guard setSkill (0.3 + random 0.1);
    };

    private _interiorPositions = _guardData select { (_x select 0) == "interior" };
    {
        _x params ["", "_relPos", ""];
        private _wpPos = [_spawnPos, _spawnPos vectorAdd _relPos, _fenceRotateDir] call A3E_fnc_rotatePosition;
        private _wp = _interiorGroup addWaypoint [_wpPos, 3];
        _wp setWaypointType "MOVE";
        _wp setWaypointSpeed "LIMITED";
        _wp setWaypointBehaviour "SAFE";
    } forEach _interiorPositions;

    private _wpCycle2 = _interiorGroup addWaypoint [_spawnPos, 3];
    _wpCycle2 setWaypointType "CYCLE";

    _allGuards pushBack _interiorGroup;

} else {
    // Fallback: no guard data found, use simple ring pattern (legacy behavior)
    private _guardGroup = createGroup [A3E_VAR_Side_Opfor, true];
    for "_i" from 0 to 5 do {
        private _guardPos = _spawnPos getPos [_compoundRadius * 0.6, _i * 60];
        private _guard = _guardGroup createUnit [selectRandom _guardTypes, _guardPos, [], 0, "FORM"];
        _guard setDir (random 360);
        _guard setSkill 0.3;
        _guard setBehaviour "SAFE";
        _guard setCombatMode "YELLOW";
    };

    private _wp = _guardGroup addWaypoint [_spawnPos getPos [_compoundRadius * 0.7, 0], 8];
    _wp setWaypointType "MOVE";
    _wp setWaypointSpeed "LIMITED";
    _wp setWaypointBehaviour "SAFE";
    private _wp2 = _guardGroup addWaypoint [_spawnPos getPos [_compoundRadius * 0.7, 120], 8];
    _wp2 setWaypointType "MOVE";
    private _wp3 = _guardGroup addWaypoint [_spawnPos getPos [_compoundRadius * 0.7, 240], 8];
    _wp3 setWaypointType "MOVE";
    private _wp4 = _guardGroup addWaypoint [_spawnPos getPos [_compoundRadius * 0.7, 0], 8];
    _wp4 setWaypointType "CYCLE";

    _allGuards pushBack _guardGroup;
};

// Place player inside the prison
_player setPos _spawnPos;
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
    waitUntil {
        sleep 0.5;
        !alive _player ||
        {count weapons _player > 0} ||
        {_player distance _prisonPos > (_radius * 0.8)}
    };

    if (alive _player) then {
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
