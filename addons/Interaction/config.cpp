#include "script_component.hpp"

class CfgPatches
{
    class TFD_Interaction
    {
        author = AUTHOR;
        name = NAME;
        url = URL;
        units[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"A3_UI_F","cba_main","cba_xeh"};
        version = VERSION;
        authors[] = {"MitchJC"};
        weapons[] = {};
    };
};
class CfgFunctions {

    #include "cfgFunctions.hpp"
};

class Extended_PreInit_EventHandlers {
    class TFDFundamentals_Interaction_Event {
        init = "call compile preprocessFileLineNumbers 'z\tfd\addons\Interaction\XEH_preInit.sqf'";
    };
};