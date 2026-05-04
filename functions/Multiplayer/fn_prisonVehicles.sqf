// fn_prisonVehicles.sqf
// Server-side. Processes vehicles near a prison after it's built.
// Disables engines, sets low fuel, randomly destroys some for atmosphere.

if (!isServer) exitWith {};

params ["_prisonPos", ["_radius", 80]];

private _vehicles = nearestObjects [_prisonPos, ["Car", "Tank", "Motorcycle", "Truck"], _radius];

{
    private _veh = _x;

    // 30% chance: destroyed wreck (atmosphere)
    if (random 100 < 30) then {
        _veh setDamage 1;
        _veh setVariable ["A3E_Wreck", true, true];
    } else {
        // Intact but engine disabled + low fuel
        _veh setFuel (0.02 + random 0.08);
        _veh setDamage (0.2 + random 0.3);
        _veh setVariable ["A3E_NeedsHotwire", true, true];
        _veh setVariable ["A3E_Persistent", true, true];

        // Block engine from starting until hotwired
        private _ehId = _veh addEventHandler ["Engine", {
            params ["_vehicle", "_engineOn"];
            if (_engineOn && {_vehicle getVariable ["A3E_NeedsHotwire", false]}) then {
                _vehicle engineOn false;
            };
        }];
        _veh setVariable ["A3E_EngineBlockEH", _ehId];

        // Remove any crew
        {deleteVehicle _x} forEach crew _veh;
    };
} forEach _vehicles;

diag_log format ["PrisonVehicles: %1 vehicles at %2 (%3 wrecks, %4 hotwirable)",
    count _vehicles, _prisonPos,
    {_x getVariable ["A3E_Wreck", false]} count _vehicles,
    {_x getVariable ["A3E_NeedsHotwire", false]} count _vehicles];
