#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "tfd_main",
            "tfd_debug_console"
        };
        author = QAUTHOR;
        VERSION_CONFIG;
    };
};


#include "CfgEden.hpp"
#include "CfgEventHandlers.hpp"
