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

// Flash the "ESCAPE FAILED" title
titleText ["ESCAPE FAILED", "PLAIN DOWN", 2];
sleep 3;

titleText ["Your group has been wiped...", "PLAIN", 1];
sleep 2;

titleText ["Regrouping...", "PLAIN", 1];
sleep 1;

titleText ["", "BLACK", 0.5];

// Player is now in spawn lobby state (server already reset us)
// Mark ourselves as in spawn lobby
player setVariable ["A3E_InSpawnLobby", true, true];
player setVariable ["A3E_MP_InLobby", true, true];

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
