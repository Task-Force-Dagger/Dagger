#include "script_component.hpp"

if !(hasInterface) exitWith {};

[{
        call acre_api_fnc_isInitialized && (alive player)
}, {
        private _TFD_Section = player getVariable "TFD_Section";
        private _TFD_RADIO = player getVariable "TFD_Network";

    // Fixing warning spam from ambientLife. Also, if I hear "Look a bunny!" one more bloody time...
        enableEnvironment [false, true];

    // Shut the hell up  - Mute Orders and Reports
        {_x setSpeaker "NoVoice"} forEach playableUnits;

        enableSentences false;

        player call TFD_fnc_PlayerAddActions;

        //=========== Set ACRE
        //REMOVE ALL RADIOS FROM PLAYERS
        _radios = [] call acre_api_fnc_getCurrentRadioList;
        { player removeItem _x } forEach _radios;

        [RADIO_SR, _TFD_RADIO] call ACRE_FUNC(setPreset);
        [RADIO_MR, _TFD_RADIO] call ACRE_FUNC(setPreset);
        [RADIO_LR, "default"] call ACRE_FUNC(setPreset);

        if (local player) then {
                call {
                if (_TFD_Section == "HQ") exitwith {
                        player addItem "ACRE_PRC152"; 
                };
                if (_TFD_Section == "USASOC") exitwith {
                        player addItem "ACRE_PRC148"; 
                };
                if (_TFD_Section == "CANSOFCOM") exitwith {
                        player addItem "ACRE_PRC148"; 
                };
                if (_TFD_Section == "JSOW") exitwith {
                        player addItem "ACRE_PRC152"; 
                };
                if (_TFD_Section == "BOLO") exitwith {
                        player addItem "ACRE_PRC148"; 
                };
                };
        };

        [ format [hint_TFD_default, "The freqs have been freqed, and frequed good they have"] ] call tfd_fnc_hint;

        //=========== Rank role
        call TFD_rank_fnc_rank;
        call TFD_role_fnc_role;

        //=========== Patches
        [player, _TFD_Section] call TFD_fnc_Patches;

        [ format [hint_TFD_default, "Hooah"] ] call tfd_fnc_hint;
},[player]] call CBA_fnc_waitUntilAndExecute;