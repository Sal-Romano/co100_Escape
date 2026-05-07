// spawnPlayerGear.sqf
// Client-side. Sets uniform + weapon.
// Weapon data passed via player variable A3E_SpawnWeapon

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

// Step 2: Give a west-compatible basic uniform (NOT civilian class)
// Try the mgsr robes first with forceAddUniform, then check if side changed
removeUniform player;
private _robe = selectRandom ["mgsr_robe_olive_dirty", "mgsr_robe_olive_muddy"];
player forceAddUniform _robe;

// If side changed from the uniform, we need to fix it
// The player's GROUP is still west, but AI might treat us wrong
// Force all enemy groups to consider us an enemy
if (side player != west) then {
    // Player model changed to civilian - enemies won't auto-engage
    // Fix: explicitly make all nearby enemies aware of us after spawn protection ends
    [] spawn {
        // Wait for spawn protection to end
        waitUntil {sleep 1; !(player getVariable ["A3E_SpawnProtection", false])};
        sleep 2;
        // Make nearby enemies know we're hostile
        {
            if (side _x != west && !isPlayer _x && _x distance player < 300) then {
                _x reveal [player, 4];
            };
        } forEach allUnits;
    };
};

// Step 3: Add mags FIRST (need uniform container to exist)
// Then add weapon (addWeapon auto-loads a mag if available)
if (count _weaponData > 0) then {
    _weaponData params ["_weapon", "_mag"];
    player addMagazine _mag;
    player addMagazine _mag;
    player addMagazine _mag;
    player addWeapon _weapon;
};

diag_log format ["spawnPlayerGear: uniform=%1 side=%2 weapon=%3 mags=%4",
    uniform player, side player, currentWeapon player, count magazines player];
