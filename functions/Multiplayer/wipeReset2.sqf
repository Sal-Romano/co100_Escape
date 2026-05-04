// wipeReset2.sqf - Client wipe cleanup + loading state
// Player is FROZEN (can't move) + BLACK SCREEN until prison is ready

// === STEP 1: BLACK SCREEN + FREEZE PLAYER IMMEDIATELY ===
cutText ["", "BLACK OUT", 0];
disableUserInput true;

// === STEP 2: Stop unconscious system ===
player setVariable ["AT_Revive_isUnconscious", false, true];
player setVariable ["ACE_Revive_isUnconscious", false, true];
ATHSC_Run = false;

// === STEP 3: Kill camera ===
if (!isNil "ATHSC_Cam") then {
    if (!isNull ATHSC_Cam) then {
        ATHSC_Cam cameraEffect ["terminate", "back"];
        camDestroy ATHSC_Cam;
    };
    ATHSC_Cam = objNull;
};
player switchCamera "Internal";

// Close HSC overlay
("HSC" call BIS_fnc_rscLayer) cutText ["", "PLAIN"];
("HSC" call BIS_fnc_rscLayer) cutFadeOut 0;
if (!isNull (uiNamespace getVariable ["ATHSC_View", displayNull])) then {
    (uiNamespace getVariable "ATHSC_View") closeDisplay 0;
};
uiNamespace setVariable ["ATHSC_View", displayNull];

// Remove scream + handlers
if (!isNil "painscream") then {player removeAction painscream; painscream = nil};
if (!isNil "ATHSC_KeyDownHandler" && {ATHSC_KeyDownHandler >= 0}) then {(findDisplay 46) displayRemoveEventHandler ["keyDown", ATHSC_KeyDownHandler]; ATHSC_KeyDownHandler = -1};
if (!isNil "ATHSC_MouseHandler" && {ATHSC_MouseHandler >= 0}) then {(findDisplay 46) displayRemoveEventHandler ["mouseMoving", ATHSC_MouseHandler]; ATHSC_MouseHandler = -1};
if (!isNil "ATHSC_MouseZHandler" && {ATHSC_MouseZHandler >= 0}) then {(findDisplay 46) displayRemoveEventHandler ["mouseZChanged", ATHSC_MouseZHandler]; ATHSC_MouseZHandler = -1};

// === STEP 4: Clear all state ===
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
titleText ["Loading escape...", "PLAIN", 0.5];

// === STEP 5: Background hammer - catch fn_createCam delayed spawn ===
// NO MORE re-applying cutText (that caused pulsing)
[] spawn {
    for "_i" from 0 to 10 do {
        ATHSC_Run = false;
        player setVariable ["AT_Revive_isUnconscious", false, true];
        if (!isNil "ATHSC_Cam" && {!isNull ATHSC_Cam}) then {
            ATHSC_Cam cameraEffect ["terminate", "back"];
            camDestroy ATHSC_Cam;
            ATHSC_Cam = objNull;
            player switchCamera "Internal";
        };
        ("HSC" call BIS_fnc_rscLayer) cutText ["", "PLAIN"];
        if (!isNull (uiNamespace getVariable ["ATHSC_View", displayNull])) then {
            (uiNamespace getVariable "ATHSC_View") closeDisplay 0;
            uiNamespace setVariable ["ATHSC_View", displayNull];
        };
        sleep 0.5;
    };
};
