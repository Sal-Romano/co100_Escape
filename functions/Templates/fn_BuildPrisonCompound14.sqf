// Prison Compound: Castle walls compound - medieval walls repurposed as prison
// Source: ZECCUP/CfgGroups/Empty/Civilian/GeneralLarge/Castle
// Objects: 31, Size: 100x77m, Radius: 55m
// Auto-generated from ZEC/ZECCUP composition data
// NOTE: 1 objects pruned from center (within 10.0m) for cell clearance

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

// === PRISON CELL - random building with door at center ===
private _cellTypes = missionNamespace getVariable ["A3E_PrisonCellBuildings", [
    "Land_Cargo_House_V1_F",
    "Land_Cargo_House_V2_F",
    "Land_Cargo_House_V3_F",
    "Land_i_Shed_Ind_F"
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
