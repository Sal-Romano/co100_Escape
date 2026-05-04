// Prison Compound: Old war bunker - pillbox walls, heavy concrete fortification
// Source: ZEC/CfgGroups/Empty/Guerrilla_Pacific/FortLarge/OldWarBunker
// Objects: 53, Size: 87x68m, Radius: 46m
// Auto-generated from ZEC/ZECCUP composition data

private ["_obj","_pos"];
params ["_center","_rotation","_backpack"];

// Cleanup terrain in a radius matching this compound
if (isServer) then {
    [_center, 55] call a3e_fnc_cleanupTerrain;

    // Position backpack near center
    _pos = [_center, _center vectorAdd [random 2.0 - 1, random 2.0 - 1, 0], _rotation] call A3E_fnc_rotatePosition;
    _backpack setDir ((getDir _backpack) + _rotation);
    _backpack setPosATL _pos;

    // Default gate (no gate in source composition)
    _pos = [_center, _center vectorAdd [36.6, 0, 0], _rotation] call A3E_fnc_rotatePosition;
    _obj = "Land_City_Gate_F" createVehicle _pos;
    _obj setDir ((getDir _obj) + _rotation);
    _obj setPosATL _pos;
    A3E_PrisonGateObject = _obj;

    // Loudspeaker
    _pos = [_center, _center vectorAdd [0, 13.7, 0], _rotation] call A3E_fnc_rotatePosition;
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

_pos = [_center, _center vectorAdd [-37.6194, -30.77, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxBunker_01_rectangle_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-41.599998, -10.2402, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxBunker_01_big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-36.535301, -18.398399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-38.3936, 8.9765596, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxBunker_01_hex_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-22.4249, -37.606899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxBunker_01_big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-25.429001, -30.051001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-34.493099, -23.2502, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-17.7472, -29.523399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.7896, -24.7502, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-32.1646, -30.1252, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-34.493099, -27.4216, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-21.7318, -30.9832, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_3m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-29.2449, -29.127001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_3m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-16.141399, -26.794901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_3m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.5163603, -22.794901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_3m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-34.266399, -8.7519503, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_3m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-5.7663598, 15.9951, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.6646, 20.7034, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-33.919102, 15.1392, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-33.016399, 7.8327599, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-33.993099, 21.8748, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-30.993099, -6.7966299, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-26.285299, -1.89844, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-28.243099, 2.87451, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.6196899, 17.351601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_3m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-27.641399, -4.7519498, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_3m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-34.851101, 11.4417, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_3m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-32.9949, 18.9548, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_3m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-30.2878, 6.2265601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_3m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-16.0291, 27.101601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxBunker_01_rectangle_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-36.541801, 30.7388, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxBunker_01_big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-27.118099, 24.2034, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-22.266399, 26.2451, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-31.2896, 24.2034, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.6197, 23.976601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_3m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [8.1424599, 21.060101, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxBunker_01_big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.256901, 7.7033701, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.5854, 10.4534, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-0.0163574, 15.9951, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.214701, 12.4766, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.483601, 5.74512, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [27.358601, 17.854, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxBunker_01_hex_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.6301, 7.1015601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_3m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [24.608601, 9.7480497, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_3m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.6300697, 13.7266, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_3m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [45.711899, 14.0981, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxBunker_01_rectangle_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [40.256901, 13.4534, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [42.5854, 6.5783701, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [33.521198, 13.3792, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [42.5854, 10.7498, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [44.6278, 1.72656, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_6m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [37.3372, 12.4551, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_3m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [29.824301, 14.3113, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PillboxWall_01_3m_round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
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
