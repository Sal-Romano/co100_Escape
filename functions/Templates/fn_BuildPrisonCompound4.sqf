// Prison Compound: Guerrilla base - battered walls, czech hedgehogs, gritty
// Source: ZEC/CfgGroups/Empty/Guerrilla/HQLarge/MilitaryBase_BLU_G_F
// Objects: 177, Size: 96x94m, Radius: 51m
// Auto-generated from ZEC/ZECCUP composition data
// NOTE: 3 objects pruned from center (within 10.0m) for cell clearance

private ["_obj","_pos"];
params ["_center","_rotation","_backpack"];

// Cleanup terrain in a radius matching this compound
if (isServer) then {
    [_center, 60] call a3e_fnc_cleanupTerrain;

    // Position backpack near center
    _pos = [_center, _center vectorAdd [random 2.0 - 1, random 2.0 - 1, 0], _rotation] call A3E_fnc_rotatePosition;
    _backpack setDir ((getDir _backpack) + _rotation);
    _backpack setPosATL _pos;

    // Default gate (no gate in source composition)
    _pos = [_center, _center vectorAdd [40.6, 0, 0], _rotation] call A3E_fnc_rotatePosition;
    _obj = "Land_City_Gate_F" createVehicle _pos;
    _obj setDir ((getDir _obj) + _rotation);
    _obj setPosATL _pos;
    A3E_PrisonGateObject = _obj;

    // Loudspeaker
    _pos = [_center, _center vectorAdd [0, 15.2, 0], _rotation] call A3E_fnc_rotatePosition;
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

_pos = [_center, _center vectorAdd [-50.75, 2.75, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 210.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-49.25, 13.375, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 30.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.5397, -43.732899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.4865, -31.6411, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_tall_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-30.865499, -13.2061, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_debris_F" createVehicleLocal _pos;
_obj setDir (_rotation + 120.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.494801, -19.992201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_corner_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-19.104401, -23.5112, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-21.989, -20.7295, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-19.104401, -27.5112, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-30.604401, -19.0112, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-37.140598, -13.6289, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-37.015598, -10.9424, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 119.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-36.733398, -16.389601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 44.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-25.158701, -33.0327, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-30.5637, -15.1528, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_damaged_left_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-30.5389, -11.2246, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_damaged_right_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-26.465099, -22.6294, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_small_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-16.514, -20.0317, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CratesPlastic_F" createVehicleLocal _pos;
_obj setDir (_rotation + 300.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.7211, -20.479, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallets_F" createVehicleLocal _pos;
_obj setDir (_rotation + 195.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-30.632799, 23.7554, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_corner_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-30.479401, -7.38623, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-30.604401, 20.2388, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-30.604401, 12.4888, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-30.479401, -3.51123, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-30.479401, 0.36377001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-30.604401, 16.3638, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-39.875, 20.875, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-40.625, -6.5, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-36.23, 6.1332998, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.780701, -1.09131, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_u_Barracks_V2_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.2635, 39.516102, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_tall_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-23.617201, 23.1196, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_corner_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-24.257799, 37.880402, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_corner_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-20.761, 37.8545, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-27.136, 23.7295, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-24.229401, 34.3638, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-24.229401, 26.6138, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-24.229401, 30.4888, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-17.0, 23.125, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo10_grey_F" createVehicleLocal _pos;
_obj setDir (_rotation + 210.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-22.7278, 48.199699, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 120.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-26.3668, 42.213902, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 330.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [15.6245, -18.25, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallets_stack_F" createVehicleLocal _pos;
_obj setDir (_rotation + 15.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.0371, -17.6343, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 285.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.8121, -17.475599, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-7.1328101, -22.9946, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_corner_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.4921899, -30.0054, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_corner_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-14.3802, -16.632799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_corner_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [8.0110502, -25.783701, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.9889498, -29.9795, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.886, -23.6045, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.864, -16.6045, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0.26104701, -25.783701, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [4.1360502, -25.783701, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.5206299, -26.4888, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [15.761, -23.6045, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-3.61395, -25.783701, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.7842398, -37.186501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 120.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-7.5812402, -9.6225595, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_IronPipes_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0.64294398, -18.415001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo40_white_F" createVehicleLocal _pos;
_obj setDir (_rotation + 359.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.9918799, -16.5923, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_damaged_right_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0.50067103, -14.6118, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo20_blue_F" createVehicleLocal _pos;
_obj setDir (_rotation + 150.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [15.3616, -20.4995, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Sacks_goods_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [14.623, -22.132799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CratesShabby_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [7.1143198, -18.665501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallets_F" createVehicleLocal _pos;
_obj setDir (_rotation + 345.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.1249, -19.3535, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_House_V2_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [8.37885, -13.9985, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_WheelCart_F" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.875, -10.6255, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_empty_F" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [14.1245, -16.875, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BarrelTrash_grey_F" createVehicleLocal _pos;
_obj setDir (_rotation + 330.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.0841703, 8.4213896, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CampingChair_V2_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-7.8940401, 9.7758799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CampingChair_V2_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-7.9955401, 12.8984, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CampingChair_V2_F" createVehicleLocal _pos;
_obj setDir (_rotation + 150.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.1903095, 14.5952, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CampingChair_V2_F" createVehicleLocal _pos;
_obj setDir (_rotation + 15.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [1.0, 19.75, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo20_light_green_F" createVehicleLocal _pos;
_obj setDir (_rotation + 300.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.5, 9.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "CargoNet_01_barrels_F" createVehicleLocal _pos;
_obj setDir (_rotation + 120.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [5.8198199, 18.132299, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_debris_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.6211, 11.3584, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_closed_F" createVehicleLocal _pos;
_obj setDir (_rotation + 60.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.5634804, 9.5122099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_closed_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.4844, 2.4960899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.0165997, 5.5146499, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 224.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.7344, 5.18262, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 119.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.8916, -0.26464799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 44.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.5883799, 13.6846, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_WoodenTable_large_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.5, 9.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_WoodenTable_large_F" createVehicleLocal _pos;
_obj setDir (_rotation + 345.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [6.50739, 20.961399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_damaged_left_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.2825, 20.991699, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_damaged_right_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.0, 3.5, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CratesWooden_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.75, 16.75, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ToiletBox_F" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.5, 15.25, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ToiletBox_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-11.0, 13.75, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_empty_F" createVehicleLocal _pos;
_obj setDir (_rotation + 285.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.6592, 10.3369, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_empty_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.9779701, 10.8613, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Flag_FIA_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.25, 4.8745098, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "I_G_Mortar_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [15.6251, 1.49951, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "I_G_Mortar_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [15.9865, 32.891102, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_tall_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.2552, 27.867201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_corner_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [7.5051899, 28.507799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_corner_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.7610502, 28.6045, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.2706, 28.7388, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [3.98895, 28.4795, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-11.6456, 35.3862, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0.113953, 28.4795, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.2706, 24.8638, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-11.6456, 31.3862, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [7.4793701, 25.0112, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.1210899, 39.265598, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [6.3604698, 38.858398, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 134.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.8075, 39.140598, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 209.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.7899199, 44.190399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 210.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-14.103, 49.805199, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.3115, 41.326698, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-0.080627397, 23.017599, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_IronPipes_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-4.2848501, 30.5044, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_small_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [2.23578, 36.794399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "I_G_Van_01_transport_F" createVehicleLocal _pos;
_obj setDir (_rotation + 330.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-14.125, 24.875, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo10_orange_F" createVehicleLocal _pos;
_obj setDir (_rotation + 195.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [6.0141001, 25.523399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Loudspeakers_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.8873, -10.5986, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "CamoNet_BLUFOR_open_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [24.9175, -23.273399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_tall_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.387501, -15.373, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_closed_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.4349, -15.3149, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_closed_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.636, -23.6045, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.104401, -17.3638, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [31.5156, -11.2461, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [31.3906, -13.9326, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 299.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [33.612499, -32.290001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.5259, -33.970699, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 210.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [35.979198, -20.5186, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.0637, -9.4721699, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_damaged_left_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.092501, -13.4917, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_damaged_right_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.8736, -13.6333, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CratesShabby_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [18.503401, -12.6758, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Garbage_square5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [17.4785, -10.1685, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_empty_F" createVehicleLocal _pos;
_obj setDir (_rotation + 150.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.75, 22.8745, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallets_stack_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [24.761499, -4.6411099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallets_stack_F" createVehicleLocal _pos;
_obj setDir (_rotation + 273.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.7404, 18.366699, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_closed_F" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.987499, 20.372601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_closed_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.104401, 2.13623, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.104401, -5.61377, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.104401, -1.73877, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.104401, 14.7612, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.104401, 22.5112, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.104401, 18.6362, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.8906, 3.1289101, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.4834, 5.8896499, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 224.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [31.1084, -8.4853497, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 224.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.7656, 0.44238299, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 299.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [37.565399, 22.830601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 330.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [44.742599, 13.4839, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [34.355, -4.3164101, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [43.931, 1.6601599, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 345.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.895, -8.6215801, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_WaterBarrel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.5, 12.6245, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_WaterBarrel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.5014, 12.6328, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CratesShabby_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [17.5, -8.0004902, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CratesWooden_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.75, 12.6245, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CratesWooden_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.249001, 21.878401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CratesPlastic_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.7244, -7.6948199, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CratesPlastic_F" createVehicleLocal _pos;
_obj setDir (_rotation + 165.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [31.605, 8.4917002, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Bunker_01_big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.990101, 13.5845, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallets_F" createVehicleLocal _pos;
_obj setDir (_rotation + 345.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [20.6173, -6.8852501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallets_F" createVehicleLocal _pos;
_obj setDir (_rotation + 60.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.199499, 18.149401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "CamoNet_BLUFOR_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [20.877001, 16.811001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Garbage_square5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.1045, 20.771, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Garbage_square5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [18.855, -6.1772499, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Garbage_square5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.2148, 21.7222, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_empty_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.75, 21.1245, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_empty_F" createVehicleLocal _pos;
_obj setDir (_rotation + 60.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [18.0, 12.6245, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_empty_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [20.4767, -5.34863, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallet_vertical_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.119801, 25.242201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_corner_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.130199, 26.007799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_corner_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.614, 25.9795, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.729401, 28.7612, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_battered_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [20.505899, 39.855499, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.944799, 32.808601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CzechHedgehog_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [18.75, 24.6245, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_empty_F" createVehicleLocal _pos;
_obj setDir (_rotation + 195.0);
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
