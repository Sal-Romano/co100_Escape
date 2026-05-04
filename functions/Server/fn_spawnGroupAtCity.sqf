// fn_spawnGroupAtCity.sqf
// Server-side. Called when group leader selects a city for the group.
// Spawns all lobby group members at a dynamic prison at the selected city.

if (!isServer) exitWith {};

params ["_grp", "_spawnPos"];

private _grpName = groupId _grp;
diag_log format ["SpawnGroupAtCity: %1 spawning at %2", _grpName, _spawnPos];

// Get all group members in lobby
private _members = (units _grp) select {
    isPlayer _x &&
    (_x getVariable ["A3E_InSpawnLobby", false] || _x getVariable ["A3E_MP_InLobby", false])
};

if (count _members == 0) exitWith {
    diag_log format ["SpawnGroupAtCity: %1 - no lobby members to spawn.", _grpName];
};

// Create a dynamic prison at the location (reuse existing system)
// Use findFlatAreaNear to get a good position
private _prisonPos = [_spawnPos, 300, 5, 0.1, 500] call A3E_fnc_findFlatAreaNear;
if (count _prisonPos == 0) then {
    _prisonPos = [_spawnPos, 600, 3, 0.15, 1000] call A3E_fnc_findFlatAreaNear;
};
if (count _prisonPos == 0) then {
    _prisonPos = _spawnPos;
};
_prisonPos set [2, 0];

// Clean up terrain
[_prisonPos, 25] call a3e_fnc_cleanupTerrain;

// Create prison template
private _fenceRotateDir = random 360;
private _backpackType = missionNamespace getVariable ["a3e_arr_PrisonBackpackType", "B_AssaultPack_khk"];
private _backpack = _backpackType createVehicle _prisonPos;

// Fill backpack with one random weapon per group member
private _weapons = missionNamespace getVariable ["a3e_arr_PrisonBackpackWeapons", []];
{
    if (count _weapons > 0) then {
        private _picked = selectRandom _weapons;
        _picked params ["_weapon", "_mag"];
        _backpack addWeaponCargoGlobal [_weapon, 1];
        _backpack addMagazineCargoGlobal [_mag, 2];
    };
} forEach _members;

// Build prison
private _template = selectRandom (missionNamespace getVariable ["A3E_PrisonTemplates",
    ["a3e_fnc_BuildPrison", "a3e_fnc_BuildPrison1", "a3e_fnc_BuildPrison2",
     "a3e_fnc_BuildPrison3", "a3e_fnc_BuildPrison4", "a3e_fnc_BuildPrison5"]]);
[_prisonPos, _fenceRotateDir, _backpack] remoteExec [_template, 0, true];

// Spawn guards
private _guardTypes = missionNamespace getVariable ["a3e_arr_Escape_StartPositionGuardTypes", []];
if (count _guardTypes == 0) then {
    _guardTypes = ["CUP_O_RU_Soldier_GL", "CUP_O_RU_Soldier_MG", "CUP_O_RU_Soldier_TL"];
};

private _guardGroup = createGroup [A3E_VAR_Side_Opfor, true];
if (isNull _guardGroup) then {
    diag_log "SpawnGroupAtCity: ERROR - createGroup failed (group limit hit?). Cleaning up old groups...";
    // Emergency cleanup: delete all empty or far-away enemy groups
    {
        if (side _x != west && {count units _x == 0}) then {deleteGroup _x};
    } forEach allGroups;
    _guardGroup = createGroup [A3E_VAR_Side_Opfor, true];
    diag_log format ["SpawnGroupAtCity: Retry createGroup result: %1", _guardGroup];
};
for "_i" from 0 to 7 do {
    private _guardPos = _prisonPos getPos [8 + random 8, _i * 45];
    private _guard = _guardGroup createUnit [selectRandom _guardTypes, _guardPos, [], 0, "FORM"];
    _guard setSkill 0.3;
    _guard setBehaviour "SAFE";
    _guard setCombatMode "YELLOW";
};
diag_log format ["SpawnGroupAtCity: Spawned %1 guards", count units _guardGroup];

// Guard patrol
private _wp = _guardGroup addWaypoint [_prisonPos getPos [12, 0], 8];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "LIMITED";
_wp setWaypointBehaviour "SAFE";
private _wp2 = _guardGroup addWaypoint [_prisonPos getPos [12, 120], 8];
_wp2 setWaypointType "MOVE";
private _wp3 = _guardGroup addWaypoint [_prisonPos getPos [12, 240], 8];
_wp3 setWaypointType "MOVE";
private _wp4 = _guardGroup addWaypoint [_prisonPos getPos [12, 0], 8];
_wp4 setWaypointType "CYCLE";

// Wait for compound objects and guards to fully spawn
sleep 3;

// Process prison vehicles AFTER compound has fully spawned
[_prisonPos, 80] call A3E_fnc_prisonVehicles;

// Place all members inside the prison with FULL state reset
// Players are still black screened from forceConscious
{
    _x setVariable ["AT_Revive_isUnconscious", false, true];
    _x setVariable ["AT_Revive_isDragged", objNull, true];
    _x setVariable ["AT_Revive_isDragging", objNull, true];
    _x setVariable ["AT_Revive_isCarrying", objNull, true];
    _x setVariable ["ACE_Revive_isUnconscious", false, true];
    _x setVariable ["A3E_MP_PrisonPos", _prisonPos, true];

    _x setPos _prisonPos;
    _x allowDamage false;
    _x enableSimulation true;
    _x setCaptive true;
    _x setDamage 0;

    // Player is already black screened from wipe handler. Just clear state.
    [_x, ""] remoteExec ["switchMove", 0, false];
    [_x, ""] remoteExec ["playMoveNow", _x];

    _x setVariable ["A3E_InSpawnLobby", false, true];
    _x setVariable ["A3E_MP_InLobby", false, true];
} forEach _members;

// Sequence: wait for cleanup -> ATR init -> reveal -> spawn protection
[_members] spawn {
    params ["_units"];

    // Wait for forceConscious to finish
    sleep 2;

    // Re-init ATR revive + custom actions on each client
    {
        [true] remoteExec ["ATR_FNC_InitPlayer", _x];
        // Re-add hotwire action (removed by wipeReset's removeAllActions)
        "functions\Multiplayer\addCustomActions.sqf" remoteExec ["execVM", _x];
    } forEach _units;

    // Wait 1 more second, then REVEAL (clear black screen)
    sleep 1;
    {
        [["", "BLACK IN", 2]] remoteExec ["cutText", _x];
    } forEach _units;

    // Spawn protection: damage enabled after 10 total seconds
    sleep 7;
    {
        if (alive _x) then {
            _x allowDamage true;
            [_x, true] remoteExec ["allowDamage", _x];
        };
    } forEach _units;
};

// Mark group spawn as ready (non-leaders are waiting on this)
_grp setVariable ["A3E_GroupSpawnReady", true, true];
_grp setVariable ["A3E_GroupInLobby", false, true];

// Set A3E_EscapeHasStarted if not already
if (isNil "A3E_EscapeHasStarted") then {
    A3E_EscapeHasStarted = true;
    publicVariable "A3E_EscapeHasStarted";
};

// Per-player escape trigger (same as createDynamicPrison)
[_members, _prisonPos, _guardGroup] spawn {
    params ["_members", "_prisonPos", "_guards"];

    waitUntil {
        sleep 0.5;
        // Bail if group got wiped (teleported away)
        if (_members findIf {_x getVariable ["A3E_InSpawnLobby", false]} > -1) exitWith {false};

        private _anyArmed = false;
        private _anyEscaped = false;
        {
            if (!alive _x) then {continue};
            if (_x getVariable ["A3E_InSpawnLobby", false]) then {continue};
            if (count weapons _x > 0) then {_anyArmed = true};
            if (_x distance _prisonPos > 15) then {_anyEscaped = true};
        } forEach _members;
        _anyArmed || _anyEscaped
    };

    // Alert guards
    _guards setCombatMode "RED";
    _guards setBehaviour "COMBAT";
    {
        {
            _x reveal [_forEachIndex, 4];
        } forEach units _guards;
        [_x, false] remoteExec ["setCaptive", _x, false];
    } forEach _members;
};

diag_log format ["SpawnGroupAtCity: %1 - %2 members spawned at prison.", _grpName, count _members];
