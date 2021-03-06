/*
 * ARMA EXTENDED ENVIRONMENT
 * \TFD_common\functions\addons\fn_getAddonRequiredVersion.sqf
 * by Ojemineh
 * 
 * get addon required version
 * 
 * Arguments:
 * 0: classname - <STRING>
 * 
 * Return:
 * <STRING>
 * 
 * Example:
 * ["tfd_common"] call TFD_common_fnc_getAddonRequiredVersion;
 * 
 */

// -------------------------------------------------------------------------------------------------

private ["_classname"];

_classname = [_this, 0, "", [""]] call BIS_fnc_param;

// -------------------------------------------------------------------------------------------------

private _return = 0;

if (isClass (configfile >> "CfgPatches" >> _classname)) then {
    _return = getNumber (configfile >> "CfgPatches" >> _classname >> "requiredVersion");
};

_return;