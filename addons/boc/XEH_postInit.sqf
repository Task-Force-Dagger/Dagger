#include "script_component.hpp"

if (isNil QEGVAR(common,TFD_enabled) || !(EGVAR(common,TFD_enabled))) exitWith {};

if !(hasInterface) exitWith {};

call FUNC(arsenal_postInit);

TFD_unit setVariable [QGVAR(preventProne),false,true];

[{
    if (
        (stance TFD_unit) == "PRONE" &&
        {TFD_unit getvariable [QGVAR(preventProne),false]} &&
        {!(TFD_unit getVariable ["ACE_isUnconscious", false]) || lifeState TFD_unit != "INCAPACITATED"}
       ) then {
        TFD_unit playAction "PlayerCrouch";
        hint localize "str_TFD_boc_crouch";
    };
},1] call CBA_fnc_addPerFrameHandler;
