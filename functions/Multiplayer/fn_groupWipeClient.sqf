// fn_groupWipeClient.sqf
// Client-side. Shows "ESCAPE FAILED" cinematic effect then re-enters spawn flow.
// Called via remoteExec from fn_handleGroupWipe on server.

// Exit hindsight camera if active
if (!isNil "ATHSC_Run") then {
    if (ATHSC_Run) then {
        [] call ATHSC_fnc_exit;
    };
};

// Dramatic black screen fade
cutText ["", "BLACK", 2];
sleep 2;

// Big centered "ESCAPE FAILED" using cutRsc/structured text
cutText [
    "<t size='3' color='#cc0000' align='center' shadow='2'>ESCAPE FAILED</t><br/><br/><t size='1.2' color='#999999' align='center'>Your group has been wiped</t>",
    "PLAIN", -1, true, true
];
sleep 4;

cutText [
    "<t size='1.5' color='#cccccc' align='center' shadow='1'>Regrouping...</t>",
    "PLAIN", -1, true, true
];
sleep 2;

cutText ["", "BLACK", 0.5];

// Player is now in spawn lobby state (server already reset us)
player setVariable ["A3E_InSpawnLobby", true, true];
player setVariable ["A3E_MP_InLobby", true, true];

// FORCE clear unconscious state for clean respawn
player setVariable ["AT_Revive_isUnconscious", false, true];
player setVariable ["AT_Revive_isDragged", objNull, true];
player setVariable ["AT_Revive_isDragging", objNull, true];
player setVariable ["AT_Revive_isCarrying", objNull, true];
player enableSimulation true;
player setDamage 0;
player allowDamage false;
player switchMove "";
if (!isNil "ATHSC_Run") then {
    ATHSC_Run = false;
    if (!isNil "ATHSC_fnc_exit") then {[] call ATHSC_fnc_exit};
};

// Re-enter the spawn flow
// Check if we're leader or not
private _grp = group player;
private _isLeader = (leader _grp == player);

if (_isLeader) then {
    // Leader: show full spawn dialog to pick new city
    private _spawnResult = call A3E_fnc_spawnMenu;
    _spawnResult params ["_spawnPos", "_spawnType"];

    // Leader selected city - broadcast to group and spawn everyone
    [_grp, _spawnPos] remoteExec ["A3E_fnc_spawnGroupAtCity", 2];
} else {
    // Non-leader: wait for leader to pick
    titleText [format ["Waiting for %1 to select a city...", name (leader _grp)], "BLACK", 0.5];

    waitUntil {
        sleep 0.5;
        (_grp getVariable ["A3E_GroupSpawnReady", false])
    };

    // Leader has picked, server will handle spawning us
    titleText ["", "BLACK IN", 1];
};

// Wait for server to spawn us
waitUntil {
    sleep 0.1;
    !(player getVariable ["A3E_InSpawnLobby", true])
};

// Re-initialize revive system
call ATR_FNC_ReviveInit;

// Re-initialize group badges
[] call A3E_fnc_groupBadges;

// Clear screen
cutText ["", "PLAIN", 1];
titleText ["", "PLAIN", 0];
