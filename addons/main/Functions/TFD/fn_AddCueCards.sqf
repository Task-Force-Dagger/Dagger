// not documented: postInit

if !(hasinterface) exitwith {};
if !(isClass (configFile >> "CfgPatches" >> "ace_main")) exitwith {};

 
    // aircheckin.paa
    // airdrop.paa


    // medband.paa
    // medbloodloss.paa
    // medwound.paa
    // cararrest.paa
    // casevac.paa
    // drugs.paa


_cueCardsData = [
    //  0 - CASEVAC Request Card
    [
        "z\tfd\addons\media\images\cuecards\casevac.paa",
        "CASEVAC Request Card"
    ],

    // 1 - ace Report Card
    [
        "z\tfd\addons\media\images\cuecards\contact.paa",
        "Contact Report Card"
    ],
    // 2 - Contact Report Card
    [
        "z\tfd\addons\media\images\cuecards\ace.paa",
        "ACE Report Card"
    ],
    // 3 - Contact Report Card
    [
        "z\tfd\addons\media\images\cuecards\salute.paa",
        "Salute Report Card"
    ],
    //  4 - FAC rotary Request Card
    [
        "z\tfd\addons\media\images\cuecards\rotary.paa",
        "FAC Rotary Request Card"
    ],

    //  5 - FAC fixed wing Orders Card
    [
        "z\tfd\addons\media\images\cuecards\jtac.paa",
        "FAC Fixed Wing Request Card"
    ],

    //  6 - FAC hlz
    [
        "z\tfd\addons\media\images\cuecards\alz.paa",
        "HLZ Request Card"
    ],

    //  7 - FAC alz
    [
        "z\tfd\addons\media\images\cuecards\hlz.paa",
        "ALZ Request Card"
    ],
    //  8 - FAC gunship
    [
        "z\tfd\addons\media\images\cuecards\gunship.paa",
        "Gunship Request Card"
    ],
    //  9 - FAC gunship
    [
        "z\tfd\addons\media\images\cuecards\airdrop.paa",
        "Airdrop Request Card"
    ],

    //  10 - checkin
    [
        "z\tfd\addons\media\images\cuecards\aircheckin.paa",
        "Aircraft Checkin Card"
    ],

    //  11 - medical
    [
        "z\tfd\addons\media\images\cuecards\medband.paa",
        "Medical SmartCard Bandages"
    ],

    //  12 -
    [
        "z\tfd\addons\media\images\cuecards\medbloodloss.paa",
        "Medical SmartCard Blood Loss"
    ],
    //  13 - 
    [
        "z\tfd\addons\media\images\cuecards\medwound.paa",
        "Medical SmartCard Wounds"
    ],
    //  14 - 
    [
        "z\tfd\addons\media\images\cuecards\cararrest.paa",
        "Medical SmartCard Cardiac Arrest"
    ],
    //  15 - 
    [
        "z\tfd\addons\media\images\cuecards\drugs.paa",
        "Medical SmartCard Drugs"
    ]
];


// Add Parent Action
_parentAction = [
    "CueCardAction",
    "Cue Cards",
    "", {diag_log "running parent action"}, {true}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions"], _parentAction] call ace_interact_menu_fnc_addActionToObject;

// Add Action to open notepad
_npAction = [
    "openNotepad",
    "Open Notepad",
    "", // see if this looks nice or not TODO 
    {
            _this spawn {
            params ["_target", "_caller"];

            diag_log format ["[[LOGGING]] Target: %1", _target];

            disableserialization;
            ([] call bis_fnc_displayMission) createdisplay "RscNotepad";
            [missionnamespace,"cueCardShown",[_target] + ["Notepad"]] spawn bis_fnc_callScriptedEventHandler;
        };
    }, {true}, {},
    [],
    ""
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CueCardAction"], _npAction] call ace_interact_menu_fnc_addActionToObject;

// Add Cue Card Actions 
{

    _x params [
        "_texture",
        "_name"
    ];

    _title = format ["Show %1", _name];
    _id = format ["cueCardAction_%1", _forEachIndex];

    diag_log format ["[[LOGGING]]  ID: %1    Title: %2", _id, _title];

    _action = [
        _id,
        _title,
        _texture, // see if this looks nice or not TODO 
        {
            _this spawn {
                params ["_target", "_caller", "_data"];

                diag_log format ["[[LOGGING]] Target: %2    Data: %1", _data, _target];

                disableserialization;
                missionNamespace setVariable ["RscDisplayCueCard_data", _data];
                ([] call bis_fnc_displayMission) createdisplay "RscDisplayCueCard";
                ([] call bis_fnc_displayMission) createdisplay "NotepadDialog";
                [missionnamespace,"cueCardShown",[_target] + _data] spawn bis_fnc_callScriptedEventHandler;
            };
        }, {true}, {},
        _x,
        ""
    ] call ace_interact_menu_fnc_createAction;

    [player, 1, ["ACE_SelfActions", "CueCardAction"], _action] call ace_interact_menu_fnc_addActionToObject;
} forEach _cueCardsData;
