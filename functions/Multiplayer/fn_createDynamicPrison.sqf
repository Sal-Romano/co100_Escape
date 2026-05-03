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
// Wait a frame for the compound objects to be created by remoteExec
sleep 0.5;

private _guardTypes = missionNamespace getVariable ["a3e_arr_Escape_StartPositionGuardTypes", []];
if (count _guardTypes == 0) then {
    _guardTypes = ["CUP_O_RU_Soldier_GL", "CUP_O_RU_Soldier_MG", "CUP_O_RU_Soldier_TL"];
};

private _allGuards = [];

// --- 1. BUILDING GARRISON: Find all buildings/towers in compound and put guards inside ---
private _buildingGroup = createGroup [A3E_VAR_Side_Opfor, true];
private _nearBuildings = nearestObjects [_spawnPos, ["Building"], _compoundRadius + 10];
private _garrisonedCount = 0;

{
    private _building = _x;
    // Get all building positions (walkable spots inside the building)
    private _positions = [];
    private _posIdx = 0;
    private _bpos = _building buildingPos _posIdx;
    while { !(_bpos isEqualTo [0,0,0]) } do {
        _positions pushBack _bpos;
        _posIdx = _posIdx + 1;
        _bpos = _building buildingPos _posIdx;
    };

    if (count _positions > 0) then {
        // Determine how many guards based on building size
        private _numGuards = (ceil (count _positions / 3)) min 3;

        for "_i" from 0 to (_numGuards - 1) do {
            // Pick the highest positions first (top of towers)
            private _sortedPos = [_positions, [], { _x select 2 }, "DESCEND"] call BIS_fnc_sortBy;
            private _guardPos = _sortedPos select (_i min (count _sortedPos - 1));

            private _guard = _buildingGroup createUnit [selectRandom _guardTypes, _guardPos, [], 0, "CAN_COLLIDE"];
            _guard setPosATL _guardPos;
            _guard setDir (random 360);
            _guard setSkill (0.3 + random 0.15);
            _guard setBehaviour "SAFE";
            _guard setCombatMode "YELLOW";
            _guard setUnitPos "UP";
            doStop _guard;

            _garrisonedCount = _garrisonedCount + 1;
        };
    };
} forEach _nearBuildings;

if (count units _buildingGroup > 0) then {
    _allGuards pushBack _buildingGroup;
};

// --- 2. STATIC WEAPON EMPLACEMENTS: Place manned guns at bunker/nest positions ---
private _staticGroup = createGroup [A3E_VAR_Side_Opfor, true];
private _staticWeaponClasses = missionNamespace getVariable ["a3e_arr_ComCenStaticWeapons",
    ["CUP_O_DSHKM_RU", "CUP_O_KORD_RU"]];
// Find fortified nests and bunker positions
private _fortObjects = nearestObjects [_spawnPos,
    ["Land_fortified_nest_big", "Land_fortified_nest_small",
     "Land_BagBunker_Large_F", "Land_BagBunker_Small_F", "Land_BagBunker_Tower_F",
     "Land_fortified_nest_big_EP1", "Land_fortified_nest_small_EP1"],
    _compoundRadius + 10];

{
    private _fortPos = getPos _x;
    private _fortDir = getDir _x;

    if (count _staticWeaponClasses > 0) then {
        // Place a static weapon at the fortification
        private _gunClass = selectRandom _staticWeaponClasses;
        private _gun = createVehicle [_gunClass, _fortPos, [], 0, "CAN_COLLIDE"];
        _gun setDir _fortDir;
        _gun setPosATL _fortPos;

        // Create gunner
        private _gunner = _staticGroup createUnit [selectRandom _guardTypes, _fortPos, [], 0, "CAN_COLLIDE"];
        _gunner moveInGunner _gun;
        _gunner setSkill (0.3 + random 0.1);
        _gunner setBehaviour "SAFE";
        _gunner setCombatMode "YELLOW";
    };
} forEach _fortObjects;

if (count units _staticGroup > 0) then {
    _allGuards pushBack _staticGroup;
};

// --- 3. GATE GUARDS: Standing at the compound entrance ---
private _gateGroup = createGroup [A3E_VAR_Side_Opfor, true];
if (!isNil "A3E_PrisonGateObject") then {
    private _gatePos = getPos A3E_PrisonGateObject;
    private _gateDir = getDir A3E_PrisonGateObject;

    // Two guards flanking the gate
    for "_i" from 0 to 1 do {
        private _offset = if (_i == 0) then { -3 } else { 3 };
        private _guardPos = _gatePos getPos [_offset, _gateDir + 90];
        private _guard = _gateGroup createUnit [selectRandom _guardTypes, _guardPos, [], 0, "CAN_COLLIDE"];
        _guard setPosATL _guardPos;
        _guard setDir _gateDir;
        _guard setSkill (0.3 + random 0.1);
        _guard setBehaviour "SAFE";
        _guard setCombatMode "YELLOW";
        _guard setUnitPos "UP";
        doStop _guard;
    };
};
if (count units _gateGroup > 0) then {
    _allGuards pushBack _gateGroup;
};

// --- 4. PERIMETER PATROL: 2-man team walking the outer wall ---
private _perimeterGroup = createGroup [A3E_VAR_Side_Opfor, true];
for "_i" from 0 to 1 do {
    private _startPos = _spawnPos getPos [_compoundRadius * 0.85, _i * 180];
    private _guard = _perimeterGroup createUnit [selectRandom _guardTypes, _startPos, [], 0, "FORM"];
    _guard setSkill (0.3 + random 0.1);
};

// 4-point perimeter patrol
for "_angle" from 0 to 270 step 90 do {
    private _wpPos = _spawnPos getPos [_compoundRadius * 0.85, _angle];
    private _wp = _perimeterGroup addWaypoint [_wpPos, 5];
    _wp setWaypointType "MOVE";
    _wp setWaypointSpeed "LIMITED";
    _wp setWaypointBehaviour "SAFE";
};
private _wpCycle = _perimeterGroup addWaypoint [_spawnPos getPos [_compoundRadius * 0.85, 0], 5];
_wpCycle setWaypointType "CYCLE";
_allGuards pushBack _perimeterGroup;

// --- 5. INTERIOR PATROL: 2-man team walking inside the compound ---
private _interiorGroup = createGroup [A3E_VAR_Side_Opfor, true];
for "_i" from 0 to 1 do {
    private _startPos = _spawnPos getPos [_compoundRadius * 0.25, _i * 180];
    private _guard = _interiorGroup createUnit [selectRandom _guardTypes, _startPos, [], 0, "FORM"];
    _guard setSkill (0.3 + random 0.1);
};

for "_angle" from 0 to 240 step 120 do {
    private _wpPos = _spawnPos getPos [_compoundRadius * 0.35, _angle];
    private _wp = _interiorGroup addWaypoint [_wpPos, 3];
    _wp setWaypointType "MOVE";
    _wp setWaypointSpeed "LIMITED";
    _wp setWaypointBehaviour "SAFE";
};
private _wpCycle2 = _interiorGroup addWaypoint [_spawnPos, 3];
_wpCycle2 setWaypointType "CYCLE";
_allGuards pushBack _interiorGroup;

// --- 6. ZOMBIE SIEGE (30% chance): Waves of zombies attack the compound ---
if (random 1 < 0.3) then {
    [_spawnPos, _compoundRadius, _allGuards] spawn {
        params ["_prisonPos", "_radius", "_guards"];

        // Delay before first wave - give the player time to orient
        sleep 45 + (random 30);

        // Zombie uniforms matching Ravage config
        private _zombieUniforms = ["mgsr_robe_olive_dirty", "mgsr_robe_olive_muddy"];

        // Spawn 2-3 waves of zombies converging on the compound
        private _numWaves = 2 + floor(random 2);

        for "_wave" from 1 to _numWaves do {
            // Spawn 4-8 zombies per wave from random direction
            private _spawnDir = random 360;
            private _spawnDist = _radius + 60 + (random 40);
            private _spawnPoint = _prisonPos getPos [_spawnDist, _spawnDir];

            private _zombieGroup = createGroup [east, true];
            private _zombieCount = 4 + floor(random 5);

            for "_i" from 0 to (_zombieCount - 1) do {
                private _zPos = _spawnPoint getPos [random 10, random 360];
                private _zombie = _zombieGroup createUnit ["O_Survivor_F", _zPos, [], 0, "FORM"];
                removeAllWeapons _zombie;
                removeAllItems _zombie;
                removeAllAssignedItems _zombie;
                removeVest _zombie;
                removeBackpack _zombie;
                removeHeadgear _zombie;

                // Apply zombie appearance
                _zombie forceAddUniform (selectRandom _zombieUniforms);
                _zombie setFace "PersianHead_A3_01";

                // Zombie behavior: fast, aggressive, low accuracy
                _zombie setSkill ["aimingAccuracy", 0];
                _zombie setSkill ["spotDistance", 0.5];
                _zombie setSkill ["courage", 1];
                _zombie enableAI "ANIM";
                _zombie disableAI "SUPPRESSION";
                _zombie disableAI "COVER";
                _zombie disableAI "AUTOCOMBAT";
                _zombie setCombatMode "RED";
                _zombie setBehaviour "COMBAT";

                // Ravage zombie init
                _zombie setVariable ["SSD_disabledSounds", true];
            };

            // SAD waypoint toward prison center
            private _wp = _zombieGroup addWaypoint [_prisonPos, 10];
            _wp setWaypointType "SAD";
            _wp setWaypointSpeed "FULL";
            _wp setWaypointBehaviour "COMBAT";
            _wp setWaypointCombatMode "RED";

            // Alert guards about zombie attack
            {
                _x setCombatMode "RED";
                _x setBehaviour "COMBAT";
            } forEach _guards;

            // Wait between waves
            if (_wave < _numWaves) then {
                sleep 30 + (random 20);
            };
        };
    };
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
