#include "\z\tfd\addons\common\script_component.hpp"
/*
 * Name: TFD_common_fnc_mouseKeyUp
 * Author: Nick
 *
 * Arguments:
 * None
 *
 * Return:
 * nil
 *
 * Description:
 * Left mouse button up behaviour for drag to garrison
 *
 */
#define MANOBJECTS ((get3denSelected "object") select {_x isKindOf "CAManBase"})

// Exit conditions
if ((_this select 0) != 0) exitWith {};
if (!GVAR(Garrison)) exitWith {};
if (current3denOperation != "MoveItems") exitWith {};

// Delay execution
0 = [] spawn {
    // See if we have a suitable object
    private _building = GVAR(edenMouseObjects);
    if isNil "_building" exitWith {};
    _building = _building select {!(_x in (get3denSelected "Object"))};
    if (count _building == 0) exitWith {};
    if (count GVAR(posIdxs) == 0) exitWith {};
    _building = _building select 0;
    do3denAction "Undo"; // Undo movement
    collect3denHistory { // Easy CtrlZ undo
        {
            if (_forEachIndex > (count GVAR(posIdxs))) exitWith {};
            private _pos = (_building buildingPos (GVAR(posIdxs) select _forEachIndex));
            _x set3denAttribute ["position",_pos];
            do3denAction "SnapToSurface";
        } forEach MANOBJECTS;
    };
    GVAR(posIdxs) = [];
};