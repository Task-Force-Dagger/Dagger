#include "\z\tfd\addons\acre2\script_component.hpp"
/*
 * Name: TFD_acre2_fnc_unitToPreset
 * Author: Snippers
 *
 * Arguments:
 * 0: The Unit <OBJECT>
 *
 * Return:
 * Preset Index (-1 if not found) <NUMBER>
 *
 * Description:
 * Returns the preset number for the specified unit.
 */
params[["_unit",objNull]];


private _unitGroup = group _unit;
private _ourPresetIndex = -1;
private _unitCond = _unit getVariable ["TFD_Network",-1];
private _groupCond = _unitGroup getVariable ["TFD_Network",-1];
if (is3den) then {
    _unitCond = (_unit get3denAttribute "TFD_Network") param [0,-1];
    _groupCond = (_unitGroup get3denAttribute "TFD_Network") param [0,-1];
};

private _networksWithRadioChannels = getMissionConfigValue ['TFD_AcreSettings', []];
if (_networksWithRadioChannels isEqualType "") then { _networksWithRadioChannels = call compile _networksWithRadioChannels};
 {
    private _radioPresetSetting = _x;
    private _radioPresetIdx = _forEachIndex;
    _radioPresetSetting params ["_conditions"];
    private _passes = [_unit, _conditions] call EFUNC(common,evaluateCondArray);
    
    if (_groupCond == _radioPresetIdx) then { _passes = true; };
    if (_unitCond == _radioPresetIdx) then { _passes = true; };
    if (_passes) exitWith {
        _ourPresetIndex = _radioPresetIdx;
    };
} forEach _networksWithRadioChannels;

_ourPresetIndex;