// Prison Compound: Field command outpost - HBarrier walls with watchtowers
// Source: ZEC/CfgGroups/Empty/Military/FieldHQLarge/CommandOutpost
// Objects: 89, Size: 82x69m, Radius: 44m
// Auto-generated from ZEC/ZECCUP composition data
// NOTE: 2 objects pruned from center (within 10.0m) for cell clearance

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
    _pos = [_center, _center vectorAdd [35.0, 0, 0], _rotation] call A3E_fnc_rotatePosition;
    _obj = "Land_City_Gate_F" createVehicle _pos;
    _obj setDir ((getDir _obj) + _rotation);
    _obj setPosATL _pos;
    A3E_PrisonGateObject = _obj;

    // Loudspeaker
    _pos = [_center, _center vectorAdd [0, 13.1, 0], _rotation] call A3E_fnc_rotatePosition;
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

_pos = [_center, _center vectorAdd [-37.649899, -17.8983, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-37.649899, -26.1483, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-32.659199, -28.8969, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 182.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-34.190899, 6.5349102, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierTower_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-34.149899, 13.4767, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-37.524899, -1.39832, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-37.524899, -9.6483202, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-27.5, -13.125, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ReservoirTower_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-34.024899, 21.7267, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-31.2764, 34.842701, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 2.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-34.024899, 29.9767, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.084, -23.7565, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.6289, -23.234301, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.8711, -26.7656, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-25.7173, -28.937901, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierTower_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.1606, -19.155899, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 92.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.1606, -27.405899, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 92.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-17.909201, -32.2719, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 182.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.1704, -26.374001, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [1.60938, 12.3711, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.625, -3.625, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo20_military_green_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.0356, -10.9059, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 92.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.0342, 1.85315, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 182.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.0356, -2.65588, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 92.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-3.1210899, 11.1094, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-3.75, 20.375, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_i_Barracks_V2_F" createVehicleLocal _pos;
_obj setDir (_rotation + 360.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.5, 14.875, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ToiletBox_F" createVehicleLocal _pos;
_obj setDir (_rotation + 360.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-14.7764, 34.717701, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 2.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [1.72363, 34.717701, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 2.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-23.0264, 34.842701, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 2.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.52637, 34.717701, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 2.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.862301, 18.877501, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_closed_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.8745, 17.250099, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_open_empty_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.362801, -19.6003, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Corner_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [7.9624, -23.712, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [7.8759799, -26.329399, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.1353, -19.626499, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.4209, -26.851601, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.3594, -17.503901, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.6631, -23.3204, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [33.2593, -19.2614, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [24.7827, -31.187901, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierTower_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.8501, -23.6483, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [32.715801, -30.0219, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 182.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.8501, -31.8983, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [17.840799, -34.5219, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 182.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [35.230499, -19.257999, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Corner_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.022499, -3.2272899, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Corner_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [35.2603, -3.7644, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Corner_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.250999, 3.2957201, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.3438, 8.6450195, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [30.7808, 3.2304699, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [35.251499, -8.1145, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.3643, -3.2485399, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.001499, -4.9895, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [27.996099, 2.8905599, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [32.878899, -3.7655599, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [24.8906, 6.0039101, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [35.234402, -5.7539101, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.002001, -3.25543, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [31.2344, 5.8710899, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [35.234402, -16.878901, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [28.128901, 8.9843798, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [30.875, 13.125, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ToiletBox_F" createVehicleLocal _pos;
_obj setDir (_rotation + 30.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [37.980999, 14.0252, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 62.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.9658, -1.64685, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 182.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.9751, -15.3983, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.9751, -7.1483202, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [27.5, -11.49, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_TTowerBig_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.125, 2.25, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo10_cyan_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.125, 1.875, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo10_grey_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [30.874001, 8.5794096, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [17.9067, 31.508699, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierTower_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [29.351601, 17.357, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Medevac_house_V1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 60.5);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.97363, 34.717701, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 2.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [24.7236, 31.467699, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 2.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [29.839399, 28.3771, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 62.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [33.964401, 21.232401, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 62.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.5098, 19.7584, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_closed_F" createVehicleLocal _pos;
_obj setDir (_rotation + 60.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.75, 24.125, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo20_orange_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.0, 17.624599, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_open_empty_F" createVehicleLocal _pos;
_obj setDir (_rotation + 165.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [43.714401, -16.780899, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 92.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [40.965801, -30.0219, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 182.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [43.714401, -25.030899, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 92.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [43.839401, -8.53088, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 92.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [43.839401, -0.280884, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 92.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [42.105999, 6.8805499, 0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 62.0);
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
// Fix sinking: raise building if its bounding box base is below ground
private _bb = boundingBoxReal _obj;
private _bottomZ = (_bb select 0) select 2;
if (_bottomZ < -0.1) then {
    _pos set [2, abs _bottomZ];
    _obj setPosATL _pos;
};
