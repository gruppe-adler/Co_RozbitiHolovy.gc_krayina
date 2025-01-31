private _mi28_1 = "rhs_mi28_1n_vvs" createVehicle [0,0,300];
createVehicleCrew _mi28_1;
_mi28_1 engineOn true;
[_mi28_1, call grad_autoinit_fnc_flightpath_mi28_1] spawn BIS_fnc_unitPlay;

private _mi28_2 = "rhs_mi28n_vvs" createVehicle [0,100,300];
createVehicleCrew _mi28_2;
_mi28_2 engineOn true;
[_mi28_2, call grad_autoinit_fnc_flightpath_mi28_2] spawn BIS_fnc_unitPlay;
