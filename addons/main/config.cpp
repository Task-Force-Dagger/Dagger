#include "script_component.hpp"

class cfgPatches {
    class ADDON {
        author = AUTHOR;
        name = COMPONENT_NAME;
        url = URL;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "A3_UI_F",
            "cba_main",
            "cba_xeh",
            "cba_ui",
            "cba_jr"
        };
        VERSION_CONFIG;
    };
};

#include "CfgSettings.hpp"
#include "Dialogs\CfgDisplays.hpp"
#include "CfgRespawnTemplates.hpp"
#include "CfgEventHandlers.hpp"
#include "CfgFactionClasses.hpp"
#include "CfgFunctions.hpp"
#include "CfgScriptPaths.hpp"
#include "CfgEditorCategories.hpp"
#include "CfgVehicleIcons.hpp"
#include "CfgWorlds.hpp"
#include "CfgMarkers.hpp"
#include "radio.hpp"
#include "CfgEden.hpp"
#include "CfgSkeletons.hpp"