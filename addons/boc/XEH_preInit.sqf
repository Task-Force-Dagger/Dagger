#include "script_component.hpp"

ADDON = false;

#include "initCBASettings.sqf"

if (isNil QEGVAR(common,TFD_enabled) || !(EGVAR(common,TFD_enabled))) exitWith {};

#include "XEH_PREP.hpp"

ADDON = true;
