class CfgVehicles {
    class Module_F;
    class ModuleEmpty_F;

    class ModuleCurator_F: Module_F {
        class Attributes {
            class TFD_Config_Zeus {
                property = QUOTE(TFD_Config_Zeus);
                control = "Checkbox";
                typeName = "BOOL";
                displayName = "Task Force Dagger: Config Zeus:";
                tooltip = "Enable to allow this Zeus to have placed units use TFD AI Difficulty Settings (Settings - Addon Options)";
                expression = "if (_value isequalto true) then {[_this] call tfd_fnc_ConfigZeus;}";
                condition = "logicModule";
                defaultValue = "(true)";
            };
        };
    };
};