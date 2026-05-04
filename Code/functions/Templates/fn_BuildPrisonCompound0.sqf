// Prison Compound: OPFOR HQ - HBarrier walls, concrete barriers, cargo buildings
// Source: ZEC/CfgGroups/Empty/Military/HQLarge/Headquarters_OPF_F
// Objects: 249, Size: 93x95m, Radius: 52m
// Auto-generated from ZEC/ZECCUP composition data
// NOTE: 10 objects pruned from center (within 10.0m) for cell clearance

private ["_obj","_pos"];
params ["_center","_rotation","_backpack"];

// Cleanup terrain in a radius matching this compound
if (isServer) then {
    [_center, 62] call a3e_fnc_cleanupTerrain;

    // Position backpack near center
    _pos = [_center, _center vectorAdd [random 2.0 - 1, random 2.0 - 1, 0], _rotation] call A3E_fnc_rotatePosition;
    _backpack setDir ((getDir _backpack) + _rotation);
    _backpack setPosATL _pos;

    // Default gate (no gate in source composition)
    _pos = [_center, _center vectorAdd [41.9, 0, 0], _rotation] call A3E_fnc_rotatePosition;
    _obj = "Land_City_Gate_F" createVehicle _pos;
    _obj setDir ((getDir _obj) + _rotation);
    _obj setPosATL _pos;
    A3E_PrisonGateObject = _obj;

    // Loudspeaker
    _pos = [_center, _center vectorAdd [0, 15.7, 0], _rotation] call A3E_fnc_rotatePosition;
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

_pos = [_center, _center vectorAdd [-42.3867, -30.6248, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_8m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 60.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-42.680801, -26.4221, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 330.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-20.83, -46.529301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "CamoNet_OPFOR_open_F" createVehicleLocal _pos;
_obj setDir (_rotation + 120.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-23.760201, -50.3806, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_8m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 30.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.7556, -47.9897, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_8m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 120.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-17.866301, -51.637901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 300.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-20.237, -52.366501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 210.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-26.116301, -46.887901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 300.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-38.141899, -28.768801, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "CamoNet_OPFOR_open_F" createVehicleLocal _pos;
_obj setDir (_rotation + 150.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-14.3867, -22.496799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "CamoNet_OPFOR_open_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-25.8797, -15.1165, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_Patrol_V3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-37.751301, -29.034401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Large_F" createVehicleLocal _pos;
_obj setDir (_rotation + 60.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-20.541901, -46.747101, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Large_F" createVehicleLocal _pos;
_obj setDir (_rotation + 30.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-27.410299, -15.0112, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-32.910301, -21.0112, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.9867201, -21.013201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_LampHalogen_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-26.9984, -35.998798, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall_corridor_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-11.9981, -19.2493, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall_corridor_F" createVehicleLocal _pos;
_obj setDir (_rotation + 150.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-16.506201, -18.5051, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall_corner_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-19.2449, -22.0063, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall_corner_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-13.242, -28.2488, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall_corner_F" createVehicleLocal _pos;
_obj setDir (_rotation + 165.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.7502, -26.2498, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 120.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-21.2498, -37.5, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.75, -42.749802, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-11.2502, -24.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 60.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-28.7498, -30.2498, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 210.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.3929, -27.142799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Small_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.3486, -31.513901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_cargo_addon01_V2_F" createVehicleLocal _pos;
_obj setDir (_rotation + 345.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-34.259102, -32.5564, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_8m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 150.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-23.8806, -42.9897, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_8m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 120.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.75, -27.25, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "O_HMG_01_high_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-16.879999, -28.7351, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-19.879999, -25.6101, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-19.764799, -28.5051, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-37.911098, -34.660599, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 330.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-40.3283, -34.105999, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-11.8673, -31.877001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncBarrier_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.882, -32.121101, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncBarrier_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-14.375, -31.4998, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-13.5001, -31.5, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 360.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-14.0001, -32.25, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 30.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.5001, -31.75, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BarrelSand_F" createVehicleLocal _pos;
_obj setDir (_rotation + 360.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-38.795502, -24.163799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_8m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 150.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-24.868401, -2.6096201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "O_Truck_03_transport_F" createVehicleLocal _pos;
_obj setDir (_rotation + 330.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-21.7491, 15.998, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "O_MRAP_02_hmg_F" createVehicleLocal _pos;
_obj setDir (_rotation + 285.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-24.249599, 11.2498, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "O_MRAP_02_F" createVehicleLocal _pos;
_obj setDir (_rotation + 300.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.0224, 15.7556, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-21.2605, -10.7466, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 345.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-27.5418, -8.2167997, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-32.535999, -1.86426, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.9979601, -14.0002, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall_corridor_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-11.748, 6.4997602, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall_corridor_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-11.5916, 2.55444, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_cargo_addon01_V2_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-11.7379, -1.6511199, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_cargo_addon01_V2_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.0907, -7.5014601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Tank_rust_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-11.665, 2.36011, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbageBags_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-16.6222, 0.74902302, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "O_Quadbike_01_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-32.0481, 0.171875, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-34.6731, -1.07813, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-35.453201, 2.0481, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 330.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-11.375, -1.875, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CratesWooden_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-36.001999, 1.49268, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 15.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-13.375, 9.625, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallets_stack_F" createVehicleLocal _pos;
_obj setDir (_rotation + 195.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.382999, -5.1252398, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncBarrier_F" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.0041, 12.0068, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncBarrier_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.8827, 0.25195301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncBarrier_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.007401, 6.5019498, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncBarrier_stripes_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-14.0323, 2.4733901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Garbage_square5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-13.3162, 37.246101, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "CamoNet_OPFOR_open_F" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-13.1012, 38.1077, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Large_F" createVehicleLocal _pos;
_obj setDir (_rotation + 165.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.2534, 22.7395, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-22.5868, 29.8892, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 165.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-28.8417, 25.9167, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.9987, 29.991899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall_corner_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-17.3412, 35.660599, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_8m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-28.6036, 23.804001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-30.9786, 25.679001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-30.8211, 21.3535, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-17.2672, 41.924099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 345.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.428499, 39.7327, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-32.875, 23.492399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-14.3751, 32.375, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BarrelTrash_grey_F" createVehicleLocal _pos;
_obj setDir (_rotation + 360.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-13.3718, 43.0112, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_8m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 165.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.75, -48.75, 17.799999], _rotation] call A3E_fnc_rotatePosition;
_obj = "O_HMG_01_high_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.822, -42.145, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_Tower_V3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [3.49472, -27.5098, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Metal_Shed_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [2.47488, -45.416, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.666, -14.5251, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [18.974899, -44.916, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.7249, -45.166, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-5.34308, -44.749298, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 195.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0.224884, -23.666, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.74966, -22.252001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall_corridor_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.5008, -21.741899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall_corner_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [6.25003, -22.2498, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.9879, -22.3489, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_cargo_addon01_V2_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [14.744, -38.259998, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_8m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.3283, -22.7019, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.7513, -16.378901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.9231, -28.9534, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 195.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [7.33499, -29.1399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbageBags_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [8.7099895, -30.5149, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbageBags_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [6.8117399, -29.320601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbageBags_F" createVehicleLocal _pos;
_obj setDir (_rotation + 120.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [5.83289, -31.9785, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Garbage_square5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.155, -30.4189, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Garbage_square5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.1113901, -31.393101, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Garbage_square5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.7511001, -28.188, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Garbage_square5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.9851103, -28.6113, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbageWashingMachine_F" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-1.5, -14.5, 3.1500001], _rotation] call A3E_fnc_rotatePosition;
_obj = "O_GMG_01_high_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [4.0230098, -43.238998, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [8.7431002, -38.263901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [18.514, -40.381802, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.375, -25.5, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_FieldToilet_F" createVehicleLocal _pos;
_obj setDir (_rotation + 300.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.8159, -28.3228, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_FieldToilet_F" createVehicleLocal _pos;
_obj setDir (_rotation + 328.6);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-1.875, -17.125, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_WaterTank_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-2.5, -26.25, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CratesWooden_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-0.125, -21.125, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CratesWooden_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.7394, -21.877399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallet_MilBoxes_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.7503, -42.124802, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_open_empty_F" createVehicleLocal _pos;
_obj setDir (_rotation + 60.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.7475, -23.362499, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_closed_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [14.3433, -23.401899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PalletTrolley_01_khaki_F" createVehicleLocal _pos;
_obj setDir (_rotation + 181.2);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [20.624901, -24.75, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BarrelTrash_grey_F" createVehicleLocal _pos;
_obj setDir (_rotation + 360.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [6.51401, -40.006802, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0.976776, -10.9551, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_HQ_V3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.7715, -12.25, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_House_V3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.666, -6.2751498, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.416, 1.9748501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [2.52512, 13.166, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.41605, -8.2248497, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.7662697, -11.2593, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_LampHalogen_F" createVehicleLocal _pos;
_obj setDir (_rotation + 60.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.7419395, 12.2507, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall_corner_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.2507601, 11.2419, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall_corner_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-3.75003, 11.7498, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.2498, 8.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.75, -4.7490201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "ContainmentArea_02_sand_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.750401, -4.62817, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "StorageBladder_02_water_sand_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-1.50385, 10.8738, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [7.58499, 9.2351103, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbageBags_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [2.7746601, 10.4495, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Garbage_square5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [8.6141701, 7.3579102, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbageWashingMachine_F" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [5.39993, 10.4634, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbagePallet_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.0, 16.875, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "WaterPump_01_sand_F" createVehicleLocal _pos;
_obj setDir (_rotation + 345.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.1019897, 16.364, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0.27300999, 14.636, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [15.9275, 10.9321, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 345.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.1877, 7.13696, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 210.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.698, 10.2461, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Box_East_AmmoVeh_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [18.1241, 5.4772902, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallet_MilBoxes_F" createVehicleLocal _pos;
_obj setDir (_rotation + 165.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.5, 14.25, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "CargoNet_01_barrels_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.0, 15.9998, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallets_stack_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.8855, 7.2485399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [17.129101, 12.6348, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [17.7565, 14.1333, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 120.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [18.631399, 2.3664601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.490299, 0.62914997, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 15.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [17.126301, 5.2395, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [20.2402, 16.496099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 330.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.9916, 1.25659, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 30.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.7605, 11.2485, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [17.629, 3.7402301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [18.866501, 15.4937, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.7395, 16.9988, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 345.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.7515, 10.3855, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.8737, 7.8855, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.7485, 8.9895, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.2497, 9.1252403, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "FlexibleTank_01_forest_F" createVehicleLocal _pos;
_obj setDir (_rotation + 330.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.8751, 12.625, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 210.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.9999, 13.375, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 360.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [18.874201, 3.00049, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HelicopterWheels_01_assembled_F" createVehicleLocal _pos;
_obj setDir (_rotation + 120.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [18.631201, 3.5742199, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HelicopterWheels_01_disassembled_F" createVehicleLocal _pos;
_obj setDir (_rotation + 165.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0.428009, 32.895, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_Tower_V3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [4.99997, 17.7715, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_House_V3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-4.75003, 17.7715, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_House_V3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [2.77512, 35.916, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.8431, 35.499298, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 15.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-5.0105, 34.753399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 345.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.6854, 32.882599, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_cargo_addon02_V2_F" createVehicleLocal _pos;
_obj setDir (_rotation + 15.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.9993, 32.498001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall_corridor_F" createVehicleLocal _pos;
_obj setDir (_rotation + 285.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-1.49396, 29.01, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_8m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.2875, 26.2173, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Garbage_square5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [18.6492, 27.631599, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Garbage_square5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.3999, 28.7134, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbagePallet_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [3.74997, 39.5, 17.799999], _rotation] call A3E_fnc_rotatePosition;
_obj = "O_HMG_01_high_F" createVehicleLocal _pos;
_obj setDir (_rotation + 360.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.1019897, 19.364, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [2.36392, 20.5229, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-0.761078, 20.5229, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0.27300999, 17.886, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.2389202, 20.5229, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [6.73599, 30.7568, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-5.26401, 31.1318, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [15.5103, 26.6367, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 195.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [4.5068998, 29.013901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.2360497, 42.2075, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.375, 32.5, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CratesWooden_F" createVehicleLocal _pos;
_obj setDir (_rotation + 285.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-1.49081, 22.125, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_open_full_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-0.125, 22.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Sacks_heap_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.875, 32.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_WaterBarrel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.2499, 31.375, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BarrelTrash_grey_F" createVehicleLocal _pos;
_obj setDir (_rotation + 360.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.8750901, 19.75, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BarrelSand_F" createVehicleLocal _pos;
_obj setDir (_rotation + 360.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.0604601, 37.870399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_8m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.2036, -36.325401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_Patrol_V3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 285.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.695101, -20.753201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_House_V3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [29.499201, -28.843, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [27.499201, -36.842999, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [31.499201, -20.843, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [24.7528, -43.492401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall_corner_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.300301, -25.5457, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbagePallet_F" createVehicleLocal _pos;
_obj setDir (_rotation + 285.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [27.2069, -17.0161, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 195.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.4839, -18.082001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 285.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [27.125, -24.625, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_WaterBarrel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.7623, -26.762501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Garbage_square5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [45.348801, 8.3874502, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "CamoNet_OPFOR_open_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.25, 9.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HelipadCircle_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [45.362, 8.7656298, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Large_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [39.249199, 1.90698, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [39.253399, 16.5105, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [36.497299, -5.4218798, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 120.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [33.499199, -12.843, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [31.7318, -10.7549, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_LampHalogen_F" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.564301, -10.2407, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo20_grey_F" createVehicleLocal _pos;
_obj setDir (_rotation + 76.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [44.062099, 13.4807, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_8m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [50.134998, 7.7438998, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_8m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [31.5, -7.125, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo10_sand_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [50.092999, 11.7878, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [48.276901, 13.4768, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [48.2883, 3.9570301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_4m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [28.5201, -13.2085, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_JunkPile_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.4991, -0.045654301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [34.1339, -3.2478001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_open_full_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.1651, 17.882299, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_End_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.3748, -0.125, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BarrelSand_F" createVehicleLocal _pos;
_obj setDir (_rotation + 360.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [43.794498, 3.94434, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Concrete_SmallWall_8m_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.1355, 8.5322304, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "O_Heli_Attack_02_F" createVehicleLocal _pos;
_obj setDir (_rotation + 195.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [35.5, 1.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo10_brick_red_F" createVehicleLocal _pos;
_obj setDir (_rotation + 15.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [36.125, 3.5, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo10_cyan_F" createVehicleLocal _pos;
_obj setDir (_rotation + 15.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.575399, 29.7036, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_Patrol_V3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 195.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [35.7724, 23.7444, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 60.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.5931, 31.4993, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 15.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [30.171801, 28.747299, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 30.0);
_obj setPosATL _pos;

// === PRISON CELL - random building with door at center ===
private _cellTypes = missionNamespace getVariable ["A3E_PrisonCellBuildings", [
    "Land_Cargo_House_V1_F",
    "Land_Cargo_House_V2_F",
    "Land_i_Shed_Ind_F"
]];
_pos = [_center, _center vectorAdd [0, 0, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = (selectRandom _cellTypes) createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;
