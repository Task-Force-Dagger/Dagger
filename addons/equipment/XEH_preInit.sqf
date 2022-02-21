#include "script_component.hpp"

ADDON = false;

if (isNil QEGVAR(common,TFD_enabled) || !(EGVAR(common,TFD_enabled))) exitWith {};


ADDON = true;
