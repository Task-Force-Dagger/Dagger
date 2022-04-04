#include "script_component.hpp"

if (isServer) then {
    // Event forces respawn for all clients
    [QGVAR(force), {
        [QGVAR(force)] call CBA_fnc_remoteEvent;
    }] call CBA_fnc_addEventHandler;
};

if (hasInterface) then {
    // Save equipment event if anyone wanted to save it by himself at any time
    [QGVAR(saveEquipment), {
        GVAR(savedEquipment) = getUnitLoadout player;
    }] call CBA_fnc_addEventHandler;

    // Save initial equipment
    [{alive player}, {
        [QGVAR(saveEquipment)] call CBA_fnc_localEvent;
    }] call CBA_fnc_waitUntilAndExecute;

    // Event forces respawn for local client if he's ded
    [QGVAR(force), {
        if (alive player) exitWith {};
        setPlayerRespawnTime TIME_MINIMUM;
    }] call CBA_fnc_addEventHandler;

    // Events for enabling/disabling respawn locally
    [QGVAR(enable), {
        _this call FUNC(enable);
    }] call CBA_fnc_addEventHandler;

    [QGVAR(disable), {
        _this call FUNC(disable);
    }] call CBA_fnc_addEventHandler;

    // Event for adjusting remaining respawn time when respawn time changes
    [QGVAR(adjustTimeLocal), {
        _this call FUNC(adjustTimeLocal);
    }] call CBA_fnc_addEventHandler;
};


GVAR(respawnMenuMarkers) = [
    ["\A3\ui_f\data\map\markers\nato\b_hq.paa","HQ","hq"],
    ["\A3\ui_f\data\map\markers\nato\b_inf.paa","Infantry","inf"],
    ["\A3\ui_f\data\map\markers\nato\b_support.paa","MG Team","mg_m"],
    ["\A3\ui_f\data\map\markers\nato\b_motor_inf.paa","Missle (AT/AA) Team","antitank"],
    ["\A3\ui_f\data\map\markers\nato\b_recon.paa","Sniper","recon"],
    ["\A3\ui_f\data\map\markers\nato\b_mortar.paa","Mortar Team","mortar"],
    ["\A3\ui_f\data\map\markers\nato\b_motor_inf.paa","APC/IFV","inf_mech"],
    ["\A3\ui_f\data\map\markers\nato\b_armor.paa","Armour","armor"],
    ["\A3\ui_f\data\map\markers\nato\b_air.paa","Heli","helo_cargo"],
    ["\A3\ui_f\data\map\markers\nato\b_plane.paa","Airplane/Jet","fixedwing"],
    ["\mas_can_lite\flags\b_sof.paa","SOF","sof"]
];

// Respawn Marker Colours
// Format [r,g,b,alpha], GUI display name, colour name for optional pbo

GVAR(respawnMenuMarkerColours) = [
    [[1,0,0,1],"Red","red"],
    [[0,0,1,1],"Blue","blue"],
    [[0,1,0,1],"Green","green"],
    [[1,1,0,1],"Yellow","yellow"]
];

/*  [[1,0.647,0,1],"Orange","orange"],
    [[0,0,0,1],"Black","yellow"],
    [[1,1,1,1],"White","yellow"]*/

// SERVER INIT


if (isServer) then {
    
    //Counters to allow for unique IDs of respawned players and groups.
    GVAR(serverRespawnPlayerCounter) = 1;
    GVAR(serverRespawnGroupCounter) = 1;

    //Stores the marker information for all respawned groups
    GVAR(respawnedGroupsMarkerData) = [];
};

// CLIENT INIT

if (hasInterface) then {
    
    // Add a eventhandler to await for respawned group marker data.
    QGVAR(respawnedGroupsMarkerData) addPublicVariableEventHandler {
        [] call FUNC(respawnGroupMarkerUpdate);
    };
    
    // Create markers for any respawned markers that have occured before the client has joined.
    //[] call FUNC(respawnGroupMarkerUpdate);
};


