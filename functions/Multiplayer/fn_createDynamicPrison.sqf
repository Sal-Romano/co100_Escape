// fn_createDynamicPrison.sqf
// Spawns a dynamic prison using the real Escape prison templates
// Called on server via remoteExec
// params: [_pos, _player]

params ["_pos", "_player"];

if (!isServer) exitWith {};

// Use the upstream's flat area finder: no buildings within 50m, no roads within 30m
private _spawnPos = [_pos, 300, 5, 0.1, 500] call A3E_fnc_findFlatAreaNear;

if (count _spawnPos == 0) then {
    _spawnPos = [_pos, 600, 3, 0.15, 1000] call A3E_fnc_findFlatAreaNear;
};

if (count _spawnPos == 0) then {
    _spawnPos = _pos;
};

_spawnPos set [2, 0];

// Clean up terrain at prison location (remove bushes, rocks, etc.)
[_spawnPos, 25] call a3e_fnc_cleanupTerrain;

// Create the weapon backpack for the player
private _backpackType = missionNamespace getVariable ["a3e_arr_PrisonBackpackType", "B_AssaultPack_khk"];
private _backpack = _backpackType createVehicle _spawnPos;

// Give 1 random pistol + 2 mags (personal ration, not the whole arsenal)
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

// Build the prison using a random template (same as original Escape)
private _fenceRotateDir = random 360;
private _template = selectRandom (missionNamespace getVariable ["A3E_PrisonTemplates",
    ["a3e_fnc_BuildPrison", "a3e_fnc_BuildPrison1", "a3e_fnc_BuildPrison2",
     "a3e_fnc_BuildPrison3", "a3e_fnc_BuildPrison4", "a3e_fnc_BuildPrison5"]]);

[_spawnPos, _fenceRotateDir, _backpack] remoteExec [_template, 0, true];

// Spawn guards from the enemy faction
private _guardTypes = missionNamespace getVariable ["a3e_arr_Escape_StartPositionGuardTypes", []];
if (count _guardTypes == 0) then {
    _guardTypes = ["CUP_O_RU_Soldier_GL", "CUP_O_RU_Soldier_MG", "CUP_O_RU_Soldier_TL"];
};

private _guardGroup = createGroup [A3E_VAR_Side_Opfor, true];
for "_i" from 0 to 5 do {
    private _guardPos = _spawnPos getPos [8 + random 8, _i * 60];
    private _guard = _guardGroup createUnit [selectRandom _guardTypes, _guardPos, [], 0, "FORM"];
    _guard setDir (random 360);
    _guard setSkill 0.3;
    _guard setBehaviour "SAFE";
    _guard setCombatMode "YELLOW";
};

// Guard patrol around the prison
private _wp = _guardGroup addWaypoint [_spawnPos getPos [12, 0], 8];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "LIMITED";
_wp setWaypointBehaviour "SAFE";
private _wp2 = _guardGroup addWaypoint [_spawnPos getPos [12, 120], 8];
_wp2 setWaypointType "MOVE";
private _wp3 = _guardGroup addWaypoint [_spawnPos getPos [12, 240], 8];
_wp3 setWaypointType "MOVE";
private _wp4 = _guardGroup addWaypoint [_spawnPos getPos [12, 0], 8];
_wp4 setWaypointType "CYCLE";

// Place player inside the prison
_player setPos _spawnPos;
_player setCaptive true;
_player setVariable ["A3E_MP_InLobby", false, true];
_player setVariable ["A3E_MP_PrisonPos", _spawnPos, true];

// Set A3E_EscapeHasStarted if not already (multiplayer - escape is always "started")
if (isNil "A3E_EscapeHasStarted") then {
    A3E_EscapeHasStarted = true;
    publicVariable "A3E_EscapeHasStarted";
};

// Watch this player - when they pick up a weapon or move away, release them from captive
[_player, _spawnPos, _guardGroup] spawn {
    params ["_player", "_prisonPos", "_guards"];

    // Wait until player picks up weapon or moves >15m from prison
    waitUntil {
        sleep 0.5;
        !alive _player ||
        {count weapons _player > 0} ||
        {_player distance _prisonPos > 15}
    };

    if (alive _player) then {
        // Release from captive - guards will now attack
        [_player, false] remoteExec ["setCaptive", _player, false];

        // Alert guards
        _guards setCombatMode "RED";
        _guards setBehaviour "COMBAT";
        {
            _x reveal [_player, 4];
        } forEach units _guards;

        systemChat format ["%1 has escaped!", name _player];
    };
};

_spawnPos
