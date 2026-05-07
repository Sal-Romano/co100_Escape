// spawnPlayerGear.sqf
// Client-side. Sets uniform + weapon.

private _weaponData = player getVariable ["A3E_SpawnWeapon", []];
player setVariable ["A3E_SpawnWeapon", nil];

// Step 1: Strip everything
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeBackpack player;
removeVest player;
removeHeadgear player;
removeGoggles player;
removeUniform player;

// Step 2: Reset to west model FIRST (undo any previous forceAddUniform damage)
// forceAddUniform with a west-compatible uniform resets the unit model to west
player forceAddUniform "CUP_U_B_USMC_FROG_WDL";
removeUniform player;

// Step 3: Now addUniform with the prisoner robe (won't change model since we just reset)
private _robe = selectRandom ["mgsr_robe_olive_dirty", "mgsr_robe_olive_muddy"];
player addUniform _robe;

// Step 4: If addUniform failed, use a west-compatible basic uniform as fallback
if (uniform player == "") then {
    player addUniform "U_BG_Guerrilla_6_1";
};
// If still empty, force the USMC one back on
if (uniform player == "") then {
    player forceAddUniform "CUP_U_B_USMC_FROG_WDL";
};

// Step 5: Add mags FIRST, then weapon
if (count _weaponData > 0) then {
    _weaponData params ["_weapon", "_mag"];
    player addMagazine _mag;
    player addMagazine _mag;
    player addMagazine _mag;
    player addWeapon _weapon;
};

diag_log format ["spawnPlayerGear: uniform=%1 side=%2 weapon=%3 mags=%4",
    uniform player, side player, currentWeapon player, count magazines player];
