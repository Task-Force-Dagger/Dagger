/*
 * ARMA EXTENDED ENVIRONMENT
 * \TFD_common\functions\diagnostics\fn_diagLogServer.sqf
 * by Ojemineh
 * 
 * add a rpt-log if debug is enabled
 * 
 * Arguments:
 * 0: type   - <NUMBER>
 * 1: message  - <STRING>
 * 2: params  - <ARRAY>
 * 3: extension - <STRING>
 * 4: modification - <STRING>
 * 
 * Return:
 * nothing
 * 
 * Example:
 * [4, "Player: '%1', Time: '%2'", [player, time], "core"] call TFD_common_fnc_diagLogServer;
 * 
 */

// -------------------------------------------------------------------------------------------------

private ["_level", "_message", "_params", "_extension", "_modification"];

_level   = [_this, 0, 0, [0]] call BIS_fnc_param;
_message  = [_this, 1, "", [""]] call BIS_fnc_param;
_params   = [_this, 2, [], [[]]] call BIS_fnc_param;
_extension  = [_this, 3, "", [""]] call BIS_fnc_param;
_modification = [_this, 4, "TFD", [""]] call BIS_fnc_param;

// -------------------------------------------------------------------------------------------------

["TFD_common_diagLog", [_level, _message, _params, _extension, _modification]] call CBA_fnc_serverEvent;
