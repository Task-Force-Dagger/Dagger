class cfgVehicles {
    class All;
    class Logic : All {
        class Eventhandlers;
    };
    class GVAR(hideMapObjects) : Logic {
        displayName = "[TFD] Hide Map Objects";
        class Eventhandlers {
            init = "call cba_xeh_fnc_init";
        };
    };
};