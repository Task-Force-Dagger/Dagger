/*
 *	ARMA EXTENDED ENVIRONMENT
 *	\z\tfd\addons\modules\functions\fn_initialize.sqf
 *	by Ojemineh
 *	
 *	initialize modules addon
 *	
 *	Arguments:
 *	nothing
 *	
 *	Return:
 *	nothing
 *	
 *	Example:
 *	[] call TFD_modules_fnc_initialize;
 *	
 */

// -------------------------------------------------------------------------------------------------

private _version = ["tfd_modules"] call TFD_fnc_getAddonVersion;
[4, "Addon (v%1) loaded...", [_version], "modules"] call TFD_common_fnc_log;

// -------------------------------------------------------------------------------------------------
