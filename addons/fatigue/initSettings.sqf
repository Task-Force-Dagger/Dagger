[
    QGVAR(highJogCoefEnabled),
    "CHECKBOX",
    [LSTRING(High_Jog_Coef_Enabled), LSTRING(High_Jog_Coef_Enabled_Description)],
    COMPONENT_NAME,
    false,
    1, {[_this] call FUNC(toggleHighJogFactor)}
] call CBA_fnc_addSetting;

[
    QGVAR(highJogCoef),
    "SLIDER",
    [LSTRING(High_Jog_Coef), LSTRING(High_Jog_Coef_Description)],
    COMPONENT_NAME,
    [0.8, 1, 0.9, 0, true],
    1
] call CBA_fnc_addSetting;
