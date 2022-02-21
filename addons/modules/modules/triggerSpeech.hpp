// TRIGGER SPEECH

class TFD_ModuleTriggerSpeech: Module_F {
    
    scope = 2;
    
    displayName = "$STR_TFD_Module_TriggerSpeech_DisplayName";
    category = QUOTE(PREFIX);
    author = AUTHOR;
    icon = "\z\tfd\addons\modules\data\icons\module_speech_1_ca.paa";
    
    function = "TFD_fnc_moduleTriggerSpeech";
    functionPriority = 1;
    
    isGlobal = 0;
    isTriggerActivated = 1;
    isDisposable = 0;
    is3den = 1;
    
    class Attributes: AttributesBase {
        
        class Enabled {
            displayName = "$STR_TFD_ModuleProperty_Speech_Enabled_Title";
            tooltip = "$STR_TFD_ModuleProperty_Speech_Enabled_Tip";
            defaultValue = 1;
            typeName = "NUMBER";
            expression = "_this setVariable ['%s', _value, true];";
            property = "TFD_ModuleTriggerSpeech_Enabled";
            control = "Combo";
            class Values {
                class Enabled_0 {
                    name = "$STR_TFD_ModuleProperty_Speech_Enabled_0";
                    value = 0;
                };
                class Enabled_1 {
                    name = "$STR_TFD_ModuleProperty_Speech_Enabled_1";
                    value = 1;
                };
            };
        };
        
        class Source {
            displayName = "$STR_TFD_ModuleProperty_Speech_Source_Title";
            tooltip = "$STR_TFD_ModuleProperty_Speech_Source_Tip";
            defaultValue = "''";
            typeName = "STRING";
            expression = "_this setVariable ['%s', _value, true];";
            property = "TFD_ModuleTriggerSpeech_Source";
            control = "Edit";
        };
        
        class Sound {
            displayName = "$STR_TFD_ModuleProperty_Speech_Classname_Title";
            tooltip = "$STR_TFD_ModuleProperty_Speech_Classname_Tip";
            defaultValue = "''";
            typeName = "STRING";
            expression = "_this setVariable ['%s', _value, true];";
            property = "TFD_ModuleTriggerSpeech_Sound";
            control = "Sound";
        };
        
        class Distance {
            displayName = "$STR_TFD_ModuleProperty_Speech_Distance_Title";
            tooltip = "$STR_TFD_ModuleProperty_Speech_Distance_Tip";
            defaultValue = 30;
            typeName = "NUMBER";
            expression = "_this setVariable ['%s', _value, true];";
            property = "TFD_ModuleTriggerSpeech_Distance";
            control = "EditShort";
        };
        
        class MaxDistance {
            displayName = "$STR_TFD_ModuleProperty_Speech_MaxDistance_Title";
            tooltip = "$STR_TFD_ModuleProperty_Speech_MaxDistance_Tip";
            defaultValue = -1;
            typeName = "NUMBER";
            expression = "_this setVariable ['%s', _value, true];";
            property = "TFD_ModuleTriggerSpeech_MaxDistance";
            control = "EditShort";
        };
        
        class Duration {
            displayName = "$STR_TFD_ModuleProperty_Speech_Duration_Title";
            tooltip = "$STR_TFD_ModuleProperty_Speech_Duration_Tip";
            defaultValue = -1;
            typeName = "NUMBER";
            expression = "_this setVariable ['%s', _value, true];";
            property = "TFD_ModuleTriggerSpeech_Duration";
            control = "EditShort";
        };
        
        class Loop {
            displayName = "$STR_TFD_ModuleProperty_Speech_Loop_Title";
            tooltip = "$STR_TFD_ModuleProperty_Speech_Loop_Tip";
            defaultValue = "false";
            typeName = "BOOL";
            expression = "_this setVariable ['%s', _value, true];";
            property = "TFD_ModuleTriggerSpeech_Loop";
            control = "Checkbox";
        };
        
        class IgnoreStop {
            displayName = "$STR_TFD_ModuleProperty_Speech_IgnoreStop_Title";
            tooltip = "$STR_TFD_ModuleProperty_Speech_IgnoreStop_Tip";
            defaultValue = "false";
            typeName = "BOOL";
            expression = "_this setVariable ['%s', _value, true];";
            property = "TFD_ModuleTriggerSpeech_IgnoreStop";
            control = "Checkbox";
        };
        
        class Animation {
            displayName = "$STR_TFD_ModuleProperty_Speech_Animation2_Title";
            tooltip = "$STR_TFD_ModuleProperty_Speech_Animation2_Tip";
            defaultValue = "''";
            typeName = "STRING";
            expression = "_this setVariable ['%s', _value, true];";
            property = "TFD_ModuleGlobalSpeech_Animation";
            control = "Edit";
        };
        
        class ModuleDescription: ModuleDescription {
            property = "ModuleInfo";
            control = "ModuleInfo";
        };
        
    };
    
    class ModuleDescription: ModuleDescription {
        description = "$STR_TFD_Module_TriggerSpeech_Description";
    };
    
};
