// not documented: postInit

if (!hasInterface) exitWith {};

player createDiarySubject ["Commands","Commands"];

player createDiaryRecord ["Commands", ["Side Chat",
"
<br/><font face='PuristaLight' color='#40FFFF' font size='20'>Side Chat Duration</font>
<br/>
<br/><font face='PuristaLight' color='#6C8EBF'>- Used to set the maximum time in minutes Side Chat can be used for.</font>
<br/><font face='PuristaLight' color='#6C8EBF'>- If set to '0' SideChat will remain on permanently.</font>
<br/><font face='PuristaLight' color='#6C8EBF'>- As long as side chat hasn't expired, the time can be changed.</font>
<br/><font face='PuristaLight' color='#6C8EBF'>- Time is from the Server Start time..</font>
<br/>
<br/><font face='PuristaLight' color='#6C8EBF'>Examples:</font>
<br/><execute expression=""copyToClipboard '!sideChatDuration 60'"">!sideChatDuration 60</execute>
<br/><execute expression=""copyToClipboard '!sideChatDuration 0'"">!sideChatDuration 0</execute>
"
]];

player createDiaryRecord ["Commands", ["Safe Zone",
"
<br/><font face='PuristaLight' color='#40FFFF' font size='20'>Safe Zone Enabled</font>
<br/>
<br/><font face='PuristaLight' color='#6C8EBF'>- Used to turn the Safe Zone on and off.</font>
<br/><font face='PuristaLight' color='#6C8EBF'>- Can be used infinitely. </font>
<br/><font face='PuristaLight' color='#6C8EBF'>- Can take a maximum of 60 seconds for the Safe Zone to change state.</font>
<br/>
<br/><font face='PuristaLight' color='#6C8EBF'>Examples:</font>
<br/><execute expression=""copyToClipboard '!safeZoneEnabled True'"">!safeZoneEnabled True</execute>
<br/><execute expression=""copyToClipboard '!safeZoneEnabled False'"">!safeZoneEnabled False</execute>
<br/>



<br/><font face='PuristaLight' color='#40FFFF' font size='20'>Safe Zone Position</font>
<br/>
<br/><font face='PuristaLight' color='#6C8EBF'>- Used to set the center position of the Safe Zone.</font>
<br/><font face='PuristaLight' color='#6C8EBF'>- Must be in this format x,y </font>
<br/><font face='PuristaLight' color='#6C8EBF'>- Can take a maximum of 60 seconds for the Safe Zone to move.</font>
<br/><font face='PuristaLight' color='#6C8EBF'>- Hint - If you know where the Safe Zone needs to be moved before mission start, it's much easier to get the x,y in the editor beforehand.</font>
<br/>
<br/><font face='PuristaLight' color='#6C8EBF'>Example:</font>
<br/><execute expression=""copyToClipboard '!safeZonePosition 1500,2500'"">!safeZonePosition 1500,2500</execute>
<br/>



<br/><font face='PuristaLight' color='#40FFFF' font size='20'>Safe Zone Area</font>
<br/>
<br/><font face='PuristaLight' color='#6C8EBF'>- Used to set the size of the Safe Zone in Meters.</font>
<br/><font face='PuristaLight' color='#6C8EBF'>- Uses 2D distance from SafeZonePosition</font>
<br/><font face='PuristaLight' color='#6C8EBF'>- Can take a maximum of 60 seconds for the Safe Zone Area to change.</font>
<br/>
<br/><font face='PuristaLight' color='#6C8EBF'>Example:</font>
<br/><execute expression=""copyToClipboard '!safeZoneArea 250'"">!safeZoneArea 250</execute>
"
]];

player createDiaryRecord ["Commands", ["Introduction",
"
<br/><font face='PuristaLight' color='#40FFFF' font size='20'>TFD Commands</font>
<br/>
<br/><font face='PuristaLight' color='#6C8EBF'>Welcome to the TFD Commands Area. In this Section I'll explain how the system works.

<br/>First off, for these commands to work you need to be set as a mission creator.
<br/>The commands need to be entered to the chat (like admin commands on EU1), they start with an exclamation mark (!).
<br/>The commands can be entered in any chat channel, they do not show up in the actual chat, so entered commands are invisible to normal player.
<br/>
<br/>In the following pages of this Section you'll see various commands.
<br/>For each there's examples for you to use.
<br/>Copy the example into the debug console and adjust as required.
<br/>
<br/>As a general rule the server runs a check every 60 seconds for changes to these commands.
<br/>That means from execution of your command till it being action there will be a delay. Ensure you plan for this if required.

"
]];














