// fn_groupWipeMonitor.sqf
// Server-side. Monitors player groups for full wipe (all members unconscious).
// Spawned from fn_initServer.sqf, runs every 2 seconds.

if (!isServer) exitWith {};

[] spawn {
    // Wait for players to load in before starting monitor
    sleep 30;
    diag_log "GroupWipeMonitor: STARTED";

    while {true} do {
        sleep 2;

        // Get all connected human players who are alive and in the field
        private _allPlayers = ([] call BIS_fnc_listPlayers) select {alive _x};

        // Build list of unique groups with active (non-lobby) players
        private _checkedGroups = [];
        {
            private _grp = group _x;
            private _inLobby = (_x getVariable ["A3E_InSpawnLobby", false]) ||
                               (_x getVariable ["A3E_MP_InLobby", false]);
            if (!_inLobby && !(_grp in _checkedGroups) && {side _grp == west}) then {
                _checkedGroups pushBack _grp;
            };
        } forEach _allPlayers;

        // Check each group for full wipe
        {
            private _grp = _x;

            // Skip groups already in wipe processing
            if (_grp getVariable ["A3E_GroupWipeInProgress", false]) then {continue};

            // Get active members (not in lobby, alive, human)
            private _activeMembers = (units _grp) select {
                isPlayer _x &&
                alive _x &&
                !(_x getVariable ["A3E_InSpawnLobby", false]) &&
                !(_x getVariable ["A3E_MP_InLobby", false])
            };

            if (count _activeMembers == 0) then {continue};

            // Check if ALL active members are unconscious
            // A member is "up" if they are NOT unconscious in ATR or ACE
            private _anyoneUp = false;
            {
                private _atrDown = _x getVariable ["AT_Revive_isUnconscious", false];
                private _aceDown = _x getVariable ["ACE_Revive_isUnconscious", false];
                if (!_atrDown && !_aceDown) exitWith {
                    _anyoneUp = true;
                };
            } forEach _activeMembers;

            if (!_anyoneUp) then {
                diag_log format ["GroupWipeMonitor: %1 WIPED (%2 members all unconscious)", groupId _grp, count _activeMembers];
                _grp setVariable ["A3E_GroupWipeInProgress", true, true];
                [_grp] spawn A3E_fnc_handleGroupWipe;
            };
        } forEach _checkedGroups;
    };
};
