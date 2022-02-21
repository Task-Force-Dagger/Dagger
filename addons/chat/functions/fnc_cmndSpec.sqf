#include "\z\tfd\addons\chat\script_component.hpp"
/*
 * Name = TFD_chat_fnc_cmndSpec
 * Author = Freddo
 *
 * Syntaxes:
 * #spec - Enters spectator
 *
 * Return Value:
 * Void
 *
 * Description:
 * See Syntaxes
 */

IS_CMND_AVAILABLE(GVAR(specUsage),"#spec");

if (call EFUNC(spectator,isOpen)) exitWith {systemChat "TFD Error: Spectator already open."};


0 = [] spawn {
    private _playerObj = player;
    [_playerObj, objNull, true] call EFUNC(spectator,init);
    systemChat "TFD: Entered spectator";
    deleteVehicle _playerObj;
};
