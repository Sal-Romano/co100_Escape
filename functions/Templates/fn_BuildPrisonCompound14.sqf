// Prison Compound: Castle walls compound - medieval walls repurposed as prison
// Source: ZECCUP/CfgGroups/Empty/Civilian/GeneralLarge/Castle
// Objects: 31, Size: 100x77m, Radius: 55m
// Auto-generated from ZEC/ZECCUP composition data

private ["_obj","_pos"];
params ["_center","_rotation","_backpack"];

// Cleanup terrain in a radius matching this compound
if (isServer) then {
    [_center, 65] call a3e_fnc_cleanupTerrain;

    // Position backpack near center
    _pos = [_center, _center vectorAdd [random 2.0 - 1, random 2.0 - 1, 0], _rotation] call A3E_fnc_rotatePosition;
    _backpack setDir ((getDir _backpack) + _rotation);
    _backpack setPosATL _pos;

    // Gate (from composition)
    _pos = [_center, _center vectorAdd [-13.1807, 23.804001, 0.0], _rotation] call A3E_fnc_rotatePosition;
    _obj = "Land_A_castle_gate" createVehicle _pos;
    _obj setDir ((getDir _obj) + _rotation);
    _obj setPosATL _pos;
    A3E_PrisonGateObject = _obj;

    // Loudspeaker
    _pos = [_center, _center vectorAdd [0, 16.5, 0], _rotation] call A3E_fnc_rotatePosition;
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

_pos = [_center, _center vectorAdd [-55.062698, 7.2729502, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_bastion" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-47.0984, -13.6108, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_wall2_30" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-43.600101, -27.668501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_wall2_end_2" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-31.0581, -25.7148, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_wall2_corner_2" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-23.0525, -15.969, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_walls_10" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-26.376499, -5.6652799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_wall2_end" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-31.6763, 23.775101, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_wall1_20_turn" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-25.1919, 5.2148399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_wall2_corner_2" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-45.591301, -0.31689501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_wall2_corner" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-29.1035, -0.096679702, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_walls_end" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-40.802502, -0.21899401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_walls_10" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-13.7625, -20.5737, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_bergfrit" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.7329, -25.341999, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_wall1_20" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.0170898, -25.341999, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_wall1_20" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.46313, -13.5525, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_stairs_a" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.6499, 7.1684599, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_wall2_end_2" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [8.31567, 24.8447, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_wall1_end_2" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.7773, 9.02075, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_stairs_a" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-4.2104502, 5.9897499, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_walls_5_d" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.9016, 34.389198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_wall2_30" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [36.841999, -10.0171, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_wall1_20" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [24.667999, -24.917999, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_wall1_corner" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [24.469, -19.3025, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_walls_10" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.798599, 1.72144, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_bergfrit" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [45.062698, 10.7271, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_bastion" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [20.719, 10.6975, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_walls_10" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [20.403299, 18.8535, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_walls_end" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [35.841999, 37.482899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_wall1_20" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [34.658699, 48.834999, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_wall1_corner_2" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.5818, 49.3181, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_A_castle_wall1_end" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

// === DETENTION CELL (player spawns inside this) ===

_pos = [_center, _center vectorAdd [-4.8789101, -10.4844, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-7.9844398, -7.3710899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.12885, -0.876221, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [1.62372, -10.4961, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-7.6241498, -10.0793, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-4.75, -4.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CratesWooden_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-4.625, -1.875, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CratesWooden_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-0.74786401, -2.87256, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_IndFnc_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0.74749798, -7.2477999, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_IndFnc_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-0.74786401, -5.7941899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_IndFnc_Corner_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-5.75, -2.625, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Sacks_heap_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [1.0025001, 8.2375498, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_closed_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-0.76251203, 8.2475595, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_closed_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-2.63416, 8.25, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_open_full_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.0155602, 6.4960899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [1.49872, 9.8789101, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.12885, 4.6237798, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-4.2824101, 1.53223, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ChairWood_F" createVehicleLocal _pos;
_obj setDir (_rotation + 301.4);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-0.74786401, 0.127441, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_IndFnc_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-3.625, 1.375, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_WoodenTable_small_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-0.78338599, 1.62549, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_IndFnc_Pole_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-4.8789101, 10.0156, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-0.25, 7.1252398, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0.41632101, 7.0290499, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 300.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [5.1210899, -10.3594, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [8.25385, -5.2487798, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [7.8294101, -9.9990196, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [2.8645, -10.3735, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [5.12286, -5.75244, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_IndFnc_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [5.12286, -2.75244, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_IndFnc_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [2.2330899, -7.7614698, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_LampShabby_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [3.6691899, -7.2477999, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_IndFnc_Corner_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [8.2344398, -7.2539101, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [3.3710899, 10.0156, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [8.3594398, 6.7460899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [8.25385, 0.251221, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [5.12286, 0.247559, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_IndFnc_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-2.875, 1.75, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Net_Fence_Gate_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [3.0327101, 8.7487803, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PortableLight_double_F" createVehicleLocal _pos;
_obj setDir (_rotation + 15.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [2.4998801, 7.875, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BarrelSand_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;
