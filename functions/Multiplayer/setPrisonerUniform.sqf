// setPrisonerUniform.sqf
// Client-side. Gives the player a prisoner uniform without changing faction.
// Called via: "functions\Multiplayer\setPrisonerUniform.sqf" remoteExec ["execVM", _player];

private _uniforms = ["mgsr_robe_olive_dirty", "mgsr_robe_olive_muddy"];
private _pick = selectRandom _uniforms;

// Remove current uniform first
removeUniform player;

// Try addUniform first (doesn't change faction but may fail for cross-faction)
player addUniform _pick;

// If addUniform failed (empty uniform slot), force it and fix faction
if (uniform player == "") then {
    private _grp = group player;
    player forceAddUniform _pick;
    // forceAddUniform changes faction model - rejoin to fix
    [player] joinSilent _grp;
};

diag_log format ["setPrisonerUniform: uniform=%1 result=%2 side=%3", _pick, uniform player, side player];
