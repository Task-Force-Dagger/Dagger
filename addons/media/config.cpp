#include "script_component.hpp"

class CfgPatches {
    class TFD_Media {

        author = QAUTHOR;
         name = COMPONENT_NAME;
        url = URL;
        units[] = {"TFD_Flag_White", "TFD_Flag_Black"};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"A3_UI_F","cba_main","cba_xeh"};
        VERSION_CONFIG;
        authors[] = {"MitchJC"};
        weapons[] = {};
    };
};

#include "CfgVehicles.hpp"
#include "CfgMusic.hpp"
#include "CfgRadio.hpp"
#include "CfgSounds.hpp"
#include "CfgUnitInsignia.hpp"


class CfgFunctions {

    #include "CfgFunctions.hpp"
};
