
private _sound = zementska say3D ["speech_wohnhaus", 200];

zementska setRandomLip true;
zementska setvariable ["speech_aborted", false];
zementska setvariable ["speech_running", true];

[{
	params ["_sound"];
	isNull _sound || zementska getvariable ["speech_aborted", false]
},{
	params ["_sound"];
	if (!isNull _sound) then {
		deleteVehicle _sound;
	};
	zementska setRandomLip false;
	zementska setvariable ["speech_running", false];
}, [_sound]] call CBA_fnc_waitUntilAndExecute;