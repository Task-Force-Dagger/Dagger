#include "script_component.hpp"

class CfgPatches {
    class TFDFundamentals_Channels {

        author = QAUTHOR;
        name = COMPONENT_NAME;
        units[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"A3_UI_F","cba_main","cba_xeh"};
        VERSION_CONFIG;
        authors[] = {"MitchJC"};
        weapons[] = {};
    };
};

class Extended_PreInit_EventHandlers {
    class TFDFundamentals_Channels_Event {
        init = "call compile preprocessFileLineNumbers 'z\tfd\addons\Channels\XEH_preInit.sqf'";
    };
};

class Extended_PostInit_EventHandlers {
    class TFD_AI_Event {
        init = "call compile preprocessFileLineNumbers 'z\tfd\addons\Channels\XEH_postInit.sqf'";
    };
};