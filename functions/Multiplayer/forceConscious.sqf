// forceConscious.sqf
// Brute-force clear ALL unconscious/camera state on client.
// Called via: "functions\Multiplayer\forceConscious.sqf" remoteExec ["execVM", target];

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

// Force player into normal standing state
player enableSimulation true;
player allowDamage false;
player setCaptive true;
player setDamage 0;
player switchMove "";
player playMoveNow "";
player setUnitPos "AUTO";
player setVelocity [0,0,0];

// Detach if attached to anything
detach player;

// Remove ALL scroll-menu actions (clears residual scream/drag/revive actions)
removeAllActions player;

// Clear any screen overlays
cutText ["", "PLAIN", 0];
titleText ["", "PLAIN", 0];
