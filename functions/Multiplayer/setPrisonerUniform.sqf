// setPrisonerUniform.sqf
// Client-side. Gives the player a basic stripped-down look.
// The mgsr_robe uniforms are civilian-class and CANNOT be worn by
// west units without changing faction. Use west-compatible options.

// Remove current uniform
removeUniform player;

// Try CUP basic uniforms that are west-compatible
private _westUniforms = [
    "CUP_U_B_USArmy_TShirt",
    "CUP_U_B_FR_Scout",
    "CUP_U_B_FR_Scout2",
    "CUP_U_B_FR_Scout3",
    "U_BG_Guerrilla_6_1",
    "U_BG_Guerilla2_2",
    "U_BG_Guerilla2_3",
    "U_BG_Guerilla3_1",
    "U_I_G_Story_Protagonist_F"
];

// Try each until one works
{
    if (isClass (configFile >> "CfgWeapons" >> _x)) then {
        player addUniform _x;
        if (uniform player != "") exitWith {};
    };
} forEach _westUniforms;

diag_log format ["setPrisonerUniform: result=%1 side=%2", uniform player, side player];
