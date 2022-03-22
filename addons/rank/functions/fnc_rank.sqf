#include "script_component.hpp"
if (isDedicated) exitwith {};

if (hasinterface) then {
    _playerUID = getplayerUID player;
    
    switch (true) do {
        case (_playerUID in ranks_corporal) : {
            player setRank "CORPORAL";
            [ format [hint_TFD_default, "CORPORAL"] ] call tfd_fnc_hint;
        };
        case (_playerUID in ranks_sergeant) : {
            player setRank "SERGEANT";
            [ format [hint_TFD_default, "SERGEANT"] ] call tfd_fnc_hint;
        };
        case (_playerUID in ranks_lieutenant) : {
            player setRank "LIEUTENANT";
            [ format [hint_TFD_default, "LIEUTENANT"] ] call tfd_fnc_hint;
        };
        case (_playerUID in ranks_captain) : {
            player setRank "CAPTAIN";
            [ format [hint_TFD_default, "CAPTAIN"] ] call tfd_fnc_hint;
        };
        case (_playerUID in ranks_major) : {
            player setRank "MAJOR";
            [ format [hint_TFD_default, "MAJOR"] ] call tfd_fnc_hint;
        };
        case (_playerUID in ranks_colonel) : {
            player setRank "COLONEL";
            [ format [hint_TFD_default, "COLONEL"] ] call tfd_fnc_hint;
        };
        default {
            player setRank "PRIVATE";
        };
    };
};
