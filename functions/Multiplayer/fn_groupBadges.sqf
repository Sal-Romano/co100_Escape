// fn_groupBadges.sqf
// Floating 3D name tags above group members' heads
// Called once from fn_initLocalPlayer.sqf after player init

// Remove old handler if it exists (for respawn scenarios)
private _oldEH = player getVariable ["A3E_GroupBadgeEH", -1];
if (_oldEH >= 0) then {
    removeMissionEventHandler ["EachFrame", _oldEH];
};

private _ehId = addMissionEventHandler ["EachFrame", {
    private _myGroup = group player;
    if (isNull _myGroup) exitWith {};

    private _groupName = groupId _myGroup;

    {
        if (_x == player) then {continue};
        if (!isPlayer _x) then {continue};

        private _dist = _x distance player;
        if (_dist > 100) then {continue};

        private _pos = ASLtoAGL (eyePos _x);
        _pos set [2, (_pos select 2) + 0.35];

        // Color based on state
        private _color = [0.3, 0.95, 0.3, 0.85]; // Green: alive and well
        private _statusText = "";

        if (_x getVariable ["AT_Revive_isUnconscious", false] ||
            _x getVariable ["ACE_Revive_isUnconscious", false]) then {
            _color = [1, 0.15, 0.15, 0.9]; // Red: downed
            _statusText = " [DOWN]";
        };

        if (!alive _x) then {
            _color = [0.5, 0.5, 0.5, 0.5]; // Gray: dead
            _statusText = " [DEAD]";
        };

        if (_x getVariable ["A3E_MP_InLobby", false] ||
            _x getVariable ["A3E_InSpawnLobby", false]) then {
            _color = [0.6, 0.6, 0.6, 0.4]; // Dim gray: in lobby
            _statusText = " [LOBBY]";
        };

        // Fade alpha with distance (full at 0-50m, fade to 0.3 at 100m)
        private _alpha = _color select 3;
        if (_dist > 50) then {
            _alpha = _alpha * (1 - ((_dist - 50) / 50) * 0.7);
            _color set [3, _alpha];
        };

        // Draw player name + status
        drawIcon3D [
            "", _color, _pos,
            0, 0, 0,
            format ["%1%2", name _x, _statusText],
            2, 0.032, "PuristaMedium", "center", true
        ];

        // Draw group name (smaller, slightly above)
        private _posAbove = +_pos;
        _posAbove set [2, (_posAbove select 2) + 0.15];
        private _grpColor = +_color;
        _grpColor set [3, (_grpColor select 3) * 0.6];

        drawIcon3D [
            "", _grpColor, _posAbove,
            0, 0, 0,
            _groupName,
            1, 0.022, "PuristaLight", "center", true
        ];
    } forEach (units _myGroup);
}];

player setVariable ["A3E_GroupBadgeEH", _ehId];
