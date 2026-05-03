// forceConscious.sqf
// Brute-force clear ALL unconscious/camera state on client.
// Called via: "functions\Multiplayer\forceConscious.sqf" remoteExec ["execVM", target];

// Black screen immediately
cutText ["", "BLACK", 0.5];

// Kill the hindsight spectator camera
ATHSC_Run = false;
if (!isNull (uiNamespace getVariable ["ATHSC_View", displayNull])) then {
    (uiNamespace getVariable "ATHSC_View") closeDisplay 0;
};
uiNamespace setVariable ["ATHSC_View", displayNull];

// Clear ALL ATR revive variables
player setVariable ["AT_Revive_isUnconscious", false, true];
player setVariable ["AT_Revive_isDragged", objNull, true];
player setVariable ["AT_Revive_isDragging", objNull, true];
player setVariable ["AT_Revive_isCarrying", objNull, true];
player setVariable ["ACE_Revive_isUnconscious", false, true];

// Force player into normal state
player enableSimulation true;
player allowDamage false;
player setCaptive true;
player setDamage 0;
player switchMove "";
player playMoveNow "";

// Hammer unconscious=false for 5 seconds in case anything re-sets it
// Do NOT re-init ATR here - that happens later when safely at prison
[] spawn {
    for "_i" from 0 to 10 do {
        player setVariable ["AT_Revive_isUnconscious", false, true];
        player enableSimulation true;
        player switchMove "";
        ATHSC_Run = false;
        sleep 0.5;
    };
};
