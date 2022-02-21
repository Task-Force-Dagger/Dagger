class TFD_ModuleSafeZone: Module_F {
    scope = 2;
    displayName = "Safe Zone";
    icon = "\z\tfd\addons\media\images\icons\Safe_Zone.paa";
    category = QUOTE(PREFIX);
    function = "tfd_fnc_moduleSafeZone";
    functionPriority = 4;
    isGlobal = 0;
    isTriggerActivated = 0;
    isDisposable = 0;
    is3den = 0;
    class Attributes: AttributesBase {
        class SafeZoneEnable: Checkbox {
                property = "tfd_SafeZoneEnable";
                displayName = "Enabled";
                tooltip = "Enable/Disable this Safe Zone Module.";
                typeName = "BOOL";
                defaultValue = true;
            };
            class SafeZoneSize: Edit {
                property = "tfd_SafeZoneSize";
                displayName = "Size";
                tooltip = "Area of Safe Zone around this module in meters";
                typeName = "NUMBER";
                defaultValue = 150;
            };
        class SafeZoneDuration: Edit {
                property = "tfd_SafeZoneDuration";
                displayName = "Duration";
                tooltip = "How long should the safe zone be active. 0 means permanent.";
                typeName = "NUMBER";
                defaultValue = 0;
            };
        class ModuleDescription: ModuleDescription {};
    };
    class ModuleDescription: ModuleDescription {
        description[] = {
            "Place this module to create a Safe Zone around the module location.",
            "Players will be forbidden from shooting Weapons/Vehicle Turrets within the safe zone area",
            "Multiple Safe Zone modules can be used with different durations."
        };
            position = 1; // Position is taken into effect
            direction = 0; // Direction is taken into effect
            optional = 1; // Synced entity is optional
            duplicate = 1; // Multiple entities of this type can be synced
    };
};