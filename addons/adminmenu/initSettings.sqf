private _fnc_settings = {
    [
        QGVAR(printToChat),
        "LIST",
        ["Print log messages to chat", "Whether to print logged messages to chat. Only visible for admins."],
        [COMPONENT_NAME, "Adminmenu"],
        [[2,1,0],["All Messages", "Only Warnings", "None"],1]
    ] call CBA_fnc_addSetting;

    [
        QGVAR(endLogToRPT),
        "CHECKBOX",
        ["Print log to server RPT on mission end", "Toggles whether to print the admin log to server RPT once mission ends."],
        [COMPONENT_NAME, "Adminmenu"],
        false
    ] call CBA_fnc_addSetting;
};

if is3den then _fnc_settings else {
    [{[] call FUNC(isAuthorized) || isServer},_fnc_settings] call CBA_fnc_waitUntilAndExecute;
};


