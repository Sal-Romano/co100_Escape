// wipeReset.sqf
// Client-side wipe cleanup. Kills camera FIRST, then blacks screen.

// === STEP 1: KILL CAMERA IMMEDIATELY (must be before cutText) ===
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

// Remove HSC actions + event handlers
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

// === STEP 2: NOW BLACK SCREEN (camera is dead, cutText will work) ===
cutText ["", "BLACK OUT", 0];

// === STEP 3: CLEAR ALL STATE ===
player setVariable ["AT_Revive_isUnconscious", false, true];
player setVariable ["AT_Revive_isDragged", objNull, true];
player setVariable ["AT_Revive_isDragging", objNull, true];
player setVariable ["AT_Revive_isCarrying", objNull, true];
player setVariable ["ACE_Revive_isUnconscious", false, true];

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
titleText ["", "PLAIN", 0];
