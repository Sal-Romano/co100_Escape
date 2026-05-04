// addCustomActions.sqf
// Adds custom scroll-menu actions to the player.
// Called on first spawn (from initLocalPlayer) and after each respawn.

// Hotwire Vehicle - appears on locked prison vehicles within 5m
player addAction [
    "<t color='#FFA500'>Hotwire Vehicle</t>",
    {_this execVM "functions\Multiplayer\fn_hotwireVehicle.sqf"},
    nil, 6, true, true, "",
    "!isNull cursorTarget && {cursorTarget isKindOf 'LandVehicle'} && {cursorTarget getVariable ['A3E_NeedsHotwire', false]} && {player distance cursorTarget < 5} && {!(player getVariable ['A3E_Hotwiring', false])}"
];
