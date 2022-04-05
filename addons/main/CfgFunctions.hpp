class CfgFunctions {
    class TFD_Main {

        tag = "TFD";
        class Main {

            file = "z\tfd\addons\main\Functions\TFD";
            class AddCueCards {};
            class ArsenalLoadSave {};
            class DynamicSim {};
            class DynamicGroups {};
            class Earplugs {};
            class FlipVehicle {};
            class LockCamVehicle {};
            class Logs {};
            class PilotCheck {};
            class QSRepackMags {};
            class VanillaFatigue {};
            class FindReplaceString {};
            class FindInArrayMap {};
            class voyagerCompass {};
            class clientRepackMagazines {};
            class SafePos {};
            class GetKeys {};
            class GetValues {};
            class DLog {};
            class ObjectsMapper {};
            class IntLight {};
            class Diary {};
        };
    };

    class CHVD {
        tag = "CHVD";
        class script {
            file = "z\tfd\addons\main\Functions\CHVD";
            class onSliderChange {};
            class onLBSelChanged {};
            class onLBSelChanged_syncmode {};
            class onEBinput {};
            class onEBterrainInput {};
            class onEBinput_syncmode {};
            class selTerrainQuality {};
            class updateTerrain {};
            class updateSettings {};
            class updateVehType {};
            class fovViewDistance {};
            class UAVstatus {};
            class openDialog {};
            class localize {};
            class trueZoom {};
            class keyDown {};
            class keyDownTerrain {};
            class init {};
        };
    };

    class YAINA_F {
        tag = "YAINA_F";

        class General {
            file = "z\tfd\addons\main\Functions\YAINA\General";
            class crewNames {};
            class formatDuration {};
            class showFPS {};
            class log {};
            class hintC {};
            class hideTerrainObjects {};
            class GetFunctions {};
        };
    };
};

#include "Functions\CHVD\dialog.hpp"
#include "Functions\YAINA\General\crewNamesTitles.hpp"