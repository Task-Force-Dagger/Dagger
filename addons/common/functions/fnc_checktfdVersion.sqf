#include "\z\tfd\addons\common\script_component.hpp"
/*
 * Name: TFD_common_fnc_checkTFDVersion
 * Author: Snippers
 *
 * Arguments:
 *  Array - Version to check
 *
 * Return:
 * Boolean
 *
 * Description:
 * Checks if TFD Mission version is larger than the input version;
 */

params [
    ["_input",[0,0,0]]
];

private _tfdVersion = getMissionConfigValue ["tfd_version",[0,0,0]];

([_tfdVersion,_input] call EFUNC(common,checkVersionArray));

