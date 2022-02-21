#include "script_component.hpp"

class CfgPatches {
    class TFD_AI {
        author = QAUTHOR;
        name = COMPONENT_NAME;
        url = URL;
        units[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "cba_main",
            "cba_xeh"
        };
        VERSION_CONFIG;
        authors[] = {"MitchJC"};
        weapons[] = {};
    };
};

#include "CfgVehicles.hpp"

class CfgFunctions {
    #include "CfgFunctions.hpp"
};

class Extended_PreInit_EventHandlers {
    class TFD_AI_Event {
        init = "call compile preProcessFileLineNumbers 'z\tfd\addons\AI\XEH_preInit.sqf'";
    };
};
