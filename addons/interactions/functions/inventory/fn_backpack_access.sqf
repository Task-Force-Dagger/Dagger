/*
 * ARMA EXTENDED ENVIRONMENT
 * \z\tfd\addons\interactions\functions\inventory\fn_backpack_access.sqf
 * by Ojemineh
 * 
 * access targets backpack
 * 
 * Arguments:
 * 0: unit  - <OBJECT>
 * 1: target - <OBJECT>
 * 
 * Return:
 * nothing
 * 
 * Example:
 * [player, unit1] call TFD_interactions_fnc_backpack_access;
 * 
 */

// -------------------------------------------------------------------------------------------------

private ["_player", "_target"];

_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_target = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

// -------------------------------------------------------------------------------------------------

if (isNull _player) exitWith {};
if (isNull _target) exitWith {};

if !(isPlayer _target) exitWith {};
if (_target getVariable ["ACE_isUnconscious", false]) exitWith {};

// -------------------------------------------------------------------------------------------------

enableCamShake true;
setCamShakeParams [0, 1, 0, 0, true];
addCamShake [5, 1, 5];

if (missionNamespace getVariable ["tfd_interactions_backpack_access_hint", true]) then {
    
    private _playerName = format [hint_tfd_var_1, [_player] call ACE_common_fnc_getName];
    private _iconTemplate = "<img size='2.0' shadow='0' image='%1' />";
    private _iconFile = "z\tfd\addons\interactions\data\icons\search_backpack_ca.paa";
    private _icon = format [_iconTemplate, _iconFile];
    private _hintMessage = format [localize "STR_TFD_Interactions_Hint_Backpack_Access", _playerName, _icon];
    
    [format [hint_tfd_default, _hintMessage], -1, 0] call tfd_fnc_hint;
    
    if !(missionNamespace getVariable ["tfd_interactions_global_sounds", false]) then {
        private _soundClass = selectRandom ["tfd_Action_Backpack_Open_1", "tfd_Action_Backpack_Open_2"];
        playSound _soundClass;
    };
    
};
