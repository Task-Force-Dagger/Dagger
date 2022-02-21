#include "script_component.hpp"


class CfgPatches {
    
    class TFD_Hints {
        author = QAUTHOR;
        name = COMPONENT_NAME;
        url = URL;
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "tfd_main"
        };
        units[] = {};
        weapons[] = {};
        authors[] = {
            "O. Jemineh"
        };
        VERSION_CONFIG;
    };
    
};

#include "CfgEventHandlers.hpp"
#include "CfgFunctions.hpp"
#include "gui\RscHint.hpp"
