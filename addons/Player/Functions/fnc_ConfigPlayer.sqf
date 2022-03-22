#include "script_component.hpp"
/*
Function: TFD_Player_fnc_ConfigPlayer

Description:
    Used to configure basic player attributes and equipment.

Arguments:
    _unit - Player the setup is applied to. <OBJECT>
    _Section - The Section the Player is in. <STRING>
    _Traits - Which Traits the player has, can be more than one. <ARRAY>
    _Loadout - Name of Loadout to call. Changes player equipment to Loadout from TFD. <STRING>

Examples:
    (begin example)
        [this] call TFD_Player_fnc_ConfigPlayer;
        [this, "1 Section"] call TFD_Player_fnc_ConfigPlayer;
        [this, "909 EAW", ["Pilot"]] call TFD_Player_fnc_ConfigPlayer;
        [this, "Command", ["Pilot", "Mission Maker"]] call TFD_Player_fnc_ConfigPlayer;
        [this, "909 EAW", ["Pilot"], "3CB Pilot"] call TFD_Player_fnc_ConfigPlayer;
    (end)

Author:
    MitchJC
*/

params [
    "_unit",
    ["_Section", "Support"],
    ["_Traits", []],
    ["_Loadout", []]
];

if (_Section isEqualto -1) exitwith {};
call {
    if (_Section isEqualto 0) exitwith {_Section = "HQ"};
    if (_Section isEqualto 1) exitwith {_Section = "USASOC"};
    if (_Section isEqualto 2) exitwith {_Section = "CANSOFCOM"};
    if (_Section isEqualto 3) exitwith {_Section = "JSOW"};
    if (_Section isEqualto 4) exitwith {_Section = "BOLO"};
};

if (local _unit) then {
    private ["_TFD_Network"];

    call {
            if (_Section == "HQ") exitwith {
                    _TFD_Network = "HQ";
            };
            if (_Section == "USASOC") exitwith {
                    _TFD_Network = "USASOC";
            };
            if (_Section == "CANSOFCOM") exitwith {
                    _TFD_Network = "CANSOFCOM";
            };
            if (_Section == "JSOW") exitwith {
                    _TFD_Network = "JSOW";
            };
            if (_Section == "BOLO") exitwith {
                    _TFD_Network = "BOLO";
            };
    };
    //=========== Set Section
    _unit setVariable ["TFD_Section", _Section, true];
    _unit setVariable ["TFD_Network", _Section, true];

        //========== Trait Config
    private _TraitsArray = call {
        if ((typeName _Traits) isEqualTo "STRING") exitWith { [_Traits]};
        _Traits
    };

    if !(_TraitsArray isEqualTo []) then {
        {
            _unit setUnitTrait [_x, true, true];
        } forEach _TraitsArray;
    };
    //========ACE Player Traits
    if (isClass (configFile >> "CfgPatches" >> "ace_main")) then {

        _unit setvariable ["ace_advanced_fatigue_performanceFactor",2.0,true];

        if (_unit getunittrait "Medic") then { _unit setVariable ["ace_medical_medicClass", 1, true]};
        if (_unit getunittrait "Doctor") then { _unit setVariable ["ace_medical_medicClass", 2, true]};
        if (_unit getunittrait "Engineer") then { _unit setVariable ["ace_isEngineer", 1, true]};
        if (_unit getunittrait "Adv Engineer") then { _unit setVariable ["ace_isEngineer", 2, true]};
    };
};