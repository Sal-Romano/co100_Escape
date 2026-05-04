// wipeReset.sqf
// Client-side wipe cleanup. Kills camera FIRST, then blacks screen.

// === STEP 1: PREVENT fn_Unconscious AND fn_createCam FROM RUNNING ===
// Set isUnconscious to false FIRST so fn_Unconscious loop exits
// and fn_createCam doesn't get spawned again
player setVariable ["AT_Revive_isUnconscious", false, true];
player setVariable ["ACE_Revive_isUnconscious", false, true];

// === STEP 2: KILL ALL CAMERA SCRIPTS ===
// Terminate any running camera loop scripts
ATHSC_Run = false;

// Destroy the camera object
if (!isNil "ATHSC_Cam") then {
    if (!isNull ATHSC_Cam) then {
        ATHSC_Cam cameraEffect ["terminate", "back"];
        camDestroy ATHSC_Cam;
    };
    ATHSC_Cam = objNull;
};

// Return view to player unit
player switchCamera "Internal";

// Close HSC display overlay
("HSC" call BIS_fnc_rscLayer) cutText ["", "PLAIN"];
"HSC" cutFadeOut 0;
if (!isNull (uiNamespace getVariable ["ATHSC_View", displayNull])) then {
    (uiNamespace getVariable "ATHSC_View") closeDisplay 0;
};
uiNamespace setVariable ["ATHSC_View", displayNull];

// Remove scream action
if (!isNil "painscream") then {player removeAction painscream; painscream = nil};

// Remove ALL HSC event handlers from display 46
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

// === STEP 3: BLACK SCREEN (camera is dead, will show) ===
cutText ["", "BLACK OUT", 0];

// === STEP 4: CLEAR ALL REVIVE STATE ===
player setVariable ["AT_Revive_isDragged", objNull, true];
player setVariable ["AT_Revive_isDragging", objNull, true];
player setVariable ["AT_Revive_isCarrying", objNull, true];

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
showCinemaBorder false;
titleText ["", "PLAIN", 0];

// === STEP 5: KEEP HAMMERING for 3 seconds to catch fn_createCam race ===
// fn_createCam might still be in its setup phase, setting ATHSC_Run = true
[] spawn {
    for "_i" from 0 to 6 do {
        ATHSC_Run = false;
        player setVariable ["AT_Revive_isUnconscious", false, true];
        if (!isNil "ATHSC_Cam" && {!isNull ATHSC_Cam}) then {
            ATHSC_Cam cameraEffect ["terminate", "back"];
            camDestroy ATHSC_Cam;
            ATHSC_Cam = objNull;
            player switchCamera "Internal";
        };
        sleep 0.5;
    };
};
