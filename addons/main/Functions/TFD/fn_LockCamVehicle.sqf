// not documented, called by module

player setVariable ["TFD_VehCamLockHandle", -1];

_getInEHId = player addEventHandler ["GetInMan", {
        params ["_unit", "_role", "_vehicle", "_turret"];

        _handle = [
            {
                if ((toUpper cameraView) isEqualTo "EXTERNAL" && {player != vehicle player}) then {
                    player switchCamera "INTERNAL";
                };
            },
            0, []
        ] call CBA_fnc_addPerFrameHandler;

        player setVariable ["TFD_VehCamLockHandle", _handle];
    }
];

_getOutEHId = player addEventHandler["GetOutMan", {
        params ["_unit", "_role", "_vehicle", "_turret"];

        _handle = player getVariable ["TFD_VehCamLockHandle", -1];

        if (_handle != -1) then {
            [_handle] call CBA_fnc_removePerFrameHandler;
            player setVariable ["TFD_VehCamLock", -1];
        }
    }
];