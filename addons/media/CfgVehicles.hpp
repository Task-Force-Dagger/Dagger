class CfgVehicles {
    class Flag_White_F;
    class TFD_Flag_White: Flag_White_F {
        author="Mokka";
        editorPreview="\z\tfd\addons\media\images\tfd.paa";
        _generalMacro="TFD_Flag_White";
        displayName="Flag (Last Resort Gaming, White)";
        class EventHandlers {
            init="(_this select 0) setFlagTexture ""\z\tfd\addons\media\images\tfd.paa""";
        };
    };
    class TFD_Flag_Black: Flag_White_F {
        author="Mokka";
        editorPreview="\z\tfd\addons\media\images\tfd.paa";
        _generalMacro="TFD_Flag_Black";
        displayName="Flag (Last Resort Gaming, Black)";
        class EventHandlers {
            init="(_this select 0) setFlagTexture ""\z\tfd\addons\media\images\tfd.paa""";
        };
    };
};
