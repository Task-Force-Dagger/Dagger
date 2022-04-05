#include "script_component.hpp"

if !(hasInterface) exitWith {};

[{
        (alive player)
}, {

    // Fixing warning spam from ambientLife. Also, if I hear "Look a bunny!" one more bloody time...
        enableEnvironment [false, true];

    // Shut the hell up  - Mute Orders and Reports
        {_x setSpeaker "NoVoice"} forEach playableUnits;

        enableSentences false;

        player call TFD_fnc_PlayerAddActions;

        [ format [hint_TFD_default, "The freqs have been freqed, and frequed good they have"] ] call tfd_fnc_hint;

        //=========== Rank role
        player call TFD_rank_fnc_rank;
        player call TFD_role_fnc_role;

        //=========== Patches
       // [player, _TFD_Section] call TFD_fnc_Patches;

        [ format [hint_TFD_default, "Hooah"] ] call tfd_fnc_hint;
},[player]] call CBA_fnc_waitUntilAndExecute;