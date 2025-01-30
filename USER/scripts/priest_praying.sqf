params ["_unit"];

if (hasInterface) then {
	_unit switchmove "Acts_Grieving";
	
	_unit addEventHandler ["AnimDone", {
		params ["_unit"];

		if (!alive _unit) then { _unit removeEventHandler ["AnimDone", _thisEventhandler]; };

		_unit switchmove "Acts_Grieving"; 
	}];
};

if (!isServer) exitWith {};

sleep 1;

private _sound = "priest_prayer";
[_unit, [_sound, 25]] remoteExec ["say3D", -2]; // clients

private _soundExists = _unit say3D [_sound, 25];

[{
	params ["_soundExists"];
	isNull _soundExists
},{
	params ["_soundExists", "_unit"];

	[_unit] execVM "USER\scripts\priest_praying.sqf";

}, [_soundExists, _unit]] call CBA_fnc_waitUntilAndExecute;
