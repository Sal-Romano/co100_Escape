// forceConscious.sqf
// Brute-force clear ALL unconscious/camera state on client.
// Used for FIRST spawn (clears screen). See wipeReset.sqf for wipe flow.

// Clear unconscious state
player setVariable ["AT_Revive_isUnconscious", false, true];
player setVariable ["ACE_Revive_isUnconscious", false, true];
ATHSC_Run = false;

// Destroy camera
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
"HSC" cutFadeOut 0;
if (!isNull (uiNamespace getVariable ["ATHSC_View", displayNull])) then {
    (uiNamespace getVariable "ATHSC_View") closeDisplay 0;
};
uiNamespace setVariable ["ATHSC_View", displayNull];

// Remove scream action + HSC handlers
if (!isNil "painscream") then {player removeAction painscream; painscream = nil};
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

// Force normal state
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

// Clear screen (first spawn - no black screen needed)
cutText ["", "PLAIN", 0];
titleText ["", "PLAIN", 0];
