// fn_spawnGroupAtCity.sqf
// Server-side. Called when group leader selects a city for the group.
// Spawns all lobby group members at a dynamic prison at the selected city.

if (!isServer) exitWith {};

params ["_grp", "_spawnPos"];

private _grpName = groupId _grp;
diag_log format ["SpawnGroupAtCity: %1 spawning at %2", _grpName, _spawnPos];

// Get all group members in lobby
private _members = (units _grp) select {
    isPlayer _x &&
    (_x getVariable ["A3E_InSpawnLobby", false] || _x getVariable ["A3E_MP_InLobby", false])
};

diag_log format ["SpawnGroupAtCity: %1 - found %2 lobby members out of %3 total units", _grpName, count _members, count units _grp];
if (count _members == 0) exitWith {
    diag_log format ["SpawnGroupAtCity: %1 - no lobby members to spawn! Unit states:", _grpName];
    {diag_log format ["  Unit: %1 isPlayer=%2 InSpawnLobby=%3 MP_InLobby=%4", name _x, isPlayer _x, _x getVariable ["A3E_InSpawnLobby", false], _x getVariable ["A3E_MP_InLobby", false]]} forEach units _grp;
};

// Find flat area OUTSIDE the city (offset 200-500m from city center)
// The city position itself is the center - prisons should be on the outskirts
private _searchPos = _spawnPos getPos [200 + random 300, random 360];
private _prisonPos = [_searchPos, 300, 5, 0.1, 500] call A3E_fnc_findFlatAreaNear;
if (count _prisonPos == 0) then {
    _searchPos = _spawnPos getPos [300 + random 400, random 360];
    _prisonPos = [_searchPos, 600, 3, 0.15, 1000] call A3E_fnc_findFlatAreaNear;
};
if (count _prisonPos == 0) then {
    _prisonPos = _spawnPos getPos [250, random 360];
};
_prisonPos set [2, 0];

// Aggressive group cleanup before spawning new guards
{
    if (side _x != west && {count units _x == 0}) then {deleteGroup _x};
} forEach allGroups;

// Clean up terrain
[_prisonPos, 25] call a3e_fnc_cleanupTerrain;

// Give each member uniform + weapon on CLIENT side
private _weapons = missionNamespace getVariable ["a3e_arr_PrisonBackpackWeapons", []];
{
    private _weaponData = [];
    if (count _weapons > 0) then {
        _weaponData = selectRandom _weapons;
    };
    [_weaponData, {
        params ["_wd"];
        execVM "functions\Multiplayer\setPrisonerUniform.sqf";
        sleep 0.5;
        if (count _wd > 0) then {
            _wd params ["_weapon", "_mag"];
            player addWeapon _weapon;
            player addMagazine _mag;
            player addMagazine _mag;
            player addMagazine _mag;
        };
    }] remoteExec ["spawn", _x];
} forEach _members;

// Build prison (no backpack)
private _fenceRotateDir = random 360;
private _backpack = objNull;
private _template = selectRandom (missionNamespace getVariable ["A3E_PrisonTemplates",
    ["a3e_fnc_BuildPrison", "a3e_fnc_BuildPrison1", "a3e_fnc_BuildPrison2",
     "a3e_fnc_BuildPrison3", "a3e_fnc_BuildPrison4", "a3e_fnc_BuildPrison5"]]);
[_prisonPos, _fenceRotateDir, _backpack] remoteExec [_template, 0, true];

// Spawn guards
private _guardTypes = missionNamespace getVariable ["a3e_arr_Escape_StartPositionGuardTypes", []];
if (count _guardTypes == 0) then {
    _guardTypes = ["CUP_O_RU_Soldier_GL", "CUP_O_RU_Soldier_MG", "CUP_O_RU_Soldier_TL"];
};

// Aggressive cleanup: delete ALL empty groups across all sides
{if (count units _x == 0) then {deleteGroup _x}} forEach allGroups;

// Guard count: base 8, scale with enemy frequency
private _enemyFreq = missionNamespace getVariable ["A3E_Param_EnemyFrequency", 2];
private _guardCount = switch (_enemyFreq) do {
    case 1: {6};
    case 2: {8};
    default {12};
};

// Use SAME side for all prison guards so they don't fight each other
// Use Ind side (militia/NAPA) - they're the prison guards
private _guardSide = missionNamespace getVariable ["A3E_VAR_Side_Ind", resistance];
private _guardGroup = createGroup [_guardSide, true];
if (isNull _guardGroup) then {
    diag_log "SpawnGroupAtCity: createGroup Ind failed, trying Opfor...";
    _guardGroup = createGroup [A3E_VAR_Side_Opfor, true];
};
if (isNull _guardGroup) then {
    diag_log "SpawnGroupAtCity: CRITICAL - all createGroup failed!";
};

private _angleStep = 360 / _guardCount;
for "_i" from 0 to (_guardCount - 1) do {
    private _guardPos = _prisonPos getPos [8 + random 10, _i * _angleStep];
    private _guard = _guardGroup createUnit [selectRandom _guardTypes, _guardPos, [], 0, "FORM"];
    _guard setSkill (0.25 + random 0.2);
    _guard setBehaviour "SAFE";
    _guard setCombatMode "YELLOW";

    // Strip down to basic gear - prison guards shouldn't be fully kitted
    private _primaryWeapon = primaryWeapon _guard;
    private _primaryMags = primaryWeaponMagazine _guard;
    private _uniform = uniform _guard;
    private _headgear = headgear _guard;

    removeAllWeapons _guard;
    removeAllItems _guard;
    removeAllAssignedItems _guard;
    removeBackpack _guard;
    removeVest _guard;

    // Give back primary weapon + limited ammo only
    if (_primaryWeapon != "") then {
        _guard addWeapon _primaryWeapon;
        {_guard addMagazine _x} forEach _primaryMags;
        _guard addMagazine (_primaryMags select 0);
    };

    // 30% chance: no vest at all (scrappy militia look)
    if (random 100 > 30) then {
        _guard addVest "CUP_V_OI_TKI_Jacket1_06";
    };

    // 80% chance: remove primary weapon attachments
    if (random 100 < 80) then {
        removeAllPrimaryWeaponItems _guard;
    };

    // Set ammo low
    _guard setVehicleAmmo (0.3 + random 0.4);
};
// Mark prison guards as persistent so GC doesn't delete them
_guardGroup setVariable ["A3E_Persistent", true, true];

// War-torn mode: spawn a small Opfor patrol nearby that will fight the Ind guards
// Adds atmosphere - player spawns into an active skirmish
private _warTorn = missionNamespace getVariable ["A3E_Param_War_Torn", 0];
if (_warTorn == 1) then {
    private _opforTypes = missionNamespace getVariable ["a3e_arr_Escape_InfantryTypes", []];
    if (count _opforTypes > 0) then {
        private _opforGroup = createGroup [A3E_VAR_Side_Opfor, true];
        if (!isNull _opforGroup) then {
            // 2-4 Opfor soldiers approaching from one direction
            private _attackDir = random 360;
            private _attackDist = 40 + random 30;
            for "_i" from 0 to (1 + floor random 2) do {
                private _pos = _prisonPos getPos [_attackDist + random 10, _attackDir + (_i * 15)];
                private _unit = _opforGroup createUnit [selectRandom _opforTypes, _pos, [], 0, "FORM"];
                _unit setSkill (0.3 + random 0.2);

                // Strip to basic gear
                private _pw = primaryWeapon _unit;
                private _pm = primaryWeaponMagazine _unit;
                removeAllWeapons _unit;
                removeAllItems _unit;
                removeAllAssignedItems _unit;
                removeBackpack _unit;
                if (_pw != "") then {
                    _unit addWeapon _pw;
                    {_unit addMagazine _x} forEach _pm;
                };
                if (random 100 < 80) then {removeAllPrimaryWeaponItems _unit};
                _unit setVehicleAmmo (0.3 + random 0.4);
            };
            _opforGroup setCombatMode "RED";
            _opforGroup setBehaviour "AWARE";
            // Send them toward the prison
            private _wp = _opforGroup addWaypoint [_prisonPos, 15];
            _wp setWaypointType "SAD";
            _opforGroup setVariable ["A3E_Persistent", true, true];
            diag_log format ["SpawnGroupAtCity: War-torn skirmish - %1 Opfor attackers from dir %2", count units _opforGroup, round _attackDir];
        };
    };
};

// Spawn zombies swarming the prison
// Inner ring: 10-15 close to the walls (5-20m out)
// Outer ring: 15-20 closing in from further away (30-80m out)
// Zombie spawn - variable intensity each time
// 10% none, 30% few (5-10), 40% medium (15-25), 20% horde (30-50)
private _zombieRoll = floor random 100;
private _innerCount = 0;
private _outerCount = 0;
if (_zombieRoll < 10) then {
    // 10% - no zombies (eerie silence)
    diag_log "SpawnGroupAtCity: No zombies this time (10% roll)";
} else {
    if (_zombieRoll < 40) then {
        // 30% - a few stragglers
        _innerCount = 2 + floor random 4;
        _outerCount = 3 + floor random 4;
    } else {
        if (_zombieRoll < 80) then {
            // 40% - medium presence
            _innerCount = 8 + floor random 8;
            _outerCount = 10 + floor random 8;
        } else {
            // 20% - horde
            _innerCount = 15 + floor random 10;
            _outerCount = 20 + floor random 10;
        };
    };
};

private _zombieGroup = createGroup [civilian, true];
if (!isNull _zombieGroup && {(_innerCount + _outerCount) > 0}) then {
    private _zombieTypes = ["zombie_runner", "zombie_bolter", "zombie_walker"];
    private _zombieUniforms = ["mgsr_robe_olive_dirty", "mgsr_robe_olive_muddy"];

    // Inner ring - right at the prison
    for "_i" from 0 to (_innerCount - 1) do {
        private _zPos = _prisonPos getPos [5 + random 15, random 360];
        private _zombie = _zombieGroup createUnit [selectRandom _zombieTypes, _zPos, [], 3, "NONE"];
        if (!isNull _zombie) then {
            _zombie setSkill 0.4;
            _zombie forceAddUniform (selectRandom _zombieUniforms);
            _zombie setVariable ["SSD_disabledSounds", true];
        };
    };

    // Outer ring - shambling toward the prison
    for "_i" from 0 to (_outerCount - 1) do {
        private _zPos = _prisonPos getPos [30 + random 50, random 360];
        private _zombie = _zombieGroup createUnit [selectRandom _zombieTypes, _zPos, [], 5, "NONE"];
        if (!isNull _zombie) then {
            _zombie setSkill 0.4;
            _zombie forceAddUniform (selectRandom _zombieUniforms);
            _zombie setVariable ["SSD_disabledSounds", true];
        };
    };

    // Send outer ring toward prison
    private _wp = _zombieGroup addWaypoint [_prisonPos, 15];
    _wp setWaypointType "SAD";
    _zombieGroup setVariable ["A3E_Persistent", true, true];

    diag_log format ["SpawnGroupAtCity: Zombies - %1 total (%2 inner, %3 outer) roll=%4", count units _zombieGroup, _innerCount, _outerCount, _zombieRoll];
};

diag_log format ["SpawnGroupAtCity: freq=%1, spawned %2 guards (side %3)", _enemyFreq, count units _guardGroup, _guardSide];

// Guard patrol
private _wp = _guardGroup addWaypoint [_prisonPos getPos [12, 0], 8];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "LIMITED";
_wp setWaypointBehaviour "SAFE";
private _wp2 = _guardGroup addWaypoint [_prisonPos getPos [12, 120], 8];
_wp2 setWaypointType "MOVE";
private _wp3 = _guardGroup addWaypoint [_prisonPos getPos [12, 240], 8];
_wp3 setWaypointType "MOVE";
private _wp4 = _guardGroup addWaypoint [_prisonPos getPos [12, 0], 8];
_wp4 setWaypointType "CYCLE";

// Show loading screen via GUI overlay on all members
{
    {
        ("A3E_BlackScreen" call BIS_fnc_rscLayer) cutRsc ["A3E_BlackScreen", "PLAIN", 0, true];
        sleep 0.1;
        private _d = uiNamespace getVariable ["A3E_BlackScreenDisplay", displayNull];
        if (!isNull _d) then {
            (_d displayCtrl 620102) ctrlSetStructuredText parseText "<t size='1.5' color='#cccccc' align='center'>Loading escape...</t>";
        };
    } remoteExec ["call", _x];
} forEach _members;

// Wait for compound objects and guards to fully spawn
sleep 3;

// Process prison vehicles AFTER compound has fully spawned
[_prisonPos, 80] call A3E_fnc_prisonVehicles;

// Place all members inside the prison with FULL state reset
// Players are still black screened from forceConscious
{
    _x setVariable ["AT_Revive_isUnconscious", false, true];
    _x setVariable ["AT_Revive_isDragged", objNull, true];
    _x setVariable ["AT_Revive_isDragging", objNull, true];
    _x setVariable ["AT_Revive_isCarrying", objNull, true];
    _x setVariable ["ACE_Revive_isUnconscious", false, true];
    _x setVariable ["A3E_MP_PrisonPos", _prisonPos, true];

    _x setPos _prisonPos;
    _x allowDamage false;
    _x enableSimulation true;
    _x setCaptive true;
    _x setDamage 0;
    _x setVariable ["A3E_SpawnProtection", true, true];

    // Player is already black screened from wipe handler. Just clear state.
    [_x, ""] remoteExec ["switchMove", 0, false];
    [_x, ""] remoteExec ["playMoveNow", _x];

    _x setVariable ["A3E_InSpawnLobby", false, true];
    _x setVariable ["A3E_MP_InLobby", false, true];
} forEach _members;

// Sequence: wait for cleanup -> ATR init -> reveal -> spawn protection
[_members] spawn {
    params ["_units"];

    // Wait for forceConscious to finish
    sleep 2;

    // Re-init ATR revive + custom actions on each client
    {
        [true] remoteExec ["ATR_FNC_InitPlayer", _x];
        // Re-add hotwire action (removed by wipeReset's removeAllActions)
        "functions\Multiplayer\addCustomActions.sqf" remoteExec ["execVM", _x];
    } forEach _units;

    // Wait 1 more second, then REVEAL (clear black screen + unfreeze input)
    sleep 1;
    {
        // Remove GUI black overlay + fade in via execVM (reliable)
        "functions\Multiplayer\hideBlackScreen.sqf" remoteExec ["execVM", _x];
        [["", "BLACK IN", 2]] remoteExec ["cutText", _x];
    } forEach _units;

    // Spawn protection: damage enabled after 10 total seconds
    sleep 7;
    {
        if (alive _x) then {
            _x allowDamage true;
            _x setVariable ["A3E_SpawnProtection", false, true];
            [_x, true] remoteExec ["allowDamage", _x];
        };
    } forEach _units;
};

// Mark group spawn as ready (non-leaders are waiting on this)
_grp setVariable ["A3E_GroupSpawnReady", true, true];
_grp setVariable ["A3E_GroupInLobby", false, true];

// Set A3E_EscapeHasStarted if not already
if (isNil "A3E_EscapeHasStarted") then {
    A3E_EscapeHasStarted = true;
    publicVariable "A3E_EscapeHasStarted";
};

// Per-player escape trigger (same as createDynamicPrison)
[_members, _prisonPos, _guardGroup] spawn {
    params ["_members", "_prisonPos", "_guards"];

    waitUntil {
        sleep 0.5;
        // Bail if group got wiped (teleported away)
        if (_members findIf {_x getVariable ["A3E_InSpawnLobby", false]} > -1) exitWith {false};

        private _anyArmed = false;
        private _anyEscaped = false;
        {
            if (!alive _x) then {continue};
            if (_x getVariable ["A3E_InSpawnLobby", false]) then {continue};
            if (count weapons _x > 0) then {_anyArmed = true};
            if (_x distance _prisonPos > 15) then {_anyEscaped = true};
        } forEach _members;
        _anyArmed || _anyEscaped
    };

    // Alert guards
    _guards setCombatMode "RED";
    _guards setBehaviour "COMBAT";
    {
        {
            _x reveal [_forEachIndex, 4];
        } forEach units _guards;
        [_x, false] remoteExec ["setCaptive", _x, false];
    } forEach _members;
};

diag_log format ["SpawnGroupAtCity: %1 - %2 members spawned at prison.", _grpName, count _members];
