#include "..\script_component.hpp"    
/*
 * ARMA EXTENDED ENVIRONMENT
 * \tfd_medical\supplies\functions\fn_doUnpackDrugKit.sqf
 * by Ojemineh
 * 
 * unpack medical supplies
 * 
 * Arguments:
 * 0: unit - <OBJECT>
 * 
 * Return:
 * nothing
 * 
 * Example:
 * [player] call TFD_medical_supplies_fnc_doUnpackDrugKit;
 * 
 */

// -------------------------------------------------------------------------------------------------

private ["_unit"];

_unit = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

// -------------------------------------------------------------------------------------------------

if (isNull _unit) exitWith {};

// -------------------------------------------------------------------------------------------------

[_unit] spawn {
    
    params ["_unit"];
    
    _unit playAction "Gear";
    
    if (vehicle _unit != _unit) then {
        playSound QGVAR(Medical_MedicKit_Open_1);
    } else {
        private _pitch = random [0.6, 1, 1.4];
        [_unit, QGVAR(Medical_MedicKit_Open_1), [], 30, 1000, -1, _pitch] call TFD_common_fnc_play3dSound;
    };
    
    TFD_MEDICAL_SUPPLIES_UNPACK_SUCCESS = false;
    TFD_MEDICAL_SUPPLIES_UNPACK_FAILURE = false;
    
    [
        2,
        [], { TFD_MEDICAL_SUPPLIES_UNPACK_SUCCESS = true; }, { TFD_MEDICAL_SUPPLIES_UNPACK_FAILURE = true; },
        localize "Unpack Drug Kit....",
 {true},
        ["isNotInside", "isNotSitting", "isNotSwimming"]
    ] call ACE_common_fnc_progressBar;
    
    waitUntil {if ((TFD_MEDICAL_SUPPLIES_UNPACK_SUCCESS) || (TFD_MEDICAL_SUPPLIES_UNPACK_FAILURE)) exitWith {true}; false};
    
    if (TFD_MEDICAL_SUPPLIES_UNPACK_SUCCESS) exitWith {
        
        _unit removeItem "tfd_medbags_DrugKit";
        
        private _order = [3,1,2];
        private _overflow = false;
        
        [_unit, "tfd_medical_VPN", 24, _order, _overflow] call tfd_common_fnc_addItem;
        [_unit, "tfd_medical_epinephrine", 4, _order, _overflow] call tfd_common_fnc_addItem;
        [_unit, "tfd_medical_fentanyl", 4, _order, _overflow] call tfd_common_fnc_addItem;
        [_unit, "tfd_medical_ketamine", 8, _order, _overflow] call tfd_common_fnc_addItem;
        [_unit, "tfd_medical_morphine", 4, _order, _overflow] call tfd_common_fnc_addItem;
        [_unit, "tfd_medical_naloxone", 4, _order, _overflow] call tfd_common_fnc_addItem;
    
        _unit playActionNow "Stand";
        
    };
    
    if (TFD_MEDICAL_SUPPLIES_UNPACK_FAILURE) exitWith {
        
        [_unit, QGVAR(Medical_MedicKit_Open_1)] call TFD_common_fnc_stop3dSound;
        
        _unit playActionNow "Stand";
        
    };
    
};
