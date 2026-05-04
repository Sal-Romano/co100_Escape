// Prison Compound: Standard HQ - H-barriers, cargo house, cargo HQ, toilets
// Source: ZEC/CfgGroups/Empty/Military/HQLarge/Headquarters
// Objects: 36, Size: 31x41m, Radius: 25m
// Auto-generated from ZEC/ZECCUP composition data
// NOTE: 4 objects pruned from center (within 10.0m) for cell clearance

private ["_obj","_pos"];
params ["_center","_rotation","_backpack"];

// Cleanup terrain in a radius matching this compound
if (isServer) then {
    [_center, 35] call a3e_fnc_cleanupTerrain;

    // Position backpack near center
    _pos = [_center, _center vectorAdd [random 2.0 - 1, random 2.0 - 1, 0], _rotation] call A3E_fnc_rotatePosition;
    _backpack setDir ((getDir _backpack) + _rotation);
    _backpack setPosATL _pos;

    // Default gate (no gate in source composition)
    _pos = [_center, _center vectorAdd [20.1, 0, 0], _rotation] call A3E_fnc_rotatePosition;
    _obj = "Land_City_Gate_F" createVehicle _pos;
    _obj setDir ((getDir _obj) + _rotation);
    _obj setPosATL _pos;
    A3E_PrisonGateObject = _obj;

    // Loudspeaker
    _pos = [_center, _center vectorAdd [0, 7.5, 0], _rotation] call A3E_fnc_rotatePosition;
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

_pos = [_center, _center vectorAdd [-11.7485, -15.875, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Sign_WarningMilAreaSmall_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-14.5034, -8.3940401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.3595, -8.5351601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 360.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.6289, -13.4844, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-20.792601, -10.2852, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-20.792601, -1.9101599, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.7853, -13.4573, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.8217, 1.7482899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.8324, 15.4102, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.7926, 6.9648399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.4987202, -7.5039101, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-14.136, -6.9770498, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-13.023, -4.8859901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.9785, -3.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_House_V1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-17.75, -7.6252398, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_FieldToilet_F" createVehicleLocal _pos;
_obj setDir (_rotation + 360.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-19.0, -7.625, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_FieldToilet_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.75, 16.375, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_FieldToilet_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.75, 14.5, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_FieldToilet_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-11.3789, 25.1406, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.7656, 23.621099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.7656, 20.746099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-5.7610502, 20.6479, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_3_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.4927397, 24.872999, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 285.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-4.7460899, -13.5156, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.5426, 15.6602, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.5824, 7.2148399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-2.5824001, -10.2148, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0.41992199, 11.8982, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo_HQ_V1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-4.2655602, 22.996099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [7.4102802, 20.7073, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-1.08972, 20.7073, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-4.6314702, 24.6287, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrier_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 120.0);
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
