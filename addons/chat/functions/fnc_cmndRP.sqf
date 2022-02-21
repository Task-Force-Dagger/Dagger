#include "\z\tfd\addons\chat\script_component.hpp"
/*
 * Name = TFD_chat_fnc_cmndRP
 * Author = Freddo
 *
 * Syntaxes:
 * #rp - Resets player position.
 *
 * Return Value:
 * Void
 *
 * Description:
 * See Syntaxes
 */

IS_CMND_AVAILABLE(GVAR(rpUsage),"#rp");

private _safePos = (getPosATL CURUNIT) findEmptyPosition [0, 25, (typeOf CURUNIT)];

if (count _safePos == 3) exitWith {
    _safePos set [2, 0];
    CURUNIT setPosATL _safePos;
    systemChat "TFD: Reset player position";
};
systemChat "TFD Error: Unable to reset player position";
