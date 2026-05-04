// Prison Compound: Guerrilla concrete bunker outpost - bunker blocks, hedgehogs
// Source: ZEC/CfgGroups/Empty/Guerrilla/OutpostsLarge/ConcreteBunker_BLU_G_F
// Objects: 153, Size: 76x79m, Radius: 43m
// Auto-generated from ZEC/ZECCUP composition data
// NOTE: 29 objects pruned from center (within 10.0m) for cell clearance

private ["_obj","_pos"];
params ["_center","_rotation","_backpack"];

// Cleanup terrain in a radius matching this compound
if (isServer) then {
    [_center, 52] call a3e_fnc_cleanupTerrain;

    // Position backpack near center
    _pos = [_center, _center vectorAdd [random 2.0 - 1, random 2.0 - 1, 0], _rotation] call A3E_fnc_rotatePosition;
    _backpack setDir ((getDir _backpack) + _rotation);
    _backpack setPosATL _pos;

    // Default gate (no gate in source composition)
    _pos = [_center, _center vectorAdd [34.2, 0, 0], _rotation] call A3E_fnc_rotatePosition;
    _obj = "Land_City_Gate_F" createVehicle _pos;
    _obj setDir ((getDir _obj) + _rotation);
    _obj setPosATL _pos;
    A3E_PrisonGateObject = _obj;

    // Loudspeaker
    _pos = [_center, _center vectorAdd [0, 12.8, 0], _rotation] call A3E_fnc_rotatePosition;
    _obj = "Land_Loudspeakers_F" createVehicle _pos;
    _obj setDir ((getDir _obj) + _rotation);
    _obj setPosATL _pos;
    A3E_PrisonLoudspeakerObject = _obj;
    publicVariable "A3E_PrisonLoudspeakerObject";
};

// === Structure objects (created on each client) ===

_pos = [_center, _center vectorAdd [4, 0, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ClutterCutter_large_F" createVehicleLocal _pos;
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-4, 0, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ClutterCutter_large_F" createVehicleLocal _pos;
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0, 4, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ClutterCutter_large_F" createVehicleLocal _pos;
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0, -4, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ClutterCutter_large_F" createVehicleLocal _pos;
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-31.997801, -13.7139, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-30.672001, -18.575199, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 300.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-26.508499, -7.7094698, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-25.8757, -11.0098, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-23.1472, -15.8682, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-27.1329, -4.31006, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-32.797001, 17.924801, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 345.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-30.297001, 22.299801, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-31.402, 2.43311, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-27.2579, 10.9385, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-24.797001, -2.8252001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Sacks_heap_F" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-24.363899, 19.856001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 300.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-27.001101, 14.4614, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 285.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-23.2868, 21.285601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.9931002, -39.493198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 345.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [2.80902, -41.9165, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 150.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-5.1785302, -41.332001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [7.8477802, -41.894001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-2.0387599, -24.0459, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "I_G_Offroad_01_armed_F" createVehicleLocal _pos;
_obj setDir (_rotation + 150.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.1640902, -17.580099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_open_full_F" createVehicleLocal _pos;
_obj setDir (_rotation + 300.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.9358501, -10.2188, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_debris_F" createVehicleLocal _pos;
_obj setDir (_rotation + 165.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [3.71591, -15.4316, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_damaged_center_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.8557701, -15.3887, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_damaged_left_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-5.7692299, -15.2637, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_damaged_left_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-1.91391, -15.2925, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_damaged_right_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.000601, -24.3818, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_small_F" createVehicleLocal _pos;
_obj setDir (_rotation + 60.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.6719999, -16.075199, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CratesWooden_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-21.6702, -18.939501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.8748, -31.377899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 210.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-0.36752301, -35.023899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.9219398, -15.5757, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_open_empty_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-13.6907, -29.512699, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [2.9841299, -35.267101, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 195.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-14.762, -28.0776, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [4.8365202, -21.5527, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "I_G_Offroad_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.8062, -9.7016602, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "I_G_Van_01_transport_F" createVehicleLocal _pos;
_obj setDir (_rotation + 195.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.5854, 2.23242, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pillow_grey_F" createVehicleLocal _pos;
_obj setDir (_rotation + 120.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.888, 1.10498, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Ground_sheet_folded_yellow_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-5.4461098, 11.9468, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_WoodenPlanks_01_messy_pine_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [6.71698, 13.9888, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_debris_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [2.1900899, 13.9063, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_damaged_center_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.3048, 13.9302, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_corner_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.2763, 10.4136, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.8080101, 13.9043, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-7.4219999, 8.6747999, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_WaterTank_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.6876, 1.6709, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.0721, 4.2695298, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 139.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.2803, -1.0898401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 44.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-2.94977, 13.8633, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_damaged_left_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.2645, 6.5415001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_damaged_right_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.1541, 25.5986, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_small_F" createVehicleLocal _pos;
_obj setDir (_rotation + 150.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-11.172, 10.1748, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CratesWooden_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.9138, 0.73925799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Ground_sheet_folded_blue_F" createVehicleLocal _pos;
_obj setDir (_rotation + 60.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-11.159, 0.73144501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Ground_sheet_folded_khaki_F" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.616, 2.6235399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Sleeping_bag_blue_folded_F" createVehicleLocal _pos;
_obj setDir (_rotation + 30.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.9344, 2.3691399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Sleeping_bag_brown_folded_F" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.422, 10.1748, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BarrelSand_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-7.7969699, 6.9247999, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BarrelSand_F" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-11.9984, 0.98535198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Sacks_heap_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-11.047, 8.1747999, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Sacks_heap_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.2030001, 25.174801, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Sacks_heap_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-5.66922, 10.7964, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_Patrol_V2_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-21.8496, 22.3599, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 330.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-1.6849999, 26.925301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 345.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-3.3327, 26.225599, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 330.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0.093078598, 27.1357, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.0469999, 35.924801, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 330.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-2.95789, 36.7393, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [6.8362398, 31.4048, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.7114, 29.268101, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 330.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.6399498, 30.7451, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 345.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [14.4576, -5.94238, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_open_full_F" createVehicleLocal _pos;
_obj setDir (_rotation + 210.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.1494, -9.54883, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Tank_rust_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.6952, -4.3198199, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_corner_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.7108, -4.9555702, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_corner_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.3358, -15.3306, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_corner_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.3073, -11.814, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.214001, -4.9296899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.3073, -7.8139601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.8141, -4.76367, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PortableLight_double_F" createVehicleLocal _pos;
_obj setDir (_rotation + 120.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [20.093599, -7.94629, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.686399, -5.1855502, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 224.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.968599, -10.6328, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 299.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [40.202999, -15.9502, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 345.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.836901, -11.7393, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wreck_Ural_F" createVehicleLocal _pos;
_obj setDir (_rotation + 210.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.7529, -5.2602501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CanisterFuel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 166.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [32.411701, -19.3472, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_small_F" createVehicleLocal _pos;
_obj setDir (_rotation + 300.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [14.203, -8.3252001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CratesWooden_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.1859, -32.7271, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 330.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.748, -33.390598, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 150.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.7473, -4.2802701, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Portable_generator_F" createVehicleLocal _pos;
_obj setDir (_rotation + 15.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [24.2027, -24.825701, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_open_empty_F" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [14.2034, -10.5752, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_open_empty_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.8911, -25.658701, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 150.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [38.532299, -6.3618202, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.5684, -34.930199, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 165.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [29.4028, -23.1572, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 120.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [28.3256, -24.586901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [27.961901, 10.478, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "I_G_Offroad_01_armed_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.7082, 13.6826, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_corner_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.682301, 2.4360399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.191999, 13.7793, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.682301, -1.43896, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.682301, 10.186, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.682301, 6.3110399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [35.702999, 24.674801, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 30.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [38.952999, 20.674801, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 195.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.1949, 13.7671, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_damaged_right_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [38.332298, 3.58447, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_small_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [28.3827, 21.617701, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 30.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [38.788898, -2.96387, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [15.3415, 27.2607, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [35.659199, 13.2061, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 60.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.8284, 24.924801, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_open_empty_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.6815, 8.6747999, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_House_V2_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.8065, 0.54980499, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_House_V2_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [37.164902, 10.1826, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.601601, 23.503901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [18.864799, 27.003901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 15.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [37.375301, 8.4042997, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_blocks_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.6, -3.71387, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Flag_FIA_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [29.077999, 29.174801, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [24.702999, 31.674801, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [42.702999, -11.5752, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

// === PRISON CELL - random building with door at center ===
private _cellTypes = missionNamespace getVariable ["A3E_PrisonCellBuildings", [
    "Land_Cargo_House_V1_F",
    "Land_Cargo_House_V2_F",
    "Land_Cargo_House_V3_F",
    "Land_i_Shed_Ind_F",
    "Land_Metal_Shed_F",
    "Land_SlumArea_01_F",
    "Land_Shed_Small_F"
]];
_pos = [_center, _center vectorAdd [0, 0, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = (selectRandom _cellTypes) createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;
// Fix sinking: raise building if its bounding box base is below ground
private _bb = boundingBoxReal _obj;
private _bottomZ = (_bb select 0) select 2;
if (_bottomZ < -0.1) then {
    _pos set [2, abs _bottomZ];
    _obj setPosATL _pos;
};
