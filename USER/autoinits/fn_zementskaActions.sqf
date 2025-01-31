

zementska addAction
[
	"Start Speech Fabrik",	// title
	{
		params ["_target", "_caller", "_actionId", "_arguments"]; // script

		[[], "USER\scripts\speechFabrik.sqf"] remoteExec ["BIS_fnc_execVM"];
		missionNamespace setVariable ["grad_speechFabrik_started", true, true];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"_target == _caller && !(missionNameSpace getVariable ['grad_speechFabrik_started', false])",
	3,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

zementska addAction
[
	"Start Speech Kita",	// title
	{
		params ["_target", "_caller", "_actionId", "_arguments"]; // script

		[[], "USER\scripts\speechKita.sqf"] remoteExec ["BIS_fnc_execVM"];
		missionNamespace setVariable ["grad_speechKita_started", true, true];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"_target == _caller && missionNameSpace getVariable ['grad_speechFabrik_started', false] && !(missionNameSpace getVariable ['grad_speechKita_started', false])",
	3,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

zementska addAction
[
	"Start Speech Wohnhaus",	// title
	{
		params ["_target", "_caller", "_actionId", "_arguments"]; // script

		[[], "USER\scripts\speechWohnhaus.sqf"] remoteExec ["BIS_fnc_execVM"];
		missionNamespace setVariable ["grad_speechWohnhaus_started", true, true];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"_target == _caller && missionNameSpace getVariable ['grad_speechKita_started', false] && !(missionNameSpace getVariable ['grad_speechWohnhaus_started', false])",
	3,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

