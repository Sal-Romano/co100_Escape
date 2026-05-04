// forceConscious.sqf
// Brute-force clear ALL unconscious/camera state on client.
// Called via: "functions\Multiplayer\forceConscious.sqf" remoteExec ["execVM", target];

// === KILL THE HINDSIGHT CAMERA (full cleanup from fn_exit.sqf) ===
ATHSC_Run = false;

// Destroy the camera object and return view to player
if (!isNil "ATHSC_Cam") then {
    if (!isNull ATHSC_Cam) then {
        ATHSC_Cam cameraEffect ["terminate", "back"];
        camDestroy ATHSC_Cam;
        ATHSC_Cam = objNull;
    };
};

// Return camera control to player unit
player switchCamera "Internal";

// Close the HSC display overlay
if (!isNull (uiNamespace getVariable ["ATHSC_View", displayNull])) then {
    (uiNamespace getVariable "ATHSC_View") closeDisplay 0;
};
uiNamespace setVariable ["ATHSC_View", displayNull];
"HSC" cutFadeOut 0;

// Remove pain scream action
if (!isNil "painscream") then {
    player removeAction painscream;
};

// Remove HSC keyboard/mouse event handlers
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

// Close map if open
if (visibleMap) then {openMap [false, false]};

// === CLEAR ALL ATR REVIVE STATE ===
player setVariable ["AT_Revive_isUnconscious", false, true];
player setVariable ["AT_Revive_isDragged", objNull, true];
player setVariable ["AT_Revive_isDragging", objNull, true];
player setVariable ["AT_Revive_isCarrying", objNull, true];
player setVariable ["ACE_Revive_isUnconscious", false, true];

// === FORCE PLAYER INTO NORMAL STATE ===
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

// Clear screen overlays - caller can black screen separately if needed
cutText ["", "PLAIN", 0];
titleText ["", "PLAIN", 0];
