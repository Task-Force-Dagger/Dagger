#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"tfd_heavylifter"};
        author = QAUTHOR;
        authors[] = {"Jonpas"};
        url = URL;
        VERSION_CONFIG;
    };
};

#include "CfgVehicles.hpp"
