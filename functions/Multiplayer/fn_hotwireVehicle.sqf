// fn_hotwireVehicle.sqf
// Hotwire a vehicle from the DRIVER SEAT.
// Player must be in the driver seat of a vehicle that needs hotwiring.

private _veh = vehicle player;

if (_veh == player) exitWith {hint "Get in the driver seat first!"};
if (driver _veh != player) exitWith {hint "You must be in the driver seat!"};
if !(_veh getVariable ["A3E_NeedsHotwire", false]) exitWith {};
if (player getVariable ["A3E_Hotwiring", false]) exitWith {};

player setVariable ["A3E_Hotwiring", true];

// 12 second hotwire
private _duration = 12;
private _startTime = diag_tickTime;
private _success = true;

while {diag_tickTime - _startTime < _duration} do {
    private _elapsed = diag_tickTime - _startTime;
    private _pct = round ((_elapsed / _duration) * 100);
    hintSilent format ["Hotwiring... %1%%\nStay in the vehicle!", _pct];

    // Check player is still in driver seat
    if (vehicle player != _veh || driver _veh != player) exitWith {
        _success = false;
        hint "Hotwire cancelled - left vehicle!";
    };

    if (!alive player || player getVariable ["AT_Revive_isUnconscious", false]) exitWith {
        _success = false;
    };

    sleep 0.5;
};

if (!_success) exitWith {
    player setVariable ["A3E_Hotwiring", false];
};

// 25% chance of failure
if (random 100 < 25) then {
    hint "Failed! Wires sparked... try again.";

    // Alert nearby guards
    private _nearGuards = _veh nearEntities [["Man"], 100];
    {
        if (side group _x != west) then {
            _x reveal [player, 2.5];
            group _x setBehaviour "AWARE";
        };
    } forEach _nearGuards;

    player setVariable ["A3E_Hotwiring", false];
} else {
    hintSilent "Vehicle hotwired! Engine starting...";

    // Remove engine block and start
    _veh setVariable ["A3E_NeedsHotwire", false, true];
    private _ehId = _veh getVariable ["A3E_EngineBlockEH", -1];
    if (_ehId >= 0) then {
        _veh removeEventHandler ["Engine", _ehId];
    };
    _veh engineOn true;

    // Alert guards - engine noise
    private _nearGuards = _veh nearEntities [["Man"], 150];
    {
        if (side group _x != west) then {
            _x reveal [player, 3.5];
            group _x setCombatMode "RED";
            group _x setBehaviour "COMBAT";
        };
    } forEach _nearGuards;

    sleep 2;
    hint "";
    player setVariable ["A3E_Hotwiring", false];
};
