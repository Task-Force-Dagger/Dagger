#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"tfd_main"};
        author = QAUTHOR;
        authors[] = {"Jonpas"};
        url = URL;
        VERSION_CONFIG;
    };
};

#include "CfgAnimationSourceSounds.hpp"
#include "CfgEventHandlers.hpp"
#include "CfgVehicles.hpp"
