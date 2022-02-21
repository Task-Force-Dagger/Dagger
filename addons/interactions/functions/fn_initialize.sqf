/*
 * ARMA EXTENDED ENVIRONMENT
 * \z\tfd\addons\interactions\functions\fn_initialize.sqf
 * by Ojemineh
 *
 * initialize interaction addon
 *
 * Arguments:
 * nothing
 *
 * Return:
 * nothing
 *
 * Example:
 * [] call TFD_interactions_fnc_initialize;
 *
 */

// -------------------------------------------------------------------------------------------------

private _version = ["tfd_interactions"] call tfd_fnc_getAddonVersion;
[4, "Addon (v%1) loaded...", [_version], "interactions"] call TFD_common_fnc_log;

// -------------------------------------------------------------------------------------------------

if ((Not hasInterface) || (is3den)) exitWith {};

// -------------------------------------------------------------------------------------------------

[] spawn {
    
    waitUntil {if ((!isNull player) && (time > 1)) exitWith {true}; false};
    
    player addEventHandler ["InventoryOpened", {
        
        params ["_unit", "_container"];
        
        if (Not (simulationEnabled _container)) then {
            [ format [hint_tfd_default, localize "STR_TFD_Interactions_Inventory_Disabled"] ] call tfd_fnc_hint;
            closeDialog 0;
            true;
        } else {
            
            if (_container isKindOf "CAManBase") then {
                if ((missionNamespace getVariable ["tfd_interactions_gear_access_enabled", 0]) == 0) then {
                    [ format [hint_tfd_default, localize "STR_TFD_Interactions_Gear_Disabled"] ] call tfd_fnc_hint;
                    closeDialog 0;
                    true;
                } else {
                    false;
                };
            } else {
                false;
            };
            
        };
        
    }];
    
};
