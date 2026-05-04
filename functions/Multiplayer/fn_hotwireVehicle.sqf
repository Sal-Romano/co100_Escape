// fn_hotwireVehicle.sqf
// Client-side. Hotwire action handler for locked prison vehicles.
// Called from player addAction.

params ["_target", "_caller", "_actionId", "_args"];

private _veh = cursorTarget;

if (isNull _veh) exitWith {};
if !(_veh getVariable ["A3E_NeedsHotwire", false]) exitWith {};

// Can't hotwire while in combat animation
if (player getVariable ["A3E_Hotwiring", false]) exitWith {
    hint "Already hotwiring!";
};

player setVariable ["A3E_Hotwiring", true];
hint "Hotwiring vehicle...";

// Play repair/medic animation (kneeling, working with hands)
private _origPos = getPos player;
player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";

// Progress loop - 15 seconds
private _success = true;
private _startTime = diag_tickTime;
private _duration = 15;

while {diag_tickTime - _startTime < _duration} do {
    sleep 0.5;

    // Check if player moved too far from vehicle
    if (player distance _veh > 6) exitWith {
        _success = false;
        hint "Too far from vehicle!";
    };

    // Check if player died/went unconscious
    if (!alive player || player getVariable ["AT_Revive_isUnconscious", false]) exitWith {
        _success = false;
    };

    // Show progress
    private _elapsed = diag_tickTime - _startTime;
    private _pct = round ((_elapsed / _duration) * 100);
    hintSilent format ["Hotwiring... %1%%", _pct];
};

// Return to normal stance
player playMoveNow "";

if (!_success) exitWith {
    player setVariable ["A3E_Hotwiring", false];
};

// 25% chance of failure
if (random 100 < 25) then {
    hint "Failed! Wires sparked... try again.";
    // Make noise - alert nearby guards
    private _nearGuards = _veh nearEntities [["Man"], 100];
    {
        if (side group _x != west) then {
            _x reveal [player, 2.5];
            group _x setBehaviour "AWARE";
        };
    } forEach _nearGuards;
    player setVariable ["A3E_Hotwiring", false];
} else {
    // Success!
    hint "Vehicle hotwired!";

    // Unlock and start
    [_veh, 0] remoteExec ["lock", 2]; // unlock on server
    [_veh, ["A3E_NeedsHotwire", false, true]] remoteExec ["setVariable", 2];

    // Alert guards with engine noise
    private _nearGuards = _veh nearEntities [["Man"], 150];
    {
        if (side group _x != west) then {
            _x reveal [player, 3.5];
            group _x setCombatMode "RED";
            group _x setBehaviour "COMBAT";
        };
    } forEach _nearGuards;

    player setVariable ["A3E_Hotwiring", false];
};
