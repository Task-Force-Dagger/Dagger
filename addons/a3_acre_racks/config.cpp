#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"tfd_main", "A3_Soft_F_Exp_LSV_01", "A3_Soft_F_Exp_LSV_02", "acre_sys_rack"};
        author = QAUTHOR;
        authors[] = {"JoramD"};
        url = URL;
        VERSION_CONFIG;
    };
};

#include "CfgVehicles.hpp"
