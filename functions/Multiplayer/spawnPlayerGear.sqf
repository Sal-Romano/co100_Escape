// spawnPlayerGear.sqf
// Client-side. Sets uniform + weapon. Called via execVM.
// Params passed via missionNamespace variable (remoteExec can't pass args to execVM)

private _weaponData = player getVariable ["A3E_SpawnWeapon", []];
player setVariable ["A3E_SpawnWeapon", nil];

// Step 1: Strip EVERYTHING clean
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeBackpack player;
removeVest player;
removeHeadgear player;
removeGoggles player;
removeUniform player;

// Step 2: Add uniform - use the mgsr_robe that works on first spawn
// Try addUniform first. If it fails, the player is in underwear (still west).
player addUniform (selectRandom ["mgsr_robe_olive_dirty", "mgsr_robe_olive_muddy"]);

// Step 3: Verify we're still west. If not, fix it.
if (side player != west) then {
    diag_log format ["spawnPlayerGear: FACTION CHANGED to %1! Fixing...", side player];
    // Remove the problematic uniform
    removeUniform player;
    // Player stays in underwear but stays west
};

// Step 4: Add weapon + mags
if (count _weaponData > 0) then {
    _weaponData params ["_weapon", "_mag"];
    player addMagazine _mag;
    player addMagazine _mag;
    player addMagazine _mag;
    player addWeapon _weapon;
};

diag_log format ["spawnPlayerGear: uniform=%1 side=%2 weapon=%3", uniform player, side player, primaryWeapon player + handgunWeapon player];
