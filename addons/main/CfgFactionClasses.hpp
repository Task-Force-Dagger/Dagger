class CfgFactionClasses {    
    class NO_CATEGORY;

    class PREFIX: NO_CATEGORY {
        displayName = "TFD"; //Faction name in-game
        icon = LOGO_PATH;
        scopeCurator = 2;
        scope = 2;
        side = 1; // 1 Blufor 2 opfor 3 independant i think.
    };
    class TFD_Modules: NO_CATEGORY {
        displayName = PREFIX;
    };
};