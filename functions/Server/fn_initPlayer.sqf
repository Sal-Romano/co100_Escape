params["_player"];
private["_placed"];


diag_log format["fn_initPlayer run for %1", name _player];


//[format["%1 joined the Game!",name _player]] spawn a3e_fnc_debugmsg;
//if(!isNil("paramsArray")) then {
//paramsArray call A3E_fnc_WriteParamBriefing;
//};


_player addeventhandler["HandleScore","_this call A3E_FNC_handleScore;"];

[_player, true] remoteExec ["setCaptive", _player, false];
diag_log format["Escape debug: %1 is waiting for prison creation.", name _player];

// Wait for params
waituntil{uiSleep 0.5;(!isNil("A3E_ParamsParsed"))};

// Multiplayer: skip prison teleport - player already placed by spawn menu
if (_player getVariable ["A3E_MP_InLobby", true]) then {
	waituntil{uiSleep 0.5; !(_player getVariable ["A3E_MP_InLobby", true])};
};
diag_log format["Escape debug: %1 placed by spawn menu, skipping prison teleport.", name _player];
uiSleep 0.5;
diag_log format["Escape debug: %1 is now ready (serverside).", name _player];

//A3E_PlayerInitializedServer means the player was placed in Prison and is ready for the "Intro"
_player setvariable["A3E_PlayerInitializedServer",true,true];

waituntil{!isNil("A3E_EscapeHasStarted")};

[_player, false] remoteExec ["setCaptive", _player, false];

