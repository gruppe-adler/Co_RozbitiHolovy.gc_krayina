params ["_unit"];

grad_createBouquet = {
	params ["_unit"];

	private _flowers = "FlowerBouquet_01_F" createVehicle [0,0,0];

	_flowers attachTo [_unit, [0,0.02,0.05], "righthand", true];
	private _yaw = 45; private _pitch = -20; private _roll = 0;

	_flowers setVectorDirAndUp [
		[sin _yaw * cos _pitch, cos _yaw * cos _pitch, sin _pitch],
		[[sin _roll, -sin _pitch, cos _roll * cos _pitch], -_yaw] call BIS_fnc_rotateVector2D
	];

	_unit setVariable ["grad_flowers", _flowers, true];
};

grad_dropBouquet = {
	params ["_unit"];

	{ detach _x; } forEach attachedObjects _unit;

	_unit setVariable ["grad_flowers", objNull, true];
};

_unit addAction
[
	"Create Bouquet",	// title
	{
		params ["_target", "_caller", "_actionId", "_arguments"]; // script

		[_caller] call grad_createBouquet;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"_this == _target && isNull (_target getVariable ['grad_flowers', objNull])",		// condition
	50,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_unit addAction
[
	"Drop Bouquet",	// title
	{
		params ["_target", "_caller", "_actionId", "_arguments"]; // script

		[_caller] call grad_dropBouquet;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"_this == _target && !isNull (_target getVariable ['grad_flowers', objNull])",		// condition
	50,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];


