// fn_prisonVehicles.sqf
// Server-side. Processes vehicles near a prison after it's built.
// Locks them, sets low fuel, randomly destroys some for atmosphere.
// Called with: [prisonPos, compoundRadius] call A3E_fnc_prisonVehicles;

if (!isServer) exitWith {};

params ["_prisonPos", ["_radius", 30]];

private _vehicles = nearestObjects [_prisonPos, ["Car", "Tank", "Motorcycle", "Truck"], _radius];

{
    private _veh = _x;

    // 30% chance: destroyed wreck (atmosphere)
    if (random 100 < 30) then {
        _veh setDamage 1;
        _veh setVariable ["A3E_Wreck", true, true];
    } else {
        // Intact but locked with low fuel
        _veh lock 2;
        _veh setFuel (0.02 + random 0.08); // 2-10% fuel, avg ~5%
        _veh setDamage (0.2 + random 0.4);  // Visibly worn, 20-60% damage
        _veh setVariable ["A3E_NeedsHotwire", true, true];
        _veh setVariable ["A3E_Persistent", true, true]; // Don't GC this

        // Remove any crew that spawned with the vehicle
        {deleteVehicle _x} forEach crew _veh;
    };
} forEach _vehicles;

diag_log format ["PrisonVehicles: Processed %1 vehicles at %2 (%3 wrecks)",
    count _vehicles, _prisonPos,
    {_x getVariable ["A3E_Wreck", false]} count _vehicles];
