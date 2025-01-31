[] spawn {
  waitUntil {!isNull player};
  waitUntil {  time > 3 };

  {
    private _curator = _x;
    
      _curator addEventHandler ["CuratorGroupPlaced", {
          params ["", "_group"];

          { 
              _x setSkill ["aimingAccuracy", 0.3];
              _x setSkill ["aimingShake", 0.2]; 
              _x setSkill ["aimingSpeed", 0.9]; 
              _x setSkill ["endurance", 0.6]; 
              _x setSkill ["spotDistance", 1]; 
              _x setSkill ["spotTime", 0.9]; 
              _x setSkill ["courage", 1]; 
              _x setSkill ["reloadSpeed", 1]; 
              _x setSkill ["commanding", 1];
              _x setSkill ["general", 1];

          } forEach units _group;

          ["GRAD_missionControl_setServerAsOwner", [_group]] call CBA_fnc_serverEvent;
      }];

      _curator addEventHandler ["CuratorObjectPlaced", {
          params ["", "_object"];
          
          _object setSkill ["aimingAccuracy", 0.3];
          _object setSkill ["aimingShake", 0.2]; 
          _object setSkill ["aimingSpeed", 0.9]; 
          _object setSkill ["endurance", 0.6]; 
          _object setSkill ["spotDistance", 1]; 
          _object setSkill ["spotTime", 0.9]; 
          _object setSkill ["courage", 1]; 
          _object setSkill ["reloadSpeed", 1]; 
          _object setSkill ["commanding", 1];
          _object setSkill ["general", 1];

          if (_object isKindOf "CAManBase") then {
             if (count units _object == 1) then {
                 ["GRAD_missionControl_setServerAsOwner", [group _object]] call CBA_fnc_serverEvent;
             };
          } else {
             if (count crew _object > 1) then {
                 ["GRAD_missionControl_setServerAsOwner", [group (crew _object select 0)]] call CBA_fnc_serverEvent;
             };
         };

      }];

  } forEach allCurators;
};


["Rozbiti Holovy - Convoy", "enemy_convoy_motorized", {
     params ["_position", "_object"];
     
     missionNameSpace setVariable ["enemy_convoy_motorized", true, true];

     // remove this element from zeus
     private _index = [zen_custom_modules_list, "Motorized"] call BIS_fnc_findNestedElement;
     zen_custom_modules_list deleteAt _index;
     [] call zen_common_fnc_reloadDisplay;
     
}] call zen_custom_modules_fnc_register;

["Rozbiti Holovy - Convoy", "enemy_convoy_tanks", {
     params ["_position", "_object"];
     
     missionNameSpace setVariable ["enemy_convoy_tanks", true, true];

     // remove this element from zeus
     private _index = [zen_custom_modules_list, "enemy_convoy_tanks"] call BIS_fnc_findNestedElement;
     zen_custom_modules_list deleteAt _index;
     [] call zen_common_fnc_reloadDisplay;
     
}] call zen_custom_modules_fnc_register;

["Rozbiti Holovy - Convoy", "enemy_convoy_apc", {
     params ["_position", "_object"];
     
     missionNameSpace setVariable ["enemy_convoy_apc", true, true];

     // remove this element from zeus
     private _index = [zen_custom_modules_list, "enemy_convoy_apc"] call BIS_fnc_findNestedElement;
     zen_custom_modules_list deleteAt _index;
     [] call zen_common_fnc_reloadDisplay;
     
}] call zen_custom_modules_fnc_register;

["Rozbiti Holovy - Convoy", "enemy_convoy_trucks_1", {
     params ["_position", "_object"];
     
     missionNameSpace setVariable ["enemy_convoy_trucks_1", true, true];

     // remove this element from zeus
     private _index = [zen_custom_modules_list, "enemy_convoy_trucks_1"] call BIS_fnc_findNestedElement;
     zen_custom_modules_list deleteAt _index;
     [] call zen_common_fnc_reloadDisplay;
     
}] call zen_custom_modules_fnc_register;

["Rozbiti Holovy - Convoy", "convoy_zementska", {
     params ["_position", "_object"];
     
     missionNameSpace setVariable ["convoy_zementska", true, true];

     // remove this element from zeus
     private _index = [zen_custom_modules_list, "convoy_zementska"] call BIS_fnc_findNestedElement;
     zen_custom_modules_list deleteAt _index;
     [] call zen_common_fnc_reloadDisplay;
     
}] call zen_custom_modules_fnc_register;


["Rozbiti Holovy - Mission Progress", "Speech Fabrik", {
     params ["_position", "_object"];
     
     [[], "USER\scripts\speechFabrik.sqf"] remoteExec ["BIS_fnc_execVM"];

      // remove this element from zeus
     private _index = [zen_custom_modules_list, "Speech Fabrik"] call BIS_fnc_findNestedElement;
     zen_custom_modules_list deleteAt _index;
     [] call zen_common_fnc_reloadDisplay;
     
}] call zen_custom_modules_fnc_register;

["Rozbiti Holovy - Mission Progress", "Speech Kita", {
     params ["_position", "_object"];
     
     [[], "USER\scripts\speechKita.sqf"] remoteExec ["BIS_fnc_execVM"];

      // remove this element from zeus
     private _index = [zen_custom_modules_list, "Speech Kita"] call BIS_fnc_findNestedElement;
     zen_custom_modules_list deleteAt _index;
     [] call zen_common_fnc_reloadDisplay;
     
}] call zen_custom_modules_fnc_register;

["Rozbiti Holovy - Mission Progress", "Speech Fabrik", {
     params ["_position", "_object"];
     
     [[], "USER\scripts\speechFabrik.sqf"] remoteExec ["BIS_fnc_execVM"];

      // remove this element from zeus
     private _index = [zen_custom_modules_list, "Speech Fabrik"] call BIS_fnc_findNestedElement;
     zen_custom_modules_list deleteAt _index;
     [] call zen_common_fnc_reloadDisplay;
     
}] call zen_custom_modules_fnc_register;


["Rozbiti Holovy - Mission Progress", "President Landing at LZ", {
     params ["_position", "_object"];
     
     [] call grad_utils_fnc_startPresidentEvac;

      // remove this element from zeus
     private _index = [zen_custom_modules_list, "President Landing at LZ"] call BIS_fnc_findNestedElement;
     zen_custom_modules_list deleteAt _index;
     [] call zen_common_fnc_reloadDisplay;
     
}] call zen_custom_modules_fnc_register;

["Rozbiti Holovy - Mission Progress", "President Liftoff", {
     params ["_position", "_object"];
     
     missionNamespace setVariable ["GRAD_takeOffPresident", true, true];

      // remove this element from zeus
     private _index = [zen_custom_modules_list, "President Liftoff"] call BIS_fnc_findNestedElement;
     zen_custom_modules_list deleteAt _index;
     [] call zen_common_fnc_reloadDisplay;
     
}] call zen_custom_modules_fnc_register;



["Rozbiti Holovy - Helicopters", "Mi8 Duo", {
     params ["_position", "_object"];
     
    [] execVM "USER\scripts\mi8_duo.sqf";
     
}] call zen_custom_modules_fnc_register;

["Rozbiti Holovy - Helicopters", "Mi8 Triple", {
     params ["_position", "_object"];
     
    [] execVM "USER\scripts\mi8_triple.sqf";
     
}] call zen_custom_modules_fnc_register;

["Rozbiti Holovy - Helicopters", "Mi28 Duo", {
     params ["_position", "_object"];
     
    [] execVM "USER\scripts\mi28_duo.sqf";
     
}] call zen_custom_modules_fnc_register;





["Rozbiti Holovy - GRAD Leavenotes", "Spawn Note", {
          params ["_modulePosition"]; 
          private _position = ASLtoAGL _modulePosition;

          ["Example Dialog", [["EDIT", "Your text?", "string ping"]], {
			   params ["_message", "_position"]; 
                  // systemchat str _position; 
                  // systemchat (_message select 0);
			   [_position, random 360, _message select 0, ["somewhat",["cramped","EtelkaNarrowMediumPro"]]] remoteExec ["GRAD_leaveNotes_fnc_spawnNote", 2, false];
		  }, { systemchat "cancelled"; }, _position] call zen_dialog_fnc_create;        
     }
] call zen_custom_modules_fnc_register;




    

["Guardian Angel - End", "Create Chair Circle",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  _position = ASLToAGL _position;
  ["Land_CampingChair_V1_F", _position, count (PlayableUnits + switchableUnits)] call grad_zeusmodules_fnc_createChairCircle;

}] call zen_custom_modules_fnc_register;



