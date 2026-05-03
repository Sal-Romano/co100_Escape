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
