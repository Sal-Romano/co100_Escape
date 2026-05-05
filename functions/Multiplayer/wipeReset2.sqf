// wipeReset2.sqf - Client wipe cleanup
// Uses GUI black overlay (cannot be interrupted by camera/cutText)

// === STEP 1: UNBREAKABLE BLACK SCREEN VIA GUI ===
("A3E_BlackScreen" call BIS_fnc_rscLayer) cutRsc ["A3E_BlackScreen", "PLAIN", 0, true];

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

// === STEP 5: Show ESCAPE FAILED on the black overlay ===
sleep 0.5;
private _display = uiNamespace getVariable ["A3E_BlackScreenDisplay", displayNull];
if (!isNull _display) then {
    (_display displayCtrl 620102) ctrlSetStructuredText parseText
        "<t size='3' color='#cc0000' align='center' shadow='2'>ESCAPE FAILED</t><br/><br/><t size='1.2' color='#999999' align='center'>Your group has been wiped</t>";
};

// === STEP 6: Hammer to catch fn_createCam delayed spawn ===
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
