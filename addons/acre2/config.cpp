#include "script_component.hpp"

class cfgPatches
{
    class ADDON
    {
        name = COMPONENT_NAME;
        author = "Snippers";
        url = "http://www.teamonetactical.com";
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"tfd_common", "acre_main", "tfd_spectator"};
        VERSION_CONFIG;
    };
};

#include "Cfg3den.hpp"
#include "CfgEventHandlers.hpp"
#include "autotest.hpp"
#include "display3den.hpp"

class acre_sys_spectator_RscRadios;
class acre_sys_spectator_RscSpeaking;
class RscControlsGroupNoScrollbars;

// Extend spectator
class EGVAR(spectator,dialog) {
    class controls {
        class TargetUnitInfo: RscControlsGroupNoScrollbars {
            idc = SPECTATOR_IDC_RADIO_INFO;
            h = "((7.1) * ((((safezoneW / safezoneH) min 1.2)/ 1.2)/ 25))";
            w = "16 * (((safezoneW / safezoneH) min 1.2) / 40)";
            x = "12.1 * (((safezoneW / safezoneH) min 1.2) / 40) + (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2)";
            y = "((21) * ((((safezoneW / safezoneH) min 1.2)/ 1.2)/ 25)+ (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2)/ 1.2))/2))";
            class controls {
                class acre_sys_spectator_radios: acre_sys_spectator_RscRadios {};
            };
        };
        class acre_sys_spectator_speaking: acre_sys_spectator_RscSpeaking {};
    };
};
