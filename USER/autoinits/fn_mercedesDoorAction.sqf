params ["_vehicle"];

["gm_ge_civ_w123", "init", {
	params ["_vehicle"];

	if (isServer) then {
		_vehicle setObjectTextureGlobal [0, "#(rgb,8,8,3)color(0,0,0,1)"];
		_vehicle setObjectTextureGlobal [1, "#(rgb,8,8,3)color(0,0,0,1)"];
	};

	_vehicle addAction
	[
		"Open Left Backdoor",	// title
		{
			params ["_target", "_caller", "_actionId", "_arguments"]; // script

			_target animateDoor ["door_2_1_source", 1];
		},
		nil,		// arguments
		1.5,		// priority
		true,		// showWindow
		true,		// hideOnUse
		"",			// shortcut
		"_target animationSourcePhase 'door_2_1_source' == 0",
		3,			// radius
		false,		// unconscious
		"",			// selection
		""			// memoryPoint
	];

	_vehicle addAction
	[
		"Close Left Backdoor",	// title
		{
			params ["_target", "_caller", "_actionId", "_arguments"]; // script

			_target animateDoor ["door_2_1_source", 0];
		},
		nil,		// arguments
		1.5,		// priority
		true,		// showWindow
		true,		// hideOnUse
		"",			// shortcut
		"_target animationSourcePhase 'door_2_1_source' == 1",
		3,			// radius
		false,		// unconscious
		"",			// selection
		""			// memoryPoint
	];

	_vehicle addAction
	[
		"Turn Beacon on",	// title
		{
			params ["_target", "_caller", "_actionId", "_arguments"]; // script

			[_target,'gm_beacons_blu',true] call gm_core_vehicles_fnc_beaconSwitch
		},
		nil,		// arguments
		1.5,		// priority
		true,		// showWindow
		true,		// hideOnUse
		"",			// shortcut
		"count (_target getVariable ['GM_ACTIVE_BEACONS', [false,[]]] select 1) == 0",
		3,			// radius
		false,		// unconscious
		"",			// selection
		""			// memoryPoint
	];

	_vehicle addAction
	[
		"Turn Beacon off",	// title
		{
			params ["_target", "_caller", "_actionId", "_arguments"]; // script

			[_target,'gm_beacons_blu',false] call gm_core_vehicles_fnc_beaconSwitch
		},
		nil,		// arguments
		1.5,		// priority
		true,		// showWindow
		true,		// hideOnUse
		"",			// shortcut
		"count (_target getVariable ['GM_ACTIVE_BEACONS', [false,[]]] select 1) > 0",
		3,			// radius
		false,		// unconscious
		"",			// selection
		""			// memoryPoint
	];

}, true, [], true] call CBA_fnc_addClassEventHandler;

/*

[this,'gm_beacons_blu',true] call gm_core_vehicles_fnc_beaconSwitch
 "LightsFog_unhide_source"
 ""LightsFog_unhide_source""
 ""LightsFormation_unhide_source""
  ""horseshoe_01_unhide""
  "LightsBlackOut_unhide_source"
  sirenLights_01_unhide"
   sirenLights_02_unhide"
    sirenLights_03_unhide"
	"beacon_light_unhide_source"
	"beacon_01_unhide"

 */