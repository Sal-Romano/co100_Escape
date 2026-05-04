// addCustomActions.sqf
// Adds custom scroll-menu actions to the player.
// Called on first spawn and after each respawn.

// Hotwire Vehicle - appears when in driver seat of a disabled vehicle
player addAction [
    "<t color='#FFA500'>Hotwire Vehicle</t>",
    {_this execVM "functions\Multiplayer\fn_hotwireVehicle.sqf"},
    nil, 6, false, true, "",
    "vehicle player != player && {driver (vehicle player) == player} && {(vehicle player) getVariable ['A3E_NeedsHotwire', false]} && {!(player getVariable ['A3E_Hotwiring', false])}"
];
