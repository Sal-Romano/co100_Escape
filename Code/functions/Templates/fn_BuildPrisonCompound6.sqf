// Prison Compound: BLUFOR bunker complex - extensive H-barriers and sandbag rings
// Source: ZEC/CfgGroups/Empty/Military/FortLarge/BunkerSystem_BLU_F
// Objects: 111, Size: 94x36m, Radius: 48m
// Auto-generated from ZEC/ZECCUP composition data

private ["_obj","_pos"];
params ["_center","_rotation","_backpack"];

// Cleanup terrain in a radius matching this compound
if (isServer) then {
    [_center, 58] call a3e_fnc_cleanupTerrain;

    // Position backpack near center
    _pos = [_center, _center vectorAdd [random 2.0 - 1, random 2.0 - 1, 0], _rotation] call A3E_fnc_rotatePosition;
    _backpack setDir ((getDir _backpack) + _rotation);
    _backpack setPosATL _pos;

    // Default gate (no gate in source composition)
    _pos = [_center, _center vectorAdd [38.7, 0, 0], _rotation] call A3E_fnc_rotatePosition;
    _obj = "Land_City_Gate_F" createVehicle _pos;
    _obj setDir ((getDir _obj) + _rotation);
    _obj setPosATL _pos;
    A3E_PrisonGateObject = _obj;

    // Loudspeaker
    _pos = [_center, _center vectorAdd [0, 14.5, 0], _rotation] call A3E_fnc_rotatePosition;
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

_pos = [_center, _center vectorAdd [-46.249901, 3.625, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "B_HMG_01_high_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-46.374901, 3.4304199, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Small_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-48.375, 1.25757, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-46.380299, -2.6196301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-48.2019, 0.203125, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 60.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.8763, -13.4961, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-22.7918, -24.716801, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-25.667601, -18.1602, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-37.237202, -14.4114, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 165.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.167601, -16.1602, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-29.214701, -13.1677, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.772, -15.6113, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Flag_NATO_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-28.136, -11.8257, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pipes_small_F" createVehicleLocal _pos;
_obj setDir (_rotation + 178.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-20.621099, -13.1406, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-23.872499, -15.0125, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_closed_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-41.260502, -15.1235, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-29.495701, -3.2985799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Large_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-23.749901, -16.7505, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_open_empty_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-33.5, -8.4924297, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-26.143101, -13.1299, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_LampHalogen_F" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-23.875, -21.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_WaterBarrel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-23.670601, -5.7490201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-43.3741, -14.5793, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-45.693001, -10.0525, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-22.507999, -3.5815401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 150.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-43.831402, -11.8669, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-21.148001, -7.6359901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.886, -7.8520498, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-14.477, -6.1140099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.3512, -8.0878897, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 30.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-22.261, -13.3521, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-38.727001, -13.614, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-41.105499, -5.85815, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Tower_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-30.750099, -12.0015, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallet_vertical_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.7289, -15.6248, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_TreeBin_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-19.375, -2.0002401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "B_HMG_01_high_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-19.624901, -2.1945801, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Small_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-44.125, 1.49243, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.633, -0.83154303, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 150.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-16.8267, -3.07935, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-38.738499, 0.57348597, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 15.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-40.968399, 2.1958001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-34.636002, 0.64794898, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-44.0214, -0.178955, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-27.8962, 2.18262, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Razorwire_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [6.4071999, -12.0376, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [18.623699, -7.7460899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.9962, -7.6262202, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [14.2487, -15.2461, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [3.37115, -2.12622, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [2.37115, -21.2512, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [6.2486901, -11.9961, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-11.3763, -9.3710899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [2.3324001, -16.9102, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [5.1603098, -7.6677198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-2.9175999, -12.1602, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-7.9647198, -13.2927, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-0.62109399, -8.3906298, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.7539, -7.7656298, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [2.2318699, -13.4951, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_LampHalogen_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.3775, -11.2605, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallet_MilBoxes_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [8.4770203, -4.0109901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-14.445, -3.93555, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 345.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.9831495, -4.1445298, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Tower_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.6418, -12.8945, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Tower_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.8981895, -24.080099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_HQ_V1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.035299, -3.0427201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.8138103, -0.523193, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_End_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-1.9895, -3.3764601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [15.6293, 5.8264198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Large_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-5.2877202, -1.07178, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Garbage_square5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [3.4927399, -1.24805, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [7.5725098, -0.182129, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 165.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [1.57251, -0.93212903, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 165.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [5.5524902, -1.81787, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 345.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0.079406701, -2.9990201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.9475, -1.19287, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 345.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.114, 0.52294898, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-3.38605, -3.2270501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [17.3538, 11.3076, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Razorwire_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-7.3961802, 1.43262, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Razorwire_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [27.928699, -4.8217802, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 300.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.285299, -7.7927198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [24.874901, -6.375, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.500099, -6.1252398, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [37.285301, -0.54272503, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [45.301998, 3.8515601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_End_F" createVehicleLocal _pos;
_obj setDir (_rotation + 300.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [40.8983, 0.92700201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_End_F" createVehicleLocal _pos;
_obj setDir (_rotation + 210.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [43.500099, 10.75, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "B_HMG_01_high_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.625, 7.3747602, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "B_HMG_01_high_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.500099, 7.1804199, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Small_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [43.250099, 10.6804, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Small_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [38.4132, 10.4448, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 210.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [35.795601, 10.249, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [20.5483, -2.57935, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.742001, -0.331543, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 150.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [42.1306, 0.78271502, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [24.4275, -0.69287097, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 345.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [44.637001, 1.81226, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 300.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.804001, 0.72851598, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [24.101999, 4.8640099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.351999, 0.73901403, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [32.863998, -0.97705102, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [41.113998, 8.7729502, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [38.988998, 3.8979499, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [41.477001, 8.4890099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [45.477001, 8.4890099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [45.286999, 5.4760699, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 120.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [32.228802, 10.0576, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Razorwire_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [31.894501, 6.01685, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Tower_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [37.124901, 0.62353498, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallet_vertical_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

// === PRISON CELL - razor wire enclosure at center ===

_pos = [_center, _center vectorAdd [3, 0, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Razorwire_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-3, 0, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Razorwire_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0, 3, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Razorwire_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0, -3, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Razorwire_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [3.5, 3.5, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PortableLight_double_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-1, 0, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ChairWood_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0.5, 0, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_WoodenTable_small_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;
