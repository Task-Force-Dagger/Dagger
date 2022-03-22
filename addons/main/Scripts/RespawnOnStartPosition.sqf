/*
    TFD MISSION TEMPLATE
    RespawnOnStartPosition.sqf
    Author: MitchJC
    Description: Scripts executed when a player respawns.
*/
    player disableConversation true;
    [player ,"NoVoice"] remoteExec ["setSpeaker",0,true];
    
    call TFD_fnc_PlayerAddActions;
    call TFD_Player_fnc_setupPlayer;
     {_x addCuratorEditableObjects [[player],FALSE];} count allCurators;
    // Fixing warning spam from ambientLife. Also, if I hear "Look a bunny!" one more bloody time...
sleep 0.2;
enableEnvironment [false, true];

////////////////////////////////////////////////////////////////////////////////
// Shut the hell up  - Mute Orders and Reports						 //
////////////////////////////////////////////////////////////////////////////////

{_x setSpeaker "NoVoice"} forEach playableUnits;

enableSentences false;

if (isNil { player getVariable "StartingPos"; } ) then {
    player setVariable ["StartingPos", getPosATL player];
    player setVariable ["StartingDir", getDir player];
} else {
    player setPosATL (player getVariable ["StartingPos", getPosATL player]);
    player setDir (player getVariable ["StartingDir", 0]);
};
