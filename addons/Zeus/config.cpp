#include "script_component.hpp"

class CfgPatches {
    class TFD_Zeus {
        author = QAUTHOR;
        name = COMPONENT_NAME;
        url = URL;
        units[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "A3_UI_F",
            "A3_UI_F_Curator",
            "A3_Functions_F_Curator",
            "A3_Modules_F",
            "A3_Modules_F_Curator",
            "A3_Modules_F_Bootcamp_Misc",
            "cba_main",
            "cba_xeh"
        };
        VERSION_CONFIG;
        authors[] = {"MitchJC"};
        weapons[] = {};
    };
};

class CfgFunctions {

    #include "CfgFunctions.hpp"
};

#include "cfgVehicles.hpp"

class Extended_PreInit_EventHandlers {
    class TFD_Zeus_Event {
        init = "call compile preprocessFileLineNumbers 'z\tfd\addons\Zeus\XEH_preInit.sqf'";
    };
};

#include "ZenActions.hpp"