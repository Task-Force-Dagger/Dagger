#include "script_component.hpp"
params ["_medic", "_patient", "_bodyPart", "_classname", "", "_usedItem"];

_this call tfd_medical_fnc_vpnMedicationSuccess;
["TFD_Medical_Event_ketamineLocal", [_patient, _bodyPart, _classname], _patient] call CBA_fnc_targetEvent;
