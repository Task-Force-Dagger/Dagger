if (isDedicated) exitwith {};

if (hasinterface) then {
    player setVariable ["canUseSSScas", false, true];
    player setVariable ["canUseSSstrans", false, true];
    player setVariable ["canUseSSSarty", false, true];
    player setUnitTrait ["UAVHacker", false];
    player setVariable ["ace_medical_medicclass", 0, true];
    
    player setVariable ["ACE_isEOD", true, true];
    player setVariable ["ace_isEngineer", 1, true];
    
    // player setVariable["draWhitelisted", false, true];
    // daoWhitelisted=false;
};
[ format [hint_TFD_default, "Engineer"] ] call tfd_fnc_hint;
