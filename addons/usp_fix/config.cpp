#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        author = AUTHOR;
        name = COMPONENT_NAME;
        url = URL;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        /* Require CBA and all components below */
        requiredAddons[] = {
            "USP_Gear_Head",
            "USP_Gear_Pack",
            "USP_Gear_Body",
            "USP_Gear_Vest"
        };
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
#include "CfgWeapons.hpp"
#include "CfgVehicles.hpp"