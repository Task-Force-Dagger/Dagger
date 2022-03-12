#include "script_component.hpp"

class CBA_Extended_EventHandlers_base;
class CfgVehicles {
    class vtx_MH60M;
    class vtx_MH60M_DAP;
    class GVAR(uh60M): vtx_MH60M {
        scope=2;
        scopeCurator = 2;
        hiddenSelectionsTextures[]= {
            "",  //DNU (Do not Use)
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "z\tfd\addons\helicopters\data\HullMain_tfd.paa",
            "",
            "z\tfd\addons\helicopters\data\HullTail_tfd.paa",
            "", //Markings
            "", //left_num_1
            "", //left_num_2
            "", //right_num_1
            "", //right_num_2
            "z\vtx\addons\UH60\data\FuelProbe\Fuel_probe_co.paa" //Fuel Probe
        };
        displayName="[TFD] MH60M";
    };
    class GVAR(uh60M_dap): vtx_MH60M_DAP {
        scope=2;
        scopeCurator = 2;
        hiddenSelectionsTextures[]= {
            "",  //DNU (Do not Use)
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "",  //DNU 
            "z\tfd\addons\helicopters\data\HullMain_tfd.paa",
            "",
            "z\tfd\addons\helicopters\data\HullTail_tfd.paa",
            "", //Markings
            "", //left_num_1
            "", //left_num_2
            "", //right_num_1
            "", //right_num_2
            "z\vtx\addons\UH60\data\FuelProbe\Fuel_probe_co.paa" //Fuel Probe
        };
        displayName="[TFD] MH60M DAP";
    };
};

