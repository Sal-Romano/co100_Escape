// wipeReset.sqf
// Client-side cleanup for group wipe. Same as forceConscious but KEEPS black screen.
// Called via: "functions\Multiplayer\wipeReset.sqf" remoteExec ["execVM", target];

// BLACK SCREEN FIRST - stays black until prison is ready
cutText ["", "BLACK", 0];

// Kill the hindsight spectator camera
ATHSC_Run = false;
if (!isNil "ATHSC_Cam") then {
    if (!isNull ATHSC_Cam) then {
        ATHSC_Cam cameraEffect ["terminate", "back"];
        camDestroy ATHSC_Cam;
        ATHSC_Cam = objNull;
    };
};
player switchCamera "Internal";

// Close HSC display
if (!isNull (uiNamespace getVariable ["ATHSC_View", displayNull])) then {
    (uiNamespace getVariable "ATHSC_View") closeDisplay 0;
};
uiNamespace setVariable ["ATHSC_View", displayNull];
"HSC" cutFadeOut 0;

// Remove pain scream action + HSC event handlers
if (!isNil "painscream") then {player removeAction painscream};
if (!isNil "ATHSC_KeyDownHandler" && {ATHSC_KeyDownHandler >= 0}) then {
    (findDisplay 46) displayRemoveEventHandler ["keyDown", ATHSC_KeyDownHandler];
    ATHSC_KeyDownHandler = -1;
};
if (!isNil "ATHSC_MouseHandler" && {ATHSC_MouseHandler >= 0}) then {
    (findDisplay 46) displayRemoveEventHandler ["mouseMoving", ATHSC_MouseHandler];
    ATHSC_MouseHandler = -1;
};
if (!isNil "ATHSC_MouseZHandler" && {ATHSC_MouseZHandler >= 0}) then {
    (findDisplay 46) displayRemoveEventHandler ["mouseZChanged", ATHSC_MouseZHandler];
    ATHSC_MouseZHandler = -1;
};

// Clear ATR state
player setVariable ["AT_Revive_isUnconscious", false, true];
player setVariable ["AT_Revive_isDragged", objNull, true];
player setVariable ["AT_Revive_isDragging", objNull, true];
player setVariable ["AT_Revive_isCarrying", objNull, true];

// Force normal state but keep black screen and damage disabled
player enableSimulation true;
player allowDamage false;
player setCaptive true;
player setDamage 0;
player switchMove "";
player playMoveNow "";
player setUnitPos "AUTO";
player setVelocity [0,0,0];
detach player;
removeAllActions player;

// Clear title text but keep cutText BLACK
titleText ["", "PLAIN", 0];
