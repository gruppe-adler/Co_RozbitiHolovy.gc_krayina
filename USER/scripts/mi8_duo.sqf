private _mi8_1 = "RHS_Mi8AMTSh_vvs" createVehicle [0,0,300];
createVehicleCrew _mi8_1;
_mi8_1 engineOn true;
[_mi8_1, call grad_autoinit_fnc_flightpath_mi8_1] spawn BIS_fnc_unitPlay;

private _mi8_2 = "RHS_Mi8mt_vvs" createVehicle [0,100,300];
createVehicleCrew _mi8_2;
_mi8_2 engineOn true;
[_mi8_2, call grad_autoinit_fnc_flightpath_mi8_2] spawn BIS_fnc_unitPlay;

[_mi8_1] call grad_autoinit_fnc_createCargo;
[_mi8_2] call grad_autoinit_fnc_createCargo;