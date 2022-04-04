#include "script_component.hpp"

if (is3den || !(EGVAR(common,aceFastroping))) exitWith {};

if(typeOf(_vehicle) == "ACE_friesAnchorBar") exitWith {};//For some reason the FRIES bar is defined as a helicopter. This gets rid of an annoying "not configured" error

if (isServer) then {
    ["Helicopter", "init", {
        params ["_vehicle"];
        if (!GVAR(autoAdd) || {!isNumber (configOf _vehicle >> QACEGVAR(fastroping,enabled))}) exitWith {};
        _vehicle call ACEFUNC(fastroping,equipFRIES);
    }, true, ["ACE_friesBase"], true] call CBA_fnc_addClassEventHandler;
};

_vehicle addEventHandler ["Dammaged", 
{
    params ["_vehicle", "_selection", "_damage", "_hitIndex", "_hitPoint", "_shooter", "_projectile"];
    
    if ((damage _vehicle) > 0.95) then 
    {
        [_vehicle] call ace_fastroping_fnc_unequipFRIES;
    };

}];

_vehicle addEventHandler ["Deleted", 
{
    params ["_vehicle"];
    [_vehicle] call ace_fastroping_fnc_unequipFRIES;
}];
