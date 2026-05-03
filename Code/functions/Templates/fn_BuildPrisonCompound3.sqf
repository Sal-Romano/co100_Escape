// Prison Compound: Field command outpost - HBarrier walls with watchtowers
// Source: ZEC/CfgGroups/Empty/Military/FieldHQLarge/CommandOutpost
// Objects: 89, Size: 82x69m, Radius: 44m
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

_pos = [_center, _center vectorAdd [-37.649899, -17.8983, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-37.649899, -26.1483, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-32.659199, -28.8969, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 182.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-34.190899, 6.5349102, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierTower_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-34.149899, 13.4767, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-37.524899, -1.39832, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-37.524899, -9.6483202, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-27.5, -13.125, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ReservoirTower_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-34.024899, 21.7267, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-31.2764, 34.842701, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 2.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-34.024899, 29.9767, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.084, -23.7565, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.6289, -23.234301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.8711, -26.7656, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-25.7173, -28.937901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierTower_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.1606, -19.155899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 92.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.1606, -27.405899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 92.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-17.909201, -32.2719, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 182.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.1704, -26.374001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [1.24365, 9.7088604, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-1.37402, 9.7955904, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [1.60938, 12.3711, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.625, -3.625, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo20_military_green_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.0356, -10.9059, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 92.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.0342, 1.85315, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 182.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-15.0356, -2.65588, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 92.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-3.1210899, 11.1094, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-3.75, 20.375, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_i_Barracks_V2_F" createVehicleLocal _pos;
_obj setDir (_rotation + 360.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.5, 14.875, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ToiletBox_F" createVehicleLocal _pos;
_obj setDir (_rotation + 360.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-14.7764, 34.717701, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 2.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [1.72363, 34.717701, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 2.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-23.0264, 34.842701, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 2.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.52637, 34.717701, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 2.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.862301, 18.877501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_closed_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.8745, 17.250099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_open_empty_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.362801, -19.6003, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Corner_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [7.9624, -23.712, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [7.8759799, -26.329399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.1353, -19.626499, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.4209, -26.851601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.3594, -17.503901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.6631, -23.3204, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [33.2593, -19.2614, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [24.7827, -31.187901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierTower_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.8501, -23.6483, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [32.715801, -30.0219, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 182.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.8501, -31.8983, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [17.840799, -34.5219, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 182.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [35.230499, -19.257999, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Corner_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.022499, -3.2272899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Corner_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [35.2603, -3.7644, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Corner_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.250999, 3.2957201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.3438, 8.6450195, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [30.7808, 3.2304699, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [35.251499, -8.1145, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.3643, -3.2485399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.001499, -4.9895, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Short_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [27.996099, 2.8905599, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [32.878899, -3.7655599, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [24.8906, 6.0039101, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [35.234402, -5.7539101, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [21.002001, -3.25543, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [31.2344, 5.8710899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [35.234402, -16.878901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [28.128901, 8.9843798, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [30.875, 13.125, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_ToiletBox_F" createVehicleLocal _pos;
_obj setDir (_rotation + 30.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [37.980999, 14.0252, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 62.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.9658, -1.64685, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 182.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.9751, -15.3983, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.9751, -7.1483202, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 272.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [27.5, -11.49, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_TTowerBig_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.125, 2.25, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo10_cyan_F" createVehicleLocal _pos;
_obj setDir (_rotation + 45.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.125, 1.875, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo10_grey_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [30.874001, 8.5794096, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [17.9067, 31.508699, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierTower_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [29.351601, 17.357, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Medevac_house_V1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 60.5);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.97363, 34.717701, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 2.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [24.7236, 31.467699, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 2.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [29.839399, 28.3771, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 62.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [33.964401, 21.232401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 62.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.5098, 19.7584, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_closed_F" createVehicleLocal _pos;
_obj setDir (_rotation + 60.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.75, 24.125, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo20_orange_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.0, 17.624599, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_open_empty_F" createVehicleLocal _pos;
_obj setDir (_rotation + 165.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [43.714401, -16.780899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 92.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [40.965801, -30.0219, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 182.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [43.714401, -25.030899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 92.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [43.839401, -8.53088, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 92.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [43.839401, -0.280884, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 92.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [42.105999, 6.8805499, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HBarrierWall6_F" createVehicleLocal _pos;
_obj setDir (_rotation + 62.0);
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
