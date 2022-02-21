/*
 *	ARMA EXTENDED ENVIRONMENT
 *	\TFD_common\functions\diagnostics\fn_isDebug.sqf
 *	by Ojemineh
 *	
 *	check if debug is enabled
 *	
 *	Arguments:
 *	nothing
 *	
 *	Return:
 *	<BOOLEAN>
 *	
 *	Example:
 *	[] call TFD_common_fnc_isDebug;
 *	
 */

// -------------------------------------------------------------------------------------------------

private _return = (missionNamespace getVariable ["TFD_debug_enabled", false]);

_return;