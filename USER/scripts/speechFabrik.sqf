
private _sound = fabrikspeaker say3D ["speech_fabrik", 500];
private _sound2 = zementska say3D ["speech_fabrik_person", 100];

zementska setRandomLip true;
zementska setvariable ["speech_running", true];
zementska setvariable ["speech_aborted", false];

[{
	params ["_sound"];
	isNull _sound || zementska getvariable ["speech_aborted", false]
},{
	params ["_sound"];
	if (!isNull _sound) then {
		deleteVehicle _sound;
	};
	zementska say3D ["speech_fabrik_applause", 200];
	zementska setRandomLip false;
	zementska setvariable ["speech_running", false];
}, [_sound]] call CBA_fnc_waitUntilAndExecute;
