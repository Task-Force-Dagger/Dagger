#include "script_component.hpp"

// Channel labels - DEFAULT
GVAR(channelLabelsDefault) = [
    [1, 181.12,"TFD_C2"],
    [2, 182.41,"AIR_C2_NET"],
    [3, 183.28,"AIR2GND_NET1"],
    [4, 184.29,"AIR2GND_NET2"],
    [5, 185.78,"FLIGHT_NET1"],
    [6, 186.93,"FLIGHT_NET2"],
    [7, 187.13,"FLIGHT_NET3"],
    [8, 188.87,"CAS_NET1"],
    [9, 189.44,"CAS_NET2"],
    [10,190.74,"CROSS_NET_X"],
    [11,191.11,"CROSS_NET_Y"],
    [12,192.44,"CROSS_NET_Z"]
];

// Channel labels - BLUFOR
GVAR(channelLabelsHQ_SR) = [
    [1,61.98,"CROSS_A"],
    [2,62.11,"CROSS_B"],
    [3,63.82,"CROSS_C"],
    [4,74.93,"CSF_C2"],
    [5,75.66,"JTF2_A"],
    [6,76.49,"JTF2_B"],
    [7,77.76,"CSOR_A"],
    [8,78.61,"CSOR_B"],
    [9,79.03,"CSOR_C"],
    [10,80.82,"SOCOM"],
    [11,81.01,"DELTA_A"],
    [12,82.72,"DELTA_B"],
    [13,83.96,"DELTA_C"],
    [14,84.81,"75RBTN_A"],
    [15,85.69,"75RBTN_B"],
    [16,96.84,"TRAINING"]
];

GVAR(channelLabelsCA_SR) = [
    [7,61.98,"CROSS_A"],
    [8,62.11,"CROSS_B"],
    [9,63.82,"CROSS_C"],
    [1,74.93,"CSF_C2"],
    [2,75.66,"JTF2_A"],
    [3,76.49,"JTF2_B"],
    [4,77.76,"CSOR_A"],
    [5,78.61,"CSOR_B"],
    [6,79.03,"CSOR_C"],
    [10,80.82,"SOCOM"],
    [11,81.01,"DELTA_A"],
    [12,82.72,"DELTA_B"],
    [13,83.96,"DELTA_C"],
    [14,84.81,"75RBTN_A"],
    [15,85.69,"75RBTN_B"]
];

GVAR(channelLabelsUS_SR) = [
    [7,61.98,"CROSS_A"],
    [8,62.11,"CROSS_B"],
    [9,63.82,"CROSS_C"],
    [10,74.93,"CSF_C2"],
    [11,75.66,"JTF2_A"],
    [12,76.49,"JTF2_B"],
    [13,77.76,"CSOR_A"],
    [14,78.61,"CSOR_B"],
    [15,79.03,"CSOR_C"],
    [1,80.82,"SOCOM"],
    [2,81.01,"DELTA_A"],
    [3,82.72,"DELTA_B"],
    [4,83.96,"DELTA_C"],
    [5,84.81,"75RBTN_A"],
    [6,85.69,"75RBTN_B"]
];

GVAR(channelLabelsJSOW_SR) = [
    [1,61.98,"CROSS_A"],
    [2,62.11,"CROSS_B"],
    [3,63.82,"CROSS_C"],
    [4,74.93,"CSF_C2"],
    [5,75.66,"JTF2_A"],
    [6,76.49,"JTF2_B"],
    [7,77.76,"CSOR_A"],
    [8,78.61,"CSOR_B"],
    [9,79.03,"CSOR_C"],
    [10,80.82,"SOCOM"],
    [11,81.01,"DELTA_A"],
    [12,82.72,"DELTA_B"],
    [13,83.96,"DELTA_C"],
    [14,84.81,"75RBTN_A"],
    [15,85.69,"75RBTN_B"]
];

GVAR(channelLabelsTR_SR) = [
    [1,96.84,"TRAINING"],
    [2,61.98,"CROSS_A"],
    [3,62.11,"CROSS_B"],
    [4,63.82,"CROSS_C"],
    [5,74.93,"CSF_C2"],
    [6,75.66,"JTF2_A"],
    [7,76.49,"JTF2_B"],
    [8,77.76,"CSOR_A"],
    [9,78.61,"CSOR_B"],
    [10,79.03,"CSOR_C"],
    [11,80.82,"SOCOM"],
    [12,81.01,"DELTA_A"],
    [13,82.72,"DELTA_B"],
    [14,83.96,"DELTA_C"],
    [15,84.81,"75RBTN_A"],
    [16,85.69,"75RBTN_B"]
];

GVAR(channelLabelsHQ_MR) = [
    [1,121.29,"HQ_1"],
    [2,122.92,"HQ_2"],
    [3,123.97,"HQ_3"],
    [4,134.81,"CROSS_1"],
    [5,135.62,"CROSS_2"],
    [6,136.21,"CROSS_3"],
    [7,147.01,"CSF_C2"],
    [8,148.22,"JTF2"],
    [9,149.9,"CSOR"],
    [10,150.42,"SOCOM_C2"],
    [11,151.12,"DELTA"],
    [12,152.11,"75RBNT"],
    [13,153.18,"JSOW"]
];

GVAR(channelLabelsCA_MR) = [
    [1,147.01,"CSF_C2"],
    [2,148.22,"JTF2"],
    [3,149.9,"CSOR"],
    [4,150.42,"SOCOM_C2"],
    [5,151.12,"DELTA"],
    [6,152.11,"75RBNT"],
    [7,153.18,"JSOW"]
];

GVAR(channelLabelsUS_MR) = [
    [1,150.42,"SOCOM_C2"],
    [2,151.12,"DELTA"],
    [3,152.11,"75RBNT"],
    [4,147.01,"CSF_C2"],
    [5,148.22,"JTF2"],
    [6,149.9,"CSOR"],
    [7,153.18,"JSOW"]
];

GVAR(channelLabelsJSOW_MR) = [
    [1,164.36,"CREW_1"],
    [2,165.18,"CREW_2"],
    [3,166.66,"CREW_3"],
    [4,167.71,"CREW_4"],
    [5,134.81,"CROSS_1"],
    [6,135.62,"CROSS_2"],
    [7,136.21,"CROSS_3"],
    [8,147.01,"CSF_C2"],
    [9,148.22,"JTF2"],
    [10,149.9,"CSOR"],
    [11,150.42,"SOCOM_C2"],
    [12,151.12,"DELTA"],
    [13,152.11,"75RBNT"],
    [14,153.18,"JSOW"]
];

GVAR(availableLanguages) = [
    ["af", "Afrikaans"],
    ["am", "American"],
    ["ar", "Arabic"],
    ["bg", "Bulgarian"],
    ["cn", "Chinese"],
    ["de", "German"],
    ["en", "English"],
    ["es", "Spanish"],
    ["fa", "Persian"],
    ["fr", "French"],
    ["ga", "Irish"],
    ["gd", "Gaelic"],
    ["hg", "Hand Gestures and Grunts"],
    ["hi", "Hindi"],
    ["it", "Italian"],
    ["ja", "Japanese"],
    ["ku", "Kurdish"],
    ["la", "Latin"],
    ["mn", "Mongolian"],
    ["nv", "Navajo"],
    ["oc", "Occitan"],
    ["pl", "Polish"],
    ["ps", "Pushto"],
    ["pt", "Portuguese"],
    ["qu", "Quechua"],
    ["ru", "Russian"],
    ["so", "Somali"],
    ["sv", "Swedish"],
    ["sw", "Swahili"],
    ["tl", "Tagalog"],
    ["uk", "Ukrainian"],
    ["vi", "Vietnamese"],
    ["wa", "Walloon"],
    ["wo", "Wolof"],
    ["xh", "Xhosa"],
    ["yi", "Yiddish"],
    ["zu", "Zulu"]
];



// Babel - Blufor language
GVAR(langBlufor) = ["en", "English"];

// Babel - Redfor language
GVAR(langRedfor) = ["ru", "Russian"];

// Babel - Speaking languages
GVAR(bluforSpeaksRedfor) = true;
GVAR(redforSpeaksBlufor) = false;

