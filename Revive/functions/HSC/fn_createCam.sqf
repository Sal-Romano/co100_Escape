if(isNil("AT_Revive_StaticRespawns")) then {
	AT_Revive_StaticRespawns = [];
};
if(isNil("AT_Revive_EnableRespawn")) then {
	AT_Revive_EnableRespawn = true;
};
if(isNil("AT_Revive_clearedDistance")) then {
	AT_Revive_clearedDistance = 100;
};
if(isNil("ATHSC_Cam")) then {
	ATHSC_Cam = objNull;
};
if(!isNull ATHSC_Cam) then {
	[] call ATHSC_fnc_exit;
};
ATHSC_Cam = objNull;
ATHSC_CamTarget = player;
ATHSC_AttempRespawn = false;
ATHSC_AttempRespawnCounter = 0;
ATHSC_NVEnabled = false;
ATHSC_CamDir = random 360;
ATHSC_CamDistance = 15;
ATHSC_CamAngle = 45;
ATHSC_Perspective = 1;
ATHSC_KeyPress = [];
ATHSC_Cam = "camera" camCreate (eyePos player);
cutText ["", "BLACK",0.1];
[0] call ATHSC_fnc_updatePerspective;
sleep 0.5;

painscream = player addAction ["<t color='#C00000'>Scream in Agonizing Pain</t>",{

	 private _screamFiles = [
		"sounds\screams\SSD_scream1.ogg","sounds\screams\SSD_scream2.ogg","sounds\screams\SSD_scream3.ogg",
		"sounds\screams\SSD_scream4.ogg","sounds\screams\SSD_scream5.ogg","sounds\screams\SSD_scream6.ogg",
		"sounds\screams\SSD_scream7.ogg","sounds\screams\SSD_scream8.ogg","sounds\screams\SSD_scream9.ogg",
		"sounds\screams\SSD_scream10.ogg","sounds\screams\SSD_scream11.ogg","sounds\screams\SSD_scream12.ogg",
		"sounds\screams\SSD_scream13.ogg","sounds\screams\SSD_scream14.ogg","sounds\screams\SSD_scream15.ogg",
		"sounds\screams\SSD_scream16.ogg","sounds\screams\SSD_scream17.ogg","sounds\screams\SSD_scream18.ogg",
		"sounds\screams\SSD_scream19.ogg","sounds\screams\SSD_scream20.ogg","sounds\screams\SSD_scream21.ogg",
		"sounds\screams\SSD_scream22.ogg","sounds\screams\SSD_scream23.ogg","sounds\screams\SSD_scream24.ogg",
		"sounds\screams\SSD_scream25.ogg","sounds\screams\SSD_scream26.ogg","sounds\screams\SSD_scream27.ogg",
		"sounds\screams\SSD_scream28.ogg","sounds\screams\SSD_scream29.ogg","sounds\screams\SSD_scream30.ogg",
		"sounds\screams\SSD_scream31.ogg","sounds\screams\SSD_scream32.ogg","sounds\screams\SSD_scream33.ogg",
		"sounds\screams\SSD_scream34.ogg","sounds\screams\SSD_scream35.ogg","sounds\screams\SSD_scream36.ogg",
		"sounds\screams\SSD_scream37.ogg","sounds\screams\SSD_scream38.ogg","sounds\screams\SSD_scream39.ogg",
		"sounds\screams\SSD_scream40.ogg","sounds\screams\SSD_scream41.ogg"
	 ];
	 private _file = selectRandom _screamFiles;
	 // playSound3D via say3D on all clients (stacks, doesn't queue)
	 private _pos = getPos player;
	 [[_file, _pos], {
		 params ["_f", "_p"];
		 playSound3D [getMissionPath _f, objNull, false, _p, 1, 1, 500];
	 }] remoteExec ["call", 0];

},[],1,false]; 


ATHSC_KeyDownHandler = (findDisplay 46) displayAddEventHandler ["KeyDown", "_this call ATHSC_FNC_keydown;"];
ATHSC_MouseHandler = (findDisplay 46) displayAddEventHandler ["MouseMoving", "_this call ATHSC_FNC_mouseMove;"];
ATHSC_MouseZHandler = (findDisplay 46) displayAddEventHandler ["MouseZChanged", "_this call ATHSC_FNC_mouseZMove;"];
//ATHSC_MouseKeyHandler = (findDisplay 46) displayAddEventHandler ["MouseButtonClick", "_this call ATHSC_FNC_mousekeyclick;"];


//ATHSC_Cam switchCamera "Internal";

showCinemaBorder false;
ATHSC_Cam camSetPos ((getpos player) vectorAdd ([[0,1,0],[ATHSC_CamAngle,0,ATHSC_CamDir]] call ATHSC_FNC_rotateVector));
ATHSC_Cam cameraEffect ["internal", "back"];
ATHSC_Cam camCommit 0;
ATHSC_Cam camSetTarget player;
[] spawn {
	sleep 0.5;
	cutText ["", "BLACK IN"];
	sleep 1.0;
	("HSC" call BIS_fnc_rscLayer) cutRsc ["HSC_View", "PLAIN", 2, false];
};
private _distance = ATHSC_CamDistance;
for[{_i=1},{_i<ATHSC_CamDistance},{_i=_i+1}] do {
	private _camVector = [[0,1,0],[ATHSC_CamAngle,0,ATHSC_CamDir]] call ATHSC_FNC_rotateVector;
	ATHSC_Cam camSetPos ((getpos player) vectorAdd (_camVector vectorMultiply _i));
	ATHSC_Cam camCommit 0.1;
	sleep 0.1;
};
ATHSC_CamDistance = _distance;
ATHSC_Run = true;

[] spawn ATHSC_fnc_camLoop;
