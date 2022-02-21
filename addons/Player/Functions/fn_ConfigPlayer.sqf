/*
Function: TFD_fnc_ConfigPlayer

Description:
    Used to configure basic player attributes and equipment.

Arguments:
    _unit - Player the setup is applied to. <OBJECT>
    _Section - The Section the Player is in. <STRING>
    _Traits - Which Traits the player has, can be more than one. <ARRAY>
    _Loadout - Name of Loadout to call. Changes player equipment to Loadout from TFD. <STRING>

Examples:
    (begin example)
        [this] call TFD_fnc_ConfigPlayer;
        [this, "1 Section"] call TFD_fnc_ConfigPlayer;
        [this, "909 EAW", ["Pilot"]] call TFD_fnc_ConfigPlayer;
        [this, "Command", ["Pilot", "Mission Maker"]] call TFD_fnc_ConfigPlayer;
        [this, "909 EAW", ["Pilot"], "3CB Pilot"] call TFD_fnc_ConfigPlayer;
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
};


if (local _unit) then {

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

    //=========== Patches
    [_unit, _Section] call TFD_fnc_Patches;

    //=========== Set Section
    _unit setVariable ["TFD_Section", _Section, true];
    _unit call TFD_role_fnc_role;
    _unit call TFD_rank_fnc_rank;
};

//========== SideChat Config
if (hasinterface) then {
    if ((isClass (configFile >> "CfgPatches" >> "task_force_radio")) && (EnableSideChat)) then {
        if ((_Section == "Command") || (_Section == "Grey")) then {
            1 enablechannel [true, false];
        };
    };
    _unit call TFD_role_fnc_role;
    _unit call TFD_rank_fnc_rank;
};



