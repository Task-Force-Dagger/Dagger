class CfgSounds {

    sounds[] = {};
    class Denied {
        name  = "Denied";
        sound[]  = { "z\tfd\addons\media\Sounds\Denied.ogg", 1, 1, 100 };
        titles[] = { 0, "" };
    };

    class AirRaid {
        name  = "AirRaid";
        sound[]  = { "z\tfd\addons\media\Sounds\AirRaid.ogg", 1, 1, 100 };
        titles[] = { 0, "" };
    };

    class NukeAlarm {
        name  = "NukeAlarm";
        sound[]  = { "z\tfd\addons\media\Sounds\NukeAlarm.ogg", 1, 1, 100 };
        titles[] = { 0, "" };
    };

    class Windows {
        name  = "Windows";
        sound[]  = { "z\tfd\addons\media\Sounds\Windows.ogg", 1, 1, 100 };
        titles[] = { 0, "" };
    };
    class CallToPrayer {
        name   = "CallToPrayer";
        sound[]  = { "z\tfd\addons\media\Sounds\CallToPrayer.ogg", 1, 1, 100 };
        titles[] = { 0, "" };
        length  = 73;
    };
    #include "Sounds\AL\CfgSounds_AL.hpp"

    class TFD_Nuclear {
        name = "[TFD] Nuclear siren";
        sound[] = {QPATHTOF(Music\Misc\Nuclear.ogg), db+0, 1.0};
        titles[] = {1, "Nuclear siren"};
    };

    class TFD_Baby {
        name = "[TFD] Baby";
        sound[] = {QPATHTOF(Music\Horror\baby.ogg), db+0, 1.0};
        titles[] = {1, "Baby"};
    };

    class TFD_Kind {
        name = "[TFD] Kind";
        sound[] = {QPATHTOF(Music\Horror\kind.ogg), db+0, 1.0};
        titles[] = {1, "Kind"};
    };
};
