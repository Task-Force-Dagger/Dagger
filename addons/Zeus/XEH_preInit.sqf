#include "script_component.hpp"
// AISpawns Modules

[
    "tfd_Zeus_Module_AISpawnsEast",
    "CHECKBOX",
    ["Zeus Module - AI Spawn - East", "Enable the Spawn AI - East Zeus module for use with ZEN"],
    COMPONENT_NAME,
    true,
    true, {
        params ["_value"];
        if ((!isClass (configFile >> "CfgPatches" >> "zen_main")) || (!_value)) exitWith {};

        ["TFD", "AI Spawn - East", {_this call tfd_fnc_moduleAISpawnsEastZeus}, "\z\tfd\addons\media\images\icons\AI EAST.paa"] call zen_custom_modules_fnc_register;
    }
] call CBA_fnc_addSetting;

[
    "tfd_Zeus_Module_AISpawnsIndep",
    "CHECKBOX",
    ["Zeus Module - AI Spawn - Independent", "Enable the Spawn AI - Independent Zeus module for use with ZEN"],
    COMPONENT_NAME,
    true,
    true, {
        params ["_value"];
        if ((!isClass (configFile >> "CfgPatches" >> "zen_main")) || (!_value)) exitWith {};

        ["TFD", "AI Spawn - Independent", {_this call tfd_fnc_moduleAISpawnsIndepZeus}, "\z\tfd\addons\media\images\icons\AI INDEP.paa"] call zen_custom_modules_fnc_register;
    }
] call CBA_fnc_addSetting;

[
    "tfd_Zeus_Module_AISpawnsWest",
    "CHECKBOX",
    ["Zeus Module - AI Spawn - West", "Enable the Spawn AI - West Zeus module for use with ZEN"],
    COMPONENT_NAME,
    true,
    true, {
        params ["_value"];
        if ((!isClass (configFile >> "CfgPatches" >> "zen_main")) || (!_value)) exitWith {};

        ["TFD", "AI Spawn - West", {_this call tfd_fnc_moduleAISpawnsWestZeus}, "\z\tfd\addons\media\images\icons\AI WEST.paa"] call zen_custom_modules_fnc_register;
    }
] call CBA_fnc_addSetting;

// CivilianSpawns Module
[
    "tfd_Zeus_Module_CivilianSpawns",
    "CHECKBOX",
    ["Zeus Module - AI Spawn - Civilian", "Enable the Spawn AI Civilians Zeus module for use with ZEN"],
    COMPONENT_NAME,
    true,
    true, {
        params ["_value"];
        if ((!isClass (configFile >> "CfgPatches" >> "zen_main")) || (!_value)) exitWith {};

        ["TFD", "AI Spawn - Civilian", {_this call tfd_fnc_moduleCivilianSpawnsZeus}, "\z\tfd\addons\media\images\Icons\AI CIV.paa"] call zen_custom_modules_fnc_register;
    }
] call CBA_fnc_addSetting;

// SafeZone Module
[
    "tfd_Zeus_Module_SafeZone",
    "CHECKBOX",
    ["Zeus Module - Safe Zone", "Enable the Safe Zone Zeus module for use with ZEN"],
    COMPONENT_NAME,
    true,
    true, {
        params ["_value"];
        if ((!isClass (configFile >> "CfgPatches" >> "zen_main")) || (!_value)) exitWith {};

        ["TFD", "Safe Zone", {_this call tfd_fnc_moduleSafeZoneZeus}, "\z\tfd\addons\media\images\Icons\Safe_Zone.paa"] call zen_custom_modules_fnc_register;
    }
] call CBA_fnc_addSetting;

// MedicalDummy Module
[
    "tfd_Zeus_Module_MedicalDummy",
    "CHECKBOX",
    ["Zeus Module - Medical Dummy", "Enable the Medical Dummy Zeus module for use with ZEN"],
    COMPONENT_NAME,
    false,
    true, {
        params ["_value"];
        if ((!isClass (configFile >> "CfgPatches" >> "zen_main")) || (!_value)) exitWith {};

        ["TFD", "Medical Dummy", {_this call tfd_fnc_moduleCasualty}, "z\tfd\addons\Media\images\icons\Medical Area.paa"] call zen_custom_modules_fnc_register;
    }
] call CBA_fnc_addSetting;