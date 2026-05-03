// fn_buildingLoot.sqf
// DayZ-style loot spawning in buildings near players
// Runs on server. Scans buildings around players, spawns ground loot on building positions.
// Buildings are only looted once (tracked via variable). Loot despawns when no players nearby.

if (!isServer) exitWith {};

// Check if building loot is enabled (mission parameter)
if (missionNamespace getVariable ["A3E_Param_BuildingLoot", 1] == 0) exitWith {};

// Read config from mission parameters (with defaults)
private _density = missionNamespace getVariable ["A3E_Param_LootDensity", 2];

// Scale settings based on density param
A3E_Loot_Radius = 150;
A3E_Loot_DespawnRadius = 300;
A3E_Loot_ScanInterval = 5;

switch (_density) do {
    case 1: { // Scarce
        A3E_Loot_MaxPerBuilding = 1;
        A3E_Loot_Chance = 20;
    };
    case 2: { // Normal
        A3E_Loot_MaxPerBuilding = 3;
        A3E_Loot_Chance = 40;
    };
    case 3: { // Abundant
        A3E_Loot_MaxPerBuilding = 5;
        A3E_Loot_Chance = 60;
    };
};

// Loot tables
A3E_Loot_MilWeapons = [
    ["CUP_arifle_AK74", "CUP_30Rnd_545x39_AK_M"],
    ["CUP_arifle_AKM", "CUP_30Rnd_762x39_AK47_M"],
    ["CUP_arifle_AK74M", "CUP_30Rnd_545x39_AK_M"],
    ["CUP_SKS", "CUP_10Rnd_762x39_SKS_M"],
    ["CUP_sgun_Saiga12K", "CUP_8Rnd_B_Saiga12_74Slug_M"],
    ["CUP_arifle_FNFAL", "CUP_20Rnd_762x51_FNFAL_M"],
    ["CUP_smg_bizon", "CUP_64Rnd_9x19_Bizon_M"],
    ["CUP_arifle_Sa58P_des", "CUP_30Rnd_Sa58_M_TracerG"]
];

A3E_Loot_CivWeapons = [
    ["CUP_hgun_Makarov", "CUP_8Rnd_9x18_Makarov_M"],
    ["CUP_hgun_TT", "CUP_8Rnd_762x25_TT"],
    ["CUP_hgun_Colt1911", "CUP_7Rnd_45ACP_1911"],
    ["CUP_hgun_CZ75", "CUP_16Rnd_9x19_cz75"],
    ["CUP_hgun_Compact", "CUP_10Rnd_9x19_Compact"],
    ["CUP_SKS", "CUP_10Rnd_762x39_SKS_M"],
    ["CUP_sgun_Saiga12K", "CUP_8Rnd_B_Saiga12_74Pellets_M"]
];

A3E_Loot_Medical = [
    "FirstAidKit",
    "Medikit"
];

A3E_Loot_Items = [
    "ItemMap",
    "ItemCompass",
    "ItemWatch",
    "ItemGPS",
    "ItemRadio",
    "MineDetector",
    "Binocular",
    "CUP_HandGrenade_RGD5",
    "SmokeShell",
    "SmokeShellGreen",
    "SmokeShellRed",
    "Chemlight_green",
    "Chemlight_red"
];

A3E_Loot_Attachments = [
    "CUP_optic_Kobra",
    "CUP_optic_PSO_1",
    "CUP_optic_PechenegScope",
    "CUP_acc_Flashlight",
    "CUP_muzzle_PBS4"
];

A3E_Loot_Backpacks = [
    "CUP_B_AlicePack_Khaki",
    "CUP_B_AlicePack_Bedroll",
    "B_AssaultPack_khk",
    "B_Kitbag_rgr",
    "B_FieldPack_khk"
];

A3E_Loot_Clothing = [
    "CUP_V_OI_TKI_Jacket1_01",
    "CUP_V_OI_TKI_Jacket1_02",
    "CUP_V_OI_TKI_Jacket1_04",
    "CUP_V_OI_TKI_Jacket1_05",
    "CUP_V_OI_TKI_Jacket1_06",
    "V_BandollierB_khk",
    "V_Chestrig_khk",
    "H_Bandanna_khk",
    "H_Booniehat_khk",
    "H_Cap_blk"
];

// Container types - must be actual cargo containers (openable inventory)
A3E_Loot_MilContainers = [
    "Box_FIA_Ammo_F",
    "Box_FIA_Support_F",
    "Box_FIA_Wps_F",
    "Box_IND_Ammo_F"
];

A3E_Loot_CivContainers = [
    "Box_Syndicate_Ammo_F",
    "Box_Syndicate_Wps_F",
    "Box_FIA_Support_F",
    "Box_FIA_Ammo_F"
];

// Track all spawned loot holders for cleanup
A3E_LootHolders = [];

A3E_fnc_isMilitaryBuilding = {
    params ["_building"];
    private _type = toLower (typeOf _building);
    ("barrack" in _type) ||
    ("cargo" in _type) ||
    ("military" in _type) ||
    ("mil_" in _type) ||
    ("bunker" in _type) ||
    ("tower" in _type) ||
    ("hq" in _type) ||
    ("tent" in _type) ||
    ("guardhouse" in _type) ||
    ("warehouse" in _type)
};

A3E_fnc_spawnLootInBuilding = {
    params ["_building", "_isMilitary"];

    private _positions = _building buildingPos -1;
    if (count _positions == 0) exitWith {};

    private _lootCount = 1 + floor random (A3E_Loot_MaxPerBuilding);
    _lootCount = _lootCount min (count _positions);

    private _shuffled = _positions call BIS_fnc_arrayShuffle;

    for "_i" from 0 to (_lootCount - 1) do {
        private _pos = _shuffled select _i;
        _pos set [2, (_pos select 2) + 0.05];

        // Spawn a container appropriate to building type
        private _containerPool = if (_isMilitary) then {A3E_Loot_MilContainers} else {A3E_Loot_CivContainers};
        private _containerType = selectRandom _containerPool;
        private _holder = createVehicle [_containerType, _pos, [], 0, "CAN_COLLIDE"];
        _holder setPos _pos;
        _holder setDir (random 360);
        clearWeaponCargoGlobal _holder;
        clearMagazineCargoGlobal _holder;
        clearItemCargoGlobal _holder;
        clearBackpackCargoGlobal _holder;

        private _roll = floor random 100;

        if (_roll < 25) then {
            // Weapon + mags
            private _weaponPool = if (_isMilitary) then {A3E_Loot_MilWeapons} else {A3E_Loot_CivWeapons};
            private _pick = selectRandom _weaponPool;
            _pick params ["_wep", "_mag"];
            _holder addWeaponCargoGlobal [_wep, 1];
            _holder addMagazineCargoGlobal [_mag, 1 + floor random 2];
        } else {
            if (_roll < 45) then {
                // Medical
                private _med = selectRandom A3E_Loot_Medical;
                _holder addItemCargoGlobal [_med, 1];
            } else {
                if (_roll < 65) then {
                    // General items
                    private _item = selectRandom A3E_Loot_Items;
                    if (isClass (configFile >> "CfgMagazines" >> _item)) then {
                        _holder addMagazineCargoGlobal [_item, 1 + floor random 2];
                    } else {
                        _holder addItemCargoGlobal [_item, 1];
                    };
                } else {
                    if (_roll < 78) then {
                        // Attachments
                        private _att = selectRandom A3E_Loot_Attachments;
                        _holder addItemCargoGlobal [_att, 1];
                    } else {
                        if (_roll < 88) then {
                            // Backpack
                            private _bp = selectRandom A3E_Loot_Backpacks;
                            _holder addBackpackCargoGlobal [_bp, 1];
                        } else {
                            // Clothing (vest/hat)
                            private _cloth = selectRandom A3E_Loot_Clothing;
                            _holder addItemCargoGlobal [_cloth, 1];
                        };
                    };
                };
            };
        };

        A3E_LootHolders pushBack [_holder, _building];
    };
};

// Main loop
[] spawn {
    while {true} do {
        private _players = call A3E_fnc_GetPlayers;

        if (count _players > 0) then {
            // Spawn loot near players
            {
                private _playerPos = getPos _x;
                private _nearBuildings = _playerPos nearObjects ["House", A3E_Loot_Radius];

                {
                    private _building = _x;
                    if !(_building getVariable ["A3E_Looted", false]) then {
                        private _positions = _building buildingPos -1;
                        if (count _positions > 0) then {
                            if (floor random 100 < A3E_Loot_Chance) then {
                                private _isMil = [_building] call A3E_fnc_isMilitaryBuilding;
                                [_building, _isMil] call A3E_fnc_spawnLootInBuilding;
                            };
                            _building setVariable ["A3E_Looted", true, true];
                        };
                    };
                } forEach _nearBuildings;
            } forEach _players;

            // Cleanup: despawn loot far from all players
            private _toRemove = [];
            {
                _x params ["_holder", "_building"];
                if (isNull _holder) then {
                    _toRemove pushBack _forEachIndex;
                } else {
                    private _holderPos = getPos _holder;
                    private _anyNear = false;
                    {
                        if (_x distance _holderPos < A3E_Loot_DespawnRadius) exitWith {
                            _anyNear = true;
                        };
                    } forEach _players;

                    if (!_anyNear) then {
                        deleteVehicle _holder;
                        _building setVariable ["A3E_Looted", false, true];
                        _toRemove pushBack _forEachIndex;
                    };
                };
            } forEach A3E_LootHolders;

            // Remove from array in reverse order
            reverse _toRemove;
            {A3E_LootHolders deleteAt _x} forEach _toRemove;
        };

        sleep A3E_Loot_ScanInterval;
    };
};
