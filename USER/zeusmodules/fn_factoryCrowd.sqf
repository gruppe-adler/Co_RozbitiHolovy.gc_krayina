params ["_unit"];

private _group = group _unit;
private _units = units _group;

doStop _unit;
// _unit doWatch zementska;

[{
	params ["_unit"];

	[{
		params ["_args", "_handle"];
		_args params ["_unit"];

		if (!isNil "zementska") then {

			if (isNull _unit) exitWith {
				[_handle] call CBA_fnc_removePerFrameHandler;
			};
			
			_unit dofollow _unit;
			_unit setformdir (_unit getDir zementska);
			_unit moveTo (getpos zementska);
			// _unit setDir (_unit getRelDir zementska);
		};

	}, 1, [_unit]] call CBA_fnc_addPerFrameHandler;

}, [_unit], random 1] call CBA_fnc_waitAndExecute;
