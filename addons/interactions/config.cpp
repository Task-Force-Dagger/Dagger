#include "script_component.hpp"


class CfgPatches {

    class TFD_Interactions {
        author = QAUTHOR;
        name = COMPONENT_NAME;
        url = URL;
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "tfd_common"
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

#include "CfgActions.hpp"
#include "CfgSounds.hpp"
#include "CfgVehicles.hpp"
