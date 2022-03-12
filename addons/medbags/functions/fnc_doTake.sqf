#include "..\script_component.hpp"    
/*
 * ARMA EXTENDED ENVIRONMENT
 * \tfd_medical\supplies\functions\fn_doUnpackFirstAid.sqf
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
 * [player] call TFD_medical_supplies_fnc_doUnpackFirstAid;
 * 
 */

// -------------------------------------------------------------------------------------------------

params ["_unit", "_target"];

_target removeItem "tfd_medbags_FirstAid";

[_unit, "tfd_medbags_FirstAid", 1, _order, _overflow] call tfd_common_fnc_addItem;