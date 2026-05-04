// Prison Compound: OPFOR bunker line - concrete walls, H-barriers, heavy fortification
// Source: ZEC/CfgGroups/Empty/Military/FortLarge/BunkerSystem_OPF_F
// Objects: 117, Size: 85x22m, Radius: 43m
// Auto-generated from ZEC/ZECCUP composition data
// NOTE: 17 objects pruned from center (within 10.0m) for cell clearance

private ["_obj","_pos"];
params ["_center","_rotation","_backpack"];

// Cleanup terrain in a radius matching this compound
if (isServer) then {
    [_center, 53] call a3e_fnc_cleanupTerrain;

    // Position backpack near center
    _pos = [_center, _center vectorAdd [random 2.0 - 1, random 2.0 - 1, 0], _rotation] call A3E_fnc_rotatePosition;
    _backpack setDir ((getDir _backpack) + _rotation);
    _backpack setPosATL _pos;

    // Default gate (no gate in source composition)
    _pos = [_center, _center vectorAdd [34.5, 0, 0], _rotation] call A3E_fnc_rotatePosition;
    _obj = "Land_City_Gate_F" createVehicle _pos;
    _obj setDir ((getDir _obj) + _rotation);
    _obj setPosATL _pos;
    A3E_PrisonGateObject = _obj;

    // Loudspeaker
    _pos = [_center, _center vectorAdd [0, 12.9, 0], _rotation] call A3E_fnc_rotatePosition;
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

_pos = [_center, _center vectorAdd [-36.443001, -5.4777799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 195.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-39.987598, 1.9011199, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "CamoNet_OPFOR_open_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-39.620701, 2.7014201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Large_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-42.227001, -4.6140099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-37.636101, -5.8520498, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-40.136101, -5.8520498, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-4.1248798, -12.375, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-26.626301, -4.6210899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-17.714701, -4.5427198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-17.4972, -6.25317, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_Patrol_V3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.8078003, -5.7251, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-20.616899, -11.772, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-14.9889, -6.3769498, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 195.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-25.2171, -11.3687, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-19.75, 8.375, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "O_HMG_01_high_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-19.8088, 3.2539101, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "CamoNet_OPFOR_open_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-22.126499, 1.8645, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.6145, 2.2485399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-31.495899, 2.0097699, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.9895, 2.2485399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-26.123501, 0.38549799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-27.3855, 2.8764601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-13.629, 2.8847699, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 60.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-31.748501, 0.38549799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-28.9895, 2.8735399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-13.4959, 1.38477, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-30.6145, 2.8735399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-21.998501, 4.7605, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-13.7485, -0.239502, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-26.248699, 2.1145, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-21.0, -0.125, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Sacks_heap_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-7.875, -7.625, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallets_stack_F" createVehicleLocal _pos;
_obj setDir (_rotation + 210.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-19.999901, 8.1804199, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Small_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-22.0, 6.0075698, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.8919, -1.13647, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_LampShabby_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.0114, 4.5515099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 195.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-28.898001, -1.13599, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-32.386101, -1.1020499, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-23.261101, -0.97705102, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.898, -0.88598597, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-17.685499, 6.3200698, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-14.5111, -0.60205102, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-22.023001, 1.11401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.75, -7.75, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CratesWooden_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.4069, -6.1052198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-27.9069, -5.4802198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-21.0198, -8.7817402, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-33.156898, -5.6052198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-25.3552, -7.9682598, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [5.9549899, -13.1482, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_HQ_V3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.8737, -4.2460899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [30.873699, -4.3710899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.785299, -4.5427198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.0028, -6.25317, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_Patrol_V3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [18.7283, -11.9543, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 60.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [24.511101, -6.3769498, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 195.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.7419, -5.7280302, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.75, 8.375, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "O_HMG_01_high_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.6912, 3.2539101, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "CamoNet_OPFOR_open_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.751499, -0.239502, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.8855, 2.2485399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.626301, 2.6145, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.6165, 3.49365, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [28.5105, 2.2485399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.004101, 1.38477, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.751499, 1.0105, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [15.6335, 5.63135, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.5105, 2.8735399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.3765, 0.38549799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.1145, 2.8764601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.2513, 2.1145, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.500099, 8.1804199, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Small_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.7565, 6.7536602, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [28.608101, -1.13647, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_LampShabby_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.113899, -0.60205102, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.814501, 6.1950698, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [28.601999, -0.88598597, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [17.476999, 1.11401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.602, -0.76098597, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.238899, -0.97705102, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [20.250099, -8.7407198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_open_full_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [27.649401, -5.87256, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 165.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.0931, -6.1052198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [18.4802, -8.7817402, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [18.625099, -0.5, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BarrelTrash_grey_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [37.243801, -5.3420401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 165.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [31.2481, -11.261, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 285.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [38.618801, -5.0920401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 165.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [30.9422, -5.2251, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [38.887402, 1.9011199, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "CamoNet_OPFOR_open_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [30.1145, 2.2514601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [31.376499, -0.239502, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [31.251301, 1.4895, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [39.379299, 2.9514201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Large_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [38.695, -4.0644498, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 165.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [41.863899, -4.1020498, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [43.102001, -2.0109899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [34.363899, -1.1020499, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [34.093102, -5.3552198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [31.3948, -7.8432598, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncWall4_F" createVehicleLocal _pos;
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
