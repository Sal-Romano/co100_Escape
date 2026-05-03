// fn_groupWipeMonitor.sqf
// Server-side. Monitors player groups for full wipe (all members unconscious).
// Spawned from fn_initServer.sqf, runs every 2 seconds.

if (!isServer) exitWith {};

[] spawn {
    // Wait for escape to start before monitoring
    waitUntil {sleep 1; !isNil "A3E_EscapeHasStarted"};

    while {true} do {
        sleep 2;

        // Build list of groups with active (non-lobby) players
        private _checkedGroups = [];
        {
            private _grp = group _x;
            if (!(_grp in _checkedGroups) &&
                {side _grp == west} &&
                {!(_x getVariable ["A3E_InSpawnLobby", false])} &&
                {!(_x getVariable ["A3E_MP_InLobby", false])}) then {
                _checkedGroups pushBack _grp;
            };
        } forEach ([] call A3E_fnc_GetPlayers);

        {
            private _grp = _x;

            // Skip groups already in wipe processing
            if (_grp getVariable ["A3E_GroupWipeInProgress", false]) then {continue};

            // Get active members (not in lobby)
            private _activeMembers = (units _grp) select {
                isPlayer _x &&
                !(_x getVariable ["A3E_InSpawnLobby", false]) &&
                !(_x getVariable ["A3E_MP_InLobby", false])
            };

            if (count _activeMembers == 0) then {continue};

            // Check if ALL active members are unconscious
            private _allDown = (_activeMembers findIf {
                !(_x getVariable ["AT_Revive_isUnconscious", false]) &&
                !(_x getVariable ["ACE_Revive_isUnconscious", false])
            }) == -1;

            if (_allDown) then {
                _grp setVariable ["A3E_GroupWipeInProgress", true, true];
                [_grp] spawn A3E_fnc_handleGroupWipe;
            };
        } forEach _checkedGroups;
    };
};
