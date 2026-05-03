// fn_handleGroupWipe.sqf
// Server-side. Called when all members of a group are unconscious.
// Shows "ESCAPE FAILED" effect then sends them back to spawn lobby.

if (!isServer) exitWith {};

params ["_grp"];

private _members = (units _grp) select {isPlayer _x};
private _grpName = groupId _grp;

diag_log format ["GroupWipe: %1 - all members down. Grace period starting.", _grpName];

// 3-second grace period
sleep 3;

// Re-verify still all down (in case of edge cases)
private _activeMembers = _members select {
    !(_x getVariable ["A3E_InSpawnLobby", false]) &&
    !(_x getVariable ["A3E_MP_InLobby", false])
};

private _stillAllDown = (count _activeMembers > 0) && {
    (_activeMembers findIf {
        !(_x getVariable ["AT_Revive_isUnconscious", false]) &&
        !(_x getVariable ["ACE_Revive_isUnconscious", false])
    }) == -1
};

if (!_stillAllDown) exitWith {
    _grp setVariable ["A3E_GroupWipeInProgress", false, true];
    diag_log format ["GroupWipe: %1 - wipe cancelled (someone recovered).", _grpName];
};

diag_log format ["GroupWipe: %1 - confirmed. Triggering respawn flow.", _grpName];

// Trigger "ESCAPE FAILED" effect on each member's client
{
    [] remoteExec ["A3E_fnc_groupWipeClient", _x];
} forEach _members;

// Wait for client effect to play out
sleep 8;

// Reset all group members to spawn lobby state
{
    _x setVariable ["A3E_InSpawnLobby", true, true];
    _x setVariable ["AT_Revive_isUnconscious", false, true];
    _x setVariable ["ACE_Revive_isUnconscious", false, true];
    _x allowDamage false;
    _x enableSimulation true;
    _x setCaptive true;
    _x setDamage 0;
    // Move to safe holding position
    _x setPos [0, 0, 100];

    // Strip gear
    removeAllAssignedItems _x;
    removeAllWeapons _x;
    removeAllItems _x;
    removeBackpack _x;
    removeVest _x;
    removeHeadgear _x;
    removeGoggles _x;
} forEach _members;

// Mark group as in lobby (waiting for leader to pick new city)
_grp setVariable ["A3E_GroupInLobby", true, true];
_grp setVariable ["A3E_GroupWipeInProgress", false, true];
_grp setVariable ["A3E_GroupSpawnReady", false, true];
