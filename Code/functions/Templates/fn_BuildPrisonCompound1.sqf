// Prison Compound: BLUFOR HQ - Mil_WallBig concrete walls, fully enclosed
// Source: ZEC/CfgGroups/Empty/Military/HQLarge/Headquarters_BLU_F
// Objects: 190, Size: 66x70m, Radius: 43m
// Auto-generated from ZEC/ZECCUP composition data

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
    _pos = [_center, _center vectorAdd [34.7, 0, 0], _rotation] call A3E_fnc_rotatePosition;
    _obj = "Land_City_Gate_F" createVehicle _pos;
    _obj setDir ((getDir _obj) + _rotation);
    _obj setPosATL _pos;
    A3E_PrisonGateObject = _obj;

    // Loudspeaker
    _pos = [_center, _center vectorAdd [0, 13.0, 0], _rotation] call A3E_fnc_rotatePosition;
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

_pos = [_center, _center vectorAdd [-11.9794, -32.011002, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-22.479401, -21.511, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-14.989, -28.9792, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-22.479401, -25.511, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.989, -28.9792, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.4890099, -35.479198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-11.4948, -28.492201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.0052, -35.507801, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-22.505199, -29.007799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-21.746799, -23.247299, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_Patrol_V1_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-11.1837, -21.695299, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ConcretePipe_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-14.5968, -7.6689501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.9794, -11.011, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.0968, -5.1689501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-19.011, -18.0208, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.9794, -15.011, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.7294, 9.9890099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.7294, 5.9890099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.7294, 1.98901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.7294, -2.0109899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-13.567, -18.2815, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ConcretePipe_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-22.507799, -17.9949, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.4922, -18.5051, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-7.2421899, 9.4941397, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncShelter_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.2536602, 6.2409701, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncShelter_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.0170898, 3.2546401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncBarrierMedium_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.4874296, 1.48755, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncBarrierMedium_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.3873, 22.0989, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "CamoNet_BLUFOR_open_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.0763, 21.5044, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Large_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-7.2609901, 29.4792, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.7294, 17.989, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.7294, 13.989, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.7294, 25.989, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.7578, 29.5051, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.5694599, 18.9839, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PortableLight_double_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.5, 17.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Sacks_heap_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.5012197, 18.5002, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Portable_generator_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.1332998, 27.388399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.4998798, 26.5, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.2501202, 27.5, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.4822998, 14.25, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncBarrierMedium_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.1512, -40.137501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "CamoNet_BLUFOR_open_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.2457, -39.826401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Large_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.3713, -32.336201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wreck_HMMWV_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [7.5109901, -35.479198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [3.5109899, -35.479198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.511, -35.479198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-0.489014, -35.479198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [15.511, -35.479198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.261, -24.9792, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.511, -35.479198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.7706299, -21.511, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-4.4890099, -35.479198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.74475, -25.007799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.0, -34.25, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CratesWooden_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [15.2461, -25.836399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallets_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [20.3741, -31.022699, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallet_MilBoxes_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [14.0759, -25.1108, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallet_vertical_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [14.2499, -34.5, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BarrelSand_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.3827, -23.4368, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "CamoNet_BLUFOR_open_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.5698, -21.5625, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo10_cyan_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.205601, -24.5012, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_WoodenTable_large_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.500099, -25.25, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CampingChair_V2_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.0, -24.25, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CampingChair_V2_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.174801, -22.5093, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_WoodenTable_large_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.2054, -20.523399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_WoodenTable_large_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.75, -23.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CampingChair_V2_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.7502, -19.9988, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CampingChair_V2_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.711901, -21.0005, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CampingChair_V2_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.700199, -23.0007, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CampingChair_V2_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.5, -22.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CampingChair_V2_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.5669, -20.1777, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CampingChair_V2_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.5, -24.25, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CampingChair_V2_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.25, -25.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CampingChair_V2_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.5, -22.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CampingChair_V2_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.25, -21.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CampingChair_V2_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-0.75, -16.5, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_i_Barracks_V1_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [20.645, -10.178, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_Tower_V1_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [15.7949, 12.1482, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_HQ_V1_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [3.1400101, 9.1799297, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_spp_Transformer_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [17.976, -3.98242, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncBarrierMedium4_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.0, -12.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Coil_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.45471, -5.6684599, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_IronPipes_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.886, 3.77075, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.489, -7.52075, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.239, -14.0208, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.7706299, -17.511, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [15.886, 3.77075, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.020599, -11.011, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.886, 3.77075, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [8.0109901, 3.77075, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.886, 3.77075, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.489, -7.52075, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [4.5206299, 11.239, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [4.5206299, 7.2390099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.584999, -11.1399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbageBags_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0.0377197, 0.071777299, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Garbage_square5_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-2.25085, -0.77026403, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbageWashingMachine_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [6.74756, -4.75317, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "I_Quadbike_01_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [6.4970698, -7.5004902, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "I_Quadbike_01_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.5997, -17.9524, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo10_grey_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [15.9922, -7.4948702, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.757799, -14.5051, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [4.49475, 3.7421899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.7421904, -13.9949, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.7596402, 11.7512, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncShelter_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.7537, -6.4909701, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncShelter_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.4846, -8.75879, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncBarrierMedium_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.4912, -4.4846201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncBarrierMedium_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [6.8703599, 6.20679, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallet_MilBoxes_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-4.6069298, -1.54346, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbageContainer_closed_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.4975595, 5.5124502, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_closed_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [15.0, -9.51758, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncBarrierMedium_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-7.3090801, 29.005899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Shed_Small_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-4.50073, 23.247999, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "I_APC_Wheeled_03_cannon_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [2.5030501, 23.7488, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "I_MRAP_03_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.5, 24.5, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo20_grey_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.895599, 25.739, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.229401, 26.011, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [4.7390099, 29.4792, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0.73901403, 29.4792, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [8.7390099, 29.4792, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.114, 23.1042, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-3.2609899, 29.4792, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.739, 29.4792, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [15.6333, 16.581499, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbagePallet_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.867201, 29.2551, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [15.6198, 22.492201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.255199, 29.507799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.632799, 22.3699, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [20.75, 18.75, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_WaterTank_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-0.75, 27.75, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CratesWooden_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [3.125, 13.25, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallets_stack_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.0001202, 23.25, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.2498798, 24.25, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [8.5001202, 24.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [8.7498798, 22.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BarrelTrash_grey_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [17.6908, 24.3118, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Tyres_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [37.246799, -19.752701, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_Patrol_V1_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [27.511, -35.479198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [30.979401, -27.989, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [30.979401, -31.989, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [37.479401, -21.489, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [34.011002, -24.9792, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [37.507801, -25.0051, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [31.007799, -35.5051, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [30.492201, -24.4949, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [29.499901, -30.9995, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_open_empty_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [29.507099, -28.7395, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_closed_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [29.4867, -34.013199, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_LampHalogen_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [32.7668, -9.5195303, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagBunker_Tower_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [37.853401, 9.5, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_House_V1_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [27.740601, -12.9836, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_LampHalogen_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.476, -3.98242, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncBarrierMedium4_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [33.988998, -14.0208, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [43.354401, 11.261, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.979401, -10.989, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [39.886002, 3.77075, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [35.886002, 3.77075, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [29.989, -14.0208, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [37.479401, -17.489, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [31.886, 3.77075, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [43.354401, 7.2609901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [27.886, 3.77075, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [31.25, 7.25, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo10_grey_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [37.505199, -13.9922, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [43.382801, 3.7448699, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.494801, -14.5078, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [27.005199, -7.4921899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [27.75, -13.75, 17.799999], _rotation] call A3E_fnc_rotatePosition;
_obj = "I_HMG_01_high_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [33.444199, -7.7522001, 2.78], _rotation] call A3E_fnc_rotatePosition;
_obj = "I_HMG_01_high_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [30.9977, -15.7412, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_open_full_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [28.75, 5.25, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Sacks_heap_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [36.492298, -7.2480502, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncBarrier_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [36.492298, -11.748, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncBarrier_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [30.004601, -4.2329102, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CncBarrierMedium_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [27.3778, 28.746799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_Patrol_V1_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [37.603401, 17.75, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_House_V1_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [41.75, 13.7312, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_LampHalogen_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [43.354401, 19.261, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [29.364, 29.2292, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.364, 29.2292, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [35.863998, 22.7292, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [39.863998, 22.7292, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [43.354401, 15.261, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [32.854401, 25.636, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_4m_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [32.369801, 22.117201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [32.880199, 29.132799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [43.380199, 22.757799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Mil_WallBig_Corner_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.470301, 26.5151, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_JunkPile_F" createVehicleLocal _pos;
_obj setDir ((getDir _obj) + _rotation);
_obj setPosATL _pos;
