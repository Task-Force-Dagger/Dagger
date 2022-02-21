class CfgFunctions {
    
    class TFD_Modules {
        
        tag = "tfd_modules";
        
        class Modules {
            file = "z\tfd\addons\modules\functions";
            class initialize {};
            class initSettings {};
        };
        
    };
    
    class TFD_Functions {
        
        tag = "tfd";
        
        class Modules_Sound {
            file = "z\tfd\addons\modules\functions\sound";
            class moduleAmbientSound {};
            class moduleTriggerSound {};
        };
        
        class Modules_Speech {
            file = "z\tfd\addons\modules\functions\speech";
            class moduleGlobalSpeech {};
            class moduleGlobalSpeechMenu {};
            class moduleGlobalSpeechPlay {};
            class moduleTriggerSpeech {};
        };
        
    };
    
};
