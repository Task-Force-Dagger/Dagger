#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        author = "Bear, Snippers";
        url = "http://www.teamonetactical.com";
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"tfd_common", "A3_UI_F", "cba_diagnostic"};
        VERSION_CONFIG;
    };
};

// SteamID64 of players authorized to access admin tools (matches against getPlayerUID)
class GVAR(authorized_players) {
    class ADMIN_YonV {
        uid = "76561198000002705";
    };
    class ADMIN_Apollo {
        uid = "76561197981161711";
    };
    class ADMIN_Mullins {
        uid = "76561198056906379";
    };
    class ADMIN_Grizzly {
        uid = "76561198146167881";
    };
    class ADMIN_Lidstone {
        uid = "76561198068887342";
    };
    class ADMIN_Nairod {
        uid = "76561198044349202";
    };


};

#include "CfgFunctions.hpp"
#include "CfgDebriefing.hpp"
#include "CfgEventHandlers.hpp"
#include "autotest.hpp"
#include "gui\adminMenu.hpp"
