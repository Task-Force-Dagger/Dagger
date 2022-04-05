// not documented: postInit

if (!hasInterface) exitWith {};

player createDiaryRecord ["Diary", ["Long Range Frequencies",
"
<br/><font face='PuristaLight' color='#ffcc00' font size='20' >**LISTENING ON AN UNAUTHORISED FREQUENCY IS STRICTLY PROHIBITED.**</font>
<br/>
<br/>Below is a list of the default Long Range Frequencies. Your role specific frequencies are set on your radio automatically. Ensure you're on the correct frequencies at all times.
<br/>
<br/><font face='PuristaLight' color='#ffcc00'> Channel: 1 - Frequency:51 Mhz -- C2</font>
<br/><font face='PuristaLight' color='#6C8EBF'> Channel: 2 - Frequency:52 Mhz -- CANSOF Net</font>
<br/><font face='PuristaLight' color='#B85450'> Channel: 3 - Frequency:53 Mhz -- USASOC Net</font>
<br/><font face='PuristaLight' color='#00FF00'> Channel: 4 - Frequency:54 Mhz -- JSOW Net</font>
<br/><font face='PuristaLight' color='#ffcc00'> Channel: 5 - Frequency:55 Mhz -- SPARE</font>
<br/><font face='PuristaLight' color='#FF0000'> Channel: 6 - Frequency:56 Mhz -- CAS - Fires Net</font>
<br/><font face='PuristaLight' color='#00FF00'> Channel: 7 - Frequency:57 Mhz -- Air Group Net</font> 
<br/><font face='PuristaLight' color='#D60025'> Channel: 8 - Frequency:58 Mhz -- CROSSNET - Common on all radios</font>
"
]];


player createDiaryRecord ["Diary", ["Short Range Frequencies",
"
<br/><font face='PuristaLight' color='#ffcc00' font size='20' >**LISTENING ON AN UNAUTHORISED FREQUENCY IS STRICTLY PROHIBITED.**</font>
<br/>
<br/>Below is a list of the default Short Range Frequencies. Your role specific frequencies are set on your radio automatically. Ensure you're on the correct frequencies at all times. 
<br/>
<br/><font face='PuristaLight' color='#ffcc00'> Channel: 1 - Frequency:101 Mhz 	-- SQUADNET 01</font>
<br/><font face='PuristaLight' color='#fffc00'> Channel: 2 - Frequency:102 Mhz 	-- SQUADNET 02</font>
<br/><font face='PuristaLight' color='#ffcc00'> Channel: 3 - Frequency:103 Mhz 	-- SQUADNET 03</font>
<br/><font face='PuristaLight' color='#fffc00'> Channel: 4 - Frequency:104 Mhz 	-- SQUADNET 04</font>
<br/><font face='PuristaLight' color='#ffcc00'> Channel: 5 - Frequency:105 Mhz 	-- SQUADNET 05</font>
<br/><font face='PuristaLight' color='#fffc00'> Channel: 6 - Frequency:106 Mhz 	-- SQUADNET 06</font>
<br/><font face='PuristaLight' color='#ffcc00'> Channel: 7 - Frequency:107 Mhz 	-- SQUADNET 07</font>
<br/><font face='PuristaLight' color='#D60025'> Channel: 8 - Frequency:58 Mhz 	-- CROSSNET - Common on all radios</font>
<br/>

<br/>
"
]];

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














