params ["_unit"];

if (!isServer) exitWith {};

sleep 1;

private _sound = "priest_prayer";
[_unit, [_sound, 50]] remoteExec ["say3D", -2]; // clients

private _soundExists = _unit say3D [_sound, 50];

[{
	params ["_soundExists"];
	isNull _soundExists
},{
	params ["_soundExists", "_unit"];

	[_unit] execVM "USER\scripts\priest_praying.sqf";

}, [_soundExists, _unit]] call CBA_fnc_waitUntilAndExecute;
