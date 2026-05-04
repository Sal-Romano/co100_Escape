// fn_spawnMenu.sqf
// Wasteland-style spawn dialog with embedded map and group management
// Returns [position, spawnType] where spawnType is "city" or "group"

disableSerialization;

// ============================================================================
// CITY LIST
// ============================================================================

A3E_MP_Cities = [
    ["Chernogorsk", [6731, 2570, 0]],
    ["Elektrozavodsk", [10500, 2100, 0]],
    ["Berezino", [12300, 9100, 0]],
    ["Solnichniy", [13300, 6200, 0]],
    ["Kamyshovo", [12100, 3500, 0]],
    ["Balota", [4500, 2400, 0]],
    ["Kamenka", [1900, 2200, 0]],
    ["Zelenogorsk", [2700, 5300, 0]],
    ["Vybor", [4500, 8200, 0]],
    ["Stary Sobor", [6100, 7700, 0]],
    ["Novy Sobor", [7100, 7700, 0]],
    ["Gorka", [9700, 8800, 0]],
    ["Polana", [10700, 8100, 0]],
    ["Krasnostav", [11300, 12200, 0]],
    ["Severograd", [8600, 12700, 0]],
    ["Novodmitrovsk", [11200, 14600, 0]],
    ["Svetlojarsk", [13900, 13200, 0]],
    ["Dubrovka", [10400, 9800, 0]],
    ["Pustoshka", [3100, 7900, 0]],
    ["Nadezhdino", [5800, 4700, 0]]
];

// ============================================================================
// STATE VARIABLES
// ============================================================================

A3E_MP_SpawnSelected = false;
A3E_MP_SpawnPos = [0,0,0];
A3E_MP_SpawnType = "city";
A3E_MP_SelectedCity = [];
A3E_MP_GroupMap = [];

// ============================================================================
// GROUP MANAGEMENT FUNCTIONS (called from dialog buttons)
// ============================================================================

A3E_fnc_spawnUI_createGroup = {
    disableSerialization;
    private _display = findDisplay 58000;
    if (isNull _display) exitWith {};

    private _nameCtrl = _display displayCtrl 58009;
    private _name = ctrlText _nameCtrl;

    if (_name == "") then {
        _name = format ["%1's Group", name player];
    };

    private _newGroup = createGroup [west, true];
    [player] joinSilent _newGroup;
    _newGroup setGroupIdGlobal [_name];

    _nameCtrl ctrlSetText "";
    hint format ["Created group: %1", _name];
};

A3E_fnc_spawnUI_joinGroup = {
    disableSerialization;
    private _display = findDisplay 58000;
    if (isNull _display) exitWith {};

    private _list = _display displayCtrl 58002;
    private _idx = lbCurSel _list;

    if (_idx < 0 || _idx >= count A3E_MP_GroupMap) exitWith {
        hint "Select a group from the list first.";
    };

    private _targetGroup = A3E_MP_GroupMap select _idx;

    if (isNull _targetGroup) exitWith {};
    if (_targetGroup == group player) exitWith {
        hint "Already in this group.";
    };

    [player] joinSilent _targetGroup;
    hint format ["Joined: %1", groupId _targetGroup];
};

A3E_fnc_spawnUI_leaveGroup = {
    if (count units group player <= 1) exitWith {
        hint "Already solo.";
    };

    private _soloGroup = createGroup [west, true];
    [player] joinSilent _soloGroup;
    _soloGroup setGroupIdGlobal [format ["Solo_%1", name player]];
    hint "Left group. You are now solo.";
};

A3E_fnc_spawnUI_spawnCity = {
    // Pick a random city for a fresh escape
    private _pick = selectRandom A3E_MP_Cities;
    private _grp = group player;
    private _isLeader = (leader _grp == player);
    private _lobbyMembers = (units _grp) select {
        isPlayer _x && _x != player &&
        (_x getVariable ["A3E_MP_InLobby", false] || _x getVariable ["A3E_InSpawnLobby", false])
    };

    if (_isLeader && count _lobbyMembers > 0) then {
        A3E_MP_SpawnPos = _pick select 1;
        A3E_MP_SpawnType = "group_city";
        A3E_MP_SpawnSelected = true;
    } else {
        A3E_MP_SpawnPos = _pick select 1;
        A3E_MP_SpawnType = "city";
        A3E_MP_SpawnSelected = true;
    };

    // Don't reveal spawn location to player
};

A3E_fnc_spawnUI_spawnOnGroup = {
    private _nearestMember = objNull;
    {
        if (_x != player && alive _x && !(_x getVariable ["A3E_MP_InLobby", true])) exitWith {
            _nearestMember = _x;
        };
    } forEach units group player;

    if (isNull _nearestMember) exitWith {
        hint "No alive group members to spawn on!";
    };

    A3E_MP_SpawnPos = getPos _nearestMember;
    A3E_MP_SpawnType = "group";
    A3E_MP_SpawnSelected = true;
};

// ============================================================================
// GROUP LIST UPDATER (runs in spawned thread while dialog is open)
// ============================================================================

A3E_fnc_spawnUI_updateGroups = {
    disableSerialization;
    private _display = findDisplay 58000;
    if (isNull _display) exitWith {};

    private _list = _display displayCtrl 58002;
    private _prevSel = lbCurSel _list;
    lbClear _list;
    A3E_MP_GroupMap = [];

    // Get all west groups with players
    private _playerGroups = allGroups select {
        side _x == west && {count (units _x select {isPlayer _x}) > 0}
    };

    {
        private _grp = _x;
        private _grpName = groupId _grp;
        private _members = units _grp select {isPlayer _x};
        private _aliveInField = _members select {alive _x && !(_x getVariable ["A3E_MP_InLobby", true])};
        private _isMyGroup = (_grp == group player);

        // Group header line
        private _headerText = format ["%1  [%2 players, %3 in field]",
            _grpName, count _members, count _aliveInField];
        private _hIdx = _list lbAdd _headerText;

        if (_isMyGroup) then {
            _list lbSetColor [_hIdx, [0.3, 1, 0.3, 1]];
        } else {
            _list lbSetColor [_hIdx, [0.3, 0.8, 0.3, 1]];
        };
        A3E_MP_GroupMap pushBack _grp;

        // Member lines
        {
            private _prefix = if (_x == leader _grp) then {" > "} else {"    "};
            private _status = if (_x getVariable ["A3E_MP_InLobby", true]) then {
                " [Lobby]"
            } else {
                if (alive _x) then {""} else {" [Dead]"}
            };
            private _you = if (_x == player) then {" (You)"} else {""};
            private _mIdx = _list lbAdd format ["%1%2%3%4", _prefix, name _x, _you, _status];

            if (_x == player) then {
                _list lbSetColor [_mIdx, [1, 1, 0.3, 1]];
            } else {
                if (alive _x && !(_x getVariable ["A3E_MP_InLobby", true])) then {
                    _list lbSetColor [_mIdx, [0.85, 0.85, 0.85, 1]];
                } else {
                    _list lbSetColor [_mIdx, [0.5, 0.5, 0.5, 1]];
                };
            };
            A3E_MP_GroupMap pushBack _grp;
        } forEach _members;
    } forEach _playerGroups;

    // Restore selection
    if (_prevSel >= 0 && _prevSel < lbSize _list) then {
        _list lbSetCurSel _prevSel;
    };

    // Update "Spawn on Group" button state
    private _canSpawnOnGroup = false;
    {
        if (_x != player && alive _x && !(_x getVariable ["A3E_MP_InLobby", true])) exitWith {
            _canSpawnOnGroup = true;
        };
    } forEach units group player;
    (_display displayCtrl 58005) ctrlEnable _canSpawnOnGroup;

    // Update player info text
    private _infoCtrl = _display displayCtrl 58010;
    private _myGrp = group player;
    private _myMembers = units _myGrp select {isPlayer _x};
    private _infoText = format [
        "<t color='#4de64d'>Your Group:</t> %1<br/><t color='#cccccc'>Members: %2</t><br/><t color='#cccccc'>Click a group in the list, then JOIN to switch.</t>",
        groupId _myGrp,
        count _myMembers
    ];
    _infoCtrl ctrlSetStructuredText parseText _infoText;
};

// ============================================================================
// MAIN DIALOG SETUP
// ============================================================================

// Wait for main display
waitUntil {sleep 0.1; !isNull (findDisplay 46)};
sleep 0.5;

// Create the dialog
private _dialogOK = createDialog "A3E_SpawnDialog";

if (!_dialogOK) then {
    diag_log "ERROR: Failed to create A3E_SpawnDialog!";
    systemChat "Spawn dialog failed to load. Using fallback.";
    // Fallback: pick a random city
    private _fallback = selectRandom A3E_MP_Cities;
    A3E_MP_SpawnPos = _fallback select 1;
    A3E_MP_SpawnType = "city";
    A3E_MP_SpawnSelected = true;
};

// Wait for dialog with timeout (15 seconds)
private _timeout = diag_tickTime + 15;
waitUntil {sleep 0.1; !isNull findDisplay 58000 || A3E_MP_SpawnSelected || diag_tickTime > _timeout};

if (A3E_MP_SpawnSelected) exitWith {
    [A3E_MP_SpawnPos, A3E_MP_SpawnType]
};

if (isNull findDisplay 58000) exitWith {
    diag_log "ERROR: Spawn dialog timed out. Using fallback.";
    systemChat "Spawn dialog timed out. Spawning at random city.";
    private _fallback = selectRandom A3E_MP_Cities;
    [_fallback select 1, "city"]
};

private _display = findDisplay 58000;

// BLOCK ESCAPE KEY - player cannot close this dialog
_display displayAddEventHandler ["KeyDown", {
    if ((_this select 1) == 1) then {true} else {false}
}];

// ============================================================================
// MAP SETUP
// ============================================================================

private _map = _display displayCtrl 58001;

// Center map on Chernarus
ctrlMapAnimClear _map;
_map ctrlMapAnimAdd [0, 0.04, [7700, 8000, 0]];
ctrlMapAnimCommit _map;

// Draw group members on the map (blue dots) - no city markers needed
_map ctrlAddEventHandler ["Draw", {
    params ["_map"];
    {
        if (_x != player && alive _x && !(_x getVariable ["A3E_MP_InLobby", true])) then {
            _map drawIcon [
                "\A3\ui_f\data\map\markers\nato\b_inf.paa",
                [0.3, 0.5, 1, 0.9],
                getPos _x,
                20, 20, 0,
                name _x, 1,
                0.03, "PuristaLight", "center"
            ];
        };
    } forEach (units group player);
}];

// "START NEW ESCAPE" is always enabled, "SPAWN ON GROUP" starts disabled
(_display displayCtrl 58005) ctrlEnable false;

// ============================================================================
// GROUP UPDATE LOOP
// ============================================================================

[] spawn {
    // Initial update
    call A3E_fnc_spawnUI_updateGroups;

    while {!isNull findDisplay 58000} do {
        sleep 2;
        call A3E_fnc_spawnUI_updateGroups;
    };
};

// ============================================================================
// WAIT FOR PLAYER SELECTION
// ============================================================================

waitUntil {sleep 0.1; A3E_MP_SpawnSelected};

// Small delay for visual feedback
sleep 0.2;

// Close dialog
if (!isNull findDisplay 58000) then {
    closeDialog 0;
};

// Clean up
A3E_MP_SelectedCity = nil;
A3E_MP_GroupMap = nil;

[A3E_MP_SpawnPos, A3E_MP_SpawnType]
