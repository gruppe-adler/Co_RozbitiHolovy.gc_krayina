params ["_vehicle"];

private _group = createGroup east;

{
	private _unit = _group createUnit [_x, [0,0,0], [], 0, "NONE"];
	_unit moveInCargo _vehicle;
} forEach [
	"rhs_msv_emr_sergeant",
	"rhs_msv_emr_efreitor",
	"rhs_msv_emr_grenadier_rpg",
	"rhs_msv_emr_strelok_rpg_assist",
	"rhs_msv_emr_machinegunner",
	"rhs_msv_emr_LAT",
	"rhs_msv_emr_rifleman",
	"rhs_msv_emr_efreitor",
	"rhs_msv_emr_grenadier_rpg",
	"rhs_msv_emr_strelok_rpg_assist",
	"rhs_msv_emr_machinegunner",
	"rhs_msv_emr_LAT",
	"rhs_msv_emr_rifleman",
	"rhs_msv_emr_efreitor",
	"rhs_msv_emr_grenadier_rpg",
	"rhs_msv_emr_strelok_rpg_assist",
	"rhs_msv_emr_machinegunner",
	"rhs_msv_emr_LAT",
	"rhs_msv_emr_rifleman",
	"rhs_msv_emr_efreitor",
	"rhs_msv_emr_grenadier_rpg",
	"rhs_msv_emr_strelok_rpg_assist",
	"rhs_msv_emr_machinegunner",
	"rhs_msv_emr_rifleman"
];

[{
	params ["_vehicle"];

	isTouchingGround _vehicle
},{
	params ["_vehicle", "_group"];

	[{
		params ["_group"];
		{
			moveOut _x; 
		} forEach (units _group);
	}, [_group], random 4] call CBA_fnc_waitAndExecute;

}, [_vehicle, _group]] call CBA_fnc_waitUntilAndExecute;
