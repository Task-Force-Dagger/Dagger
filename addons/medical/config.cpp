#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {
            "TFD_MorphineItem",
            "TFD_epinephrineItem",
            "TFD_fentanylItem",
            "TFD_naloxonelItem",
            "TFD_ketamineItem",
            "TFD_ApapItem"
        };

        weapons[] = {
            "TFD_naloxone",
            "TFD_fentanyl",
            "TFD_ketamine",
            "TFD_ketamine_200mg",
            "TFD_tetra",
            "TFD_Apap",
            "TFD_VPN",
            "TFD_NDC"
        };
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "tfd_common",
            "ace_medical",
            "ace_medical_engine",
            "ace_medical_statemachine",
            "ace_medical_status",
            "ace_medical_treatment",
            "ace_medical_vitals",
            "kat_main",
            "kat_airway",
            "kat_breathing",
            "kat_circulation"
        };
        author = QAUTHOR;
        authors[] = {"TFD J4"};
        authorUrl = URL;
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
#include "CfgModuleCategories.hpp"

#include "configs\CfgVehicles.hpp"
#include "configs\CfgWeapons.hpp"

// #include "configs\ACE_Medical_Statemachine.hpp"
#include "configs\ACE_Medical_Treatment.hpp"
#include "configs\ACE_Medical_Treatment_Actions.hpp"

#include "configs\ZEN_Context_Actions.hpp"


class CfgFunctions {
    class ace_medical_statemachine {
        tag = "ace_medical_statemachine";
        class Functions {
            class handleStateCardiacArrest {
                
            file="z\tfd\addons\medical\function_overwrites\fn_handleStateCardiacArrest.sqf";
            };
        };
    };
};
