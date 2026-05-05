// showBlackScreen.sqf
// Shows an unbreakable fullscreen black overlay with optional text.
// Usage: ["ESCAPE FAILED"] execVM "functions\Multiplayer\showBlackScreen.sqf"
// Usage: [] execVM "functions\Multiplayer\showBlackScreen.sqf"
// To close: call A3E_fnc_hideBlackScreen or execVM hideBlackScreen.sqf

params [["_text", ""]];

// Create the overlay
("A3E_BlackScreen" call BIS_fnc_rscLayer) cutRsc ["A3E_BlackScreen", "PLAIN", 0, true];

sleep 0.1;

// Set text if provided
if (_text != "") then {
    private _display = uiNamespace getVariable ["A3E_BlackScreenDisplay", displayNull];
    if (!isNull _display) then {
        private _ctrl = _display displayCtrl 620102;
        _ctrl ctrlSetStructuredText parseText format [
            "<t size='3' color='#cc0000' align='center' shadow='2'>%1</t>",
            _text
        ];
    };
};
