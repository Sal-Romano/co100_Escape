// Prison Compound: Command centre - industrial concrete walls, lights, HQ buildings
// Source: ZEC/CfgGroups/Empty/Military/HQLarge/CommandCentre
// Objects: 126, Size: 85x78m, Radius: 46m
// Auto-generated from ZEC/ZECCUP composition data

private ["_obj","_pos"];
params ["_center","_rotation","_backpack"];

// Cleanup terrain in a radius matching this compound
if (isServer) then {
    [_center, 56] call a3e_fnc_cleanupTerrain;

    // Position backpack near center
    _pos = [_center, _center vectorAdd [random 2.0 - 1, random 2.0 - 1, 0], _rotation] call A3E_fnc_rotatePosition;
    _backpack setDir ((getDir _backpack) + _rotation);
    _backpack setPosATL _pos;

    // Gate (from composition)
    _pos = [_center, _center vectorAdd [41.75, -16.9377, 0.0], _rotation] call A3E_fnc_rotatePosition;
    _obj = "Land_BarGate_F" createVehicle _pos;
    _obj setDir ((getDir _obj) + _rotation);
    _obj setPosATL _pos;
    A3E_PrisonGateObject = _obj;

    // Loudspeaker
    _pos = [_center, _center vectorAdd [0, 13.8, 0], _rotation] call A3E_fnc_rotatePosition;
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

_pos = [_center, _center vectorAdd [-38.586899, -29.729, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-38.586899, -35.729, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-38.586899, -23.729, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-34.453602, -37.5835, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-34.453602, -19.5835, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-38.586899, -5.7290001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-38.586899, 6.2709999, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-38.586899, -17.729, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-38.586899, 12.271, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-38.586899, 0.270996, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-38.590801, -11.7156, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_D_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-32.748501, 27.4093, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Tank_rust_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-38.586899, 24.271, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-38.586899, 36.271, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-38.586899, 30.271, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-38.586899, 18.271, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-34.453602, 16.4165, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-36.732399, 40.404301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-37.608601, 39.259399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_LampHalogen_F" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-32.870098, 34.447201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Medevac_house_V1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 345.5);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-9.25, -21.375, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo40_yellow_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-22.4536, -37.5835, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-4.4533701, -37.5835, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-28.4536, -37.5835, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-16.4534, -37.5835, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-28.4536, -19.5835, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-10.4534, -37.5835, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-31.367901, -28.367901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_dp_smallTank_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-8.8183603, -26.920401, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_i_Shed_Ind_F" createVehicleLocal _pos;
_obj setDir (_rotation + 179.9);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-19.418699, 0.32867399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wreck_HMMWV_F" createVehicleLocal _pos;
_obj setDir (_rotation + 326.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-28.625, -3.5, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_i_Barracks_V1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-19.915001, 2.4849899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbageBags_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-22.612499, -14.8725, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_closed_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-21.8274, -12.0127, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_JunkPile_F" createVehicleLocal _pos;
_obj setDir (_rotation + 42.5);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-3.25, 8.375, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo10_light_blue_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-22.6245, -16.499901, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_open_empty_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.61694, 27.2948, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MilOffices_V1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-12.7322, 40.404301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-18.732401, 40.404301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-6.7321801, 40.404301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-30.732401, 40.404301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-24.688499, 40.372501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_D_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-28.4536, 16.4165, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [6.4990201, -20.045601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.5457, -19.1259, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 135.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [29.128901, -18.8906, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [6.8906298, -22.746201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [6.8906298, -25.496099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [16.1406, -21.871201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [6.8906298, -28.246099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [3.7539101, -19.6406, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.246099, -18.734501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 360.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.625, -26.625, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_HelipadSquare_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.5466, -37.5835, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [25.5466, -37.5835, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [7.5466299, -37.5835, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [31.5466, -37.5835, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [1.54663, -37.5835, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.5503, -37.5676, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_D_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.375, -35.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_FieldToilet_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.25, -35.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_FieldToilet_F" createVehicleLocal _pos;
_obj setDir (_rotation + 195.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [5.2312002, -36.75, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_LampHalogen_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [6.6499, -35.286598, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbagePallet_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [7.625, 6.875, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo20_cyan_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [31.0, 1.875, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Pallets_stack_F" createVehicleLocal _pos;
_obj setDir (_rotation + 350.3);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.2678, 13.4043, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [29.267799, 13.4043, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.267799, 13.4043, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.4133301, 3.2709999, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.4133301, 9.2709999, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [9.4133301, -2.7290001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [17.267799, 13.4043, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [14.3521, 2.4464099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Shed_Big_F" createVehicleLocal _pos;
_obj setDir (_rotation + 89.7);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [19.857901, 5.3631001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbageBags_F" createVehicleLocal _pos;
_obj setDir (_rotation + 103.6);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [17.6985, 5.1936598, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbageBags_F" createVehicleLocal _pos;
_obj setDir (_rotation + 11.1);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [17.795401, 4.1359301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Garbage_square5_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [29.5718, 1.50275, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 102.2);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [30.0334, 0.60510302, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_MetalBarrel_F" createVehicleLocal _pos;
_obj setDir (_rotation + 210.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [18.2297, 3.5017099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbageWashingMachine_F" createVehicleLocal _pos;
_obj setDir (_rotation + 302.5);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.6499, 6.3383799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbagePallet_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.0144, -4.1893902, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PortableLight_double_F" createVehicleLocal _pos;
_obj setDir (_rotation + 240.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [10.2632, 12.6117, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_LampHalogen_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [0.75, 6.875, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo20_red_F" createVehicleLocal _pos;
_obj setDir (_rotation + 285.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [22.7041, -0.73699999, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Tyre_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [29.746799, 3.3968501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wreck_Truck_dropside_F" createVehicleLocal _pos;
_obj setDir (_rotation + 255.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [28.497801, 7.5062299, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbageBags_F" createVehicleLocal _pos;
_obj setDir (_rotation + 105.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [17.267799, 40.404301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.267799, 40.404301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [11.2678, 40.404301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [29.267799, 40.404301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [-0.73217797, 40.404301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [5.2678199, 40.404301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [13.0627, 33.27, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_GarbageBags_F" createVehicleLocal _pos;
_obj setDir (_rotation + 331.3);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.1375, 31.252501, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_closed_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [26.375, 27.635, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_TTowerBig_1_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [23.75, 15.0, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo20_light_green_F" createVehicleLocal _pos;
_obj setDir (_rotation + 360.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [12.1255, 29.625099, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_PaperBox_open_empty_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [45.7043, -23.7491, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 315.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [46.109402, -21.003799, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [43.003899, -24.140499, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [32.265598, -21.996201, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [36.090801, -28.123699, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Tank_rust_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [39.4011, -21.450199, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [37.5466, -37.5835, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [39.4011, -33.450199, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [39.4011, -27.450199, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [38.358601, -36.634399, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_LampHalogen_F" createVehicleLocal _pos;
_obj setDir (_rotation + 60.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [38.375, -20.106199, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_LampHalogen_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [31.874001, -19.295601, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [45.749001, -4.0455298, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Round_F" createVehicleLocal _pos;
_obj setDir (_rotation + 225.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [46.140598, -6.7460899, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [43.003899, -3.6405599, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_BagFence_Long_F" createVehicleLocal _pos;
_obj setDir (_rotation + 180.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [34.5, 1.625, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Cargo40_military_green_F" createVehicleLocal _pos;
_obj setDir (_rotation + 270.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [39.4011, 8.5497999, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [39.4011, -3.4502001, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [39.4011, 2.5497999, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [35.267799, 13.4043, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [39.380402, 14.572, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_D_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [39.408199, -7.5866098, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_Pole_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [38.358601, 12.4906, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_LampHalogen_F" createVehicleLocal _pos;
_obj setDir (_rotation + 60.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [39.4011, 32.549801, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [39.4011, 38.549801, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [39.4011, 26.549801, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [35.267799, 40.404301, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 0.0);
_obj setPosATL _pos;

_pos = [_center, _center vectorAdd [39.4011, 20.549801, 0.0], _rotation] call A3E_fnc_rotatePosition;
_obj = "Land_Wall_IndCnc_4_F" createVehicleLocal _pos;
_obj setDir (_rotation + 90.0);
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
