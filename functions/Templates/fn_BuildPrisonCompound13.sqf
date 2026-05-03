// Prison Compound: CUP TK HQ - rampart walls, fortified nests, cargo tower
// Source: ZECCUP/CfgGroups/Empty/Military_Desert/HQLarge/Headquarters_CUP_O_TK
// Objects: 45, Size: 56x60m, Radius: 31m
// Auto-generated from ZEC/ZECCUP composition data

private ["_obj","_pos"];
params ["_center","_rotation","_backpack"];

// Cleanup terrain in a radius matching this compound
if (isServer) then {
    [_center, 41] call a3e_fnc_cleanupTerrain;

    // Position backpack near center
    _pos = [_center, _center vectorAdd [random 2.0 - 1, random 2.0 - 1, 0], _rotation] call A3E_fnc_rotatePosition;
    _backpack setDir ((getDir _backpack) + _rotation);
    _backpack setPosATL _pos;

    // Default gate (no gate in source composition)
    _pos = [_center, _center vectorAdd [24.9, 0, 0], _rotation] call A3E_fnc_rotatePosition;
    _obj = "Land_City_Gate_F" createVehicle _pos;
    _obj setDir ((getDir _obj) + _rotation);
    _obj setPosATL _pos;
    A3E_PrisonGateObject = _obj;

    // Loudspeaker
    _pos = [_center, _center vectorAdd [0, 9.3, 0], _rotation] call A3E_fnc_rotatePosition;
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

_pos = [_center, _center vectorAdd [-17.649799, -19.2759, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fort_rampart_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 30.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-26.560101, -10.4341, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fort_rampart_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 60.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-24.443501, -16.4282, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fortified_nest_small_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-14.3373, 5.5717802, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Garbage_square5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-28.479799, 14.4436, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fort_rampart_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 120.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-21.121599, 10.3193, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wreck_Ural_F" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-25.632401, 21.237301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fortified_nest_small_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-20.4342, 10.5618, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Tyres_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-19.638201, 23.3538, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fort_rampart_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 150.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [3.12378, -9.7407198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier1" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [3.6214001, -10.4912, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier1" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [7.88727, -8.9477501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fort_rampart_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 330.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-0.75, -23.899401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fort_rampart_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.76227, -9.8227501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fort_rampart_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 30.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [2.4682, -8.9177198, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier3" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-11.7794, -29.0142, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fortified_nest_big_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 15.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0.49359101, 4.3254399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier5" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.9505, -1.36865, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier5" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-4.1314101, -7.1745601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier5" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [14.864, 3.5739701, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier5" createVehicleLocal _pos;
_obj setDir (_rotation + 75.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-13.9861, -0.26538101, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fort_bagfence_long" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-13.6076, -3.13623, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fort_bagfence_long" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.8382, 10.6079, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Garbage_square5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [8.5264301, 12.3672, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Garbage_square5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.0505, -1.60083, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_CamoNet_EAST_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [2.375, 17.024401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fort_rampart_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-7.9754601, -1.25, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fort_rampart_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.0123, 6.3227501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fort_rampart_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 210.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-7.01227, 6.5727501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fort_rampart_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 150.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.085, -6.8898902, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbageBags_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.5953999, 10.6401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_JunkPile_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.7899, 5.1777301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbagePallet_F" createVehicleLocal _pos;
_obj setDir (_rotation + 150.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [1.32196, -0.39502001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_Tower_V3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.0883, -6.6545401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fort_bagfence_corner" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-13.4045, 2.9633801, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fort_bagfence_corner" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-2.7816801, 4.3393602, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier3" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.6031, 5.37183, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wreck_Truck_dropside_F" createVehicleLocal _pos;
_obj setDir (_rotation + 165.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [6.5261798, 28.3748, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fort_rampart_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 195.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.0261798, 28.325899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fort_rampart_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 165.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0.79113799, 31.116501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fortified_nest_small_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.2568, 28.2251, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fortified_nest_big_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.072701, -12.1372, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fort_rampart_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 300.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.2745, 0.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fort_rampart_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [27.2054, -7.3071299, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fortified_nest_small_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 285.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.4716, 16.856199, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_fort_rampart_EP1" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
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
