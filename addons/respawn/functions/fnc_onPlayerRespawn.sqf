#include "script_component.hpp"
/*
 * Author: 3Mydlo3
 * Function handles onPlayerRespawn event.
 *
 * Arguments:
 * 0: New player unit <OBJECT>
 * 1: Old player unit <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [bob, ted] call tfd_respawn_fnc_onPlayerRespawn
 *
 * Public: No
 */

params ["_newUnit", "_oldUnit"];

// Restore starting loadout
[{_this setUnitLoadout GVAR(savedEquipment)}, _newUnit] call CBA_fnc_execNextFrame;

// Reset time elapsed counter
GVAR(timeElapsed) = 0;

// Fixing warning spam from ambientLife. Also, if I hear "Look a bunny!" one more bloody time...
sleep 0.2;
enableEnvironment [false, true];

////////////////////////////////////////////////////////////////////////////////
// Shut the hell up  - Mute Orders and Reports						 //
////////////////////////////////////////////////////////////////////////////////

{_x setSpeaker "NoVoice"} forEach playableUnits;

enableSentences false;

call TFD_fnc_PlayerAddActions;
player call TFD_Player_fnc_setupPlayer;

nil
