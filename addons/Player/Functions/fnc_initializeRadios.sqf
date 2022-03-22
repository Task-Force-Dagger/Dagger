#include "script_component.hpp"
#include "..\settings.hpp"

[true, true] call ACRE_FUNC(setupMission);

//Setup babble languages:
{
    _x call ACRE_FUNC(babelAddLanguageType);
} forEach GVAR(availableLanguages);

//copy presets
[RADIO_SR, "default", "HQ"] call ACRE_FUNC(copyPreset);
[RADIO_SR, "default", "USASOC"] call ACRE_FUNC(copyPreset);
[RADIO_SR, "default", "CANSOFCOM"] call ACRE_FUNC(copyPreset);
[RADIO_SR, "default", "JSOW"] call ACRE_FUNC(copyPreset);
[RADIO_SR, "default", "BOLO"] call ACRE_FUNC(copyPreset);

[RADIO_MR, "default", "HQ"] call ACRE_FUNC(copyPreset);
[RADIO_MR, "default", "USASOC"] call ACRE_FUNC(copyPreset);
[RADIO_MR, "default", "CANSOFCOM"] call ACRE_FUNC(copyPreset);
[RADIO_MR, "default", "JSOW"] call ACRE_FUNC(copyPreset);
[RADIO_MR, "default", "BOLO"] call ACRE_FUNC(copyPreset);

//define presets
{
    _x params ["_channel", "_freq", "_name"];

    {
        [_x, "default", _channel, "label", _name] call ACRE_FUNC(setPresetChannelField);
        [_x, "default", _channel, "frequencyRX", _freq] call ACRE_FUNC(setPresetChannelField);
        [_x, "default", _channel, "frequencyTX", _freq] call ACRE_FUNC(setPresetChannelField);
    } forEach [RADIO_LR];
} forEach GVAR(channelLabelsDefault);

{
    _x params ["_channel", "_freq", "_name"];

    {
        [_x, "HQ", _channel, "label", _name] call ACRE_FUNC(setPresetChannelField);
        [_x, "HQ", _channel, "frequencyRX", _freq] call ACRE_FUNC(setPresetChannelField);
        [_x, "HQ", _channel, "frequencyTX", _freq] call ACRE_FUNC(setPresetChannelField);
    } forEach [RADIO_SR];
} forEach GVAR(channelLabelsHQ_SR);

{
    _x params ["_channel", "_freq", "_name"];

    {
        [_x, "CANSOFCOM", _channel, "label", _name] call ACRE_FUNC(setPresetChannelField);
        [_x, "CANSOFCOM", _channel, "frequencyRX", _freq] call ACRE_FUNC(setPresetChannelField);
        [_x, "CANSOFCOM", _channel, "frequencyTX", _freq] call ACRE_FUNC(setPresetChannelField);
    } forEach [RADIO_SR];
} forEach GVAR(channelLabelsCA_SR);

{
    _x params ["_channel", "_freq", "_name"];

    {
        [_x, "USASOC", _channel, "label", _name] call ACRE_FUNC(setPresetChannelField);
        [_x, "USASOC", _channel, "frequencyRX", _freq] call ACRE_FUNC(setPresetChannelField);
        [_x, "USASOC", _channel, "frequencyTX", _freq] call ACRE_FUNC(setPresetChannelField);
    } forEach [RADIO_SR];
} forEach GVAR(channelLabelsUS_SR);

{
    _x params ["_channel", "_freq", "_name"];

    {
        [_x, "JSOW", _channel, "label", _name] call ACRE_FUNC(setPresetChannelField);
        [_x, "JSOW", _channel, "frequencyRX", _freq] call ACRE_FUNC(setPresetChannelField);
        [_x, "JSOW", _channel, "frequencyTX", _freq] call ACRE_FUNC(setPresetChannelField);
    } forEach [RADIO_SR];
} forEach GVAR(channelLabelsJSOW_SR);

{
    _x params ["_channel", "_freq", "_name"];

    {
        [_x, "BOLO", _channel, "label", _name] call ACRE_FUNC(setPresetChannelField);
        [_x, "BOLO", _channel, "frequencyRX", _freq] call ACRE_FUNC(setPresetChannelField);
        [_x, "BOLO", _channel, "frequencyTX", _freq] call ACRE_FUNC(setPresetChannelField);
    } forEach [RADIO_SR];
} forEach GVAR(channelLabelsTR_SR);


// mr below
{
    _x params ["_channel", "_freq", "_name"];

    {
        [_x, "HQ", _channel, "label", _name] call ACRE_FUNC(setPresetChannelField);
        [_x, "HQ", _channel, "frequencyRX", _freq] call ACRE_FUNC(setPresetChannelField);
        [_x, "HQ", _channel, "frequencyTX", _freq] call ACRE_FUNC(setPresetChannelField);
    } forEach [RADIO_MR];
} forEach GVAR(channelLabelsHQ_MR);

{
    _x params ["_channel", "_freq", "_name"];

    {
        [_x, "CANSOFCOM", _channel, "label", _name] call ACRE_FUNC(setPresetChannelField);
        [_x, "CANSOFCOM", _channel, "frequencyRX", _freq] call ACRE_FUNC(setPresetChannelField);
        [_x, "CANSOFCOM", _channel, "frequencyTX", _freq] call ACRE_FUNC(setPresetChannelField);
    } forEach [RADIO_MR];
} forEach GVAR(channelLabelsCA_MR);

{
    _x params ["_channel", "_freq", "_name"];

    {
        [_x, "USASOC", _channel, "label", _name] call ACRE_FUNC(setPresetChannelField);
        [_x, "USASOC", _channel, "frequencyRX", _freq] call ACRE_FUNC(setPresetChannelField);
        [_x, "USASOC", _channel, "frequencyTX", _freq] call ACRE_FUNC(setPresetChannelField);
    } forEach [RADIO_MR];
} forEach GVAR(channelLabelsUS_MR);

{
    _x params ["_channel", "_freq", "_name"];

    {
        [_x, "JSOW", _channel, "label", _name] call ACRE_FUNC(setPresetChannelField);
        [_x, "JSOW", _channel, "frequencyRX", _freq] call ACRE_FUNC(setPresetChannelField);
        [_x, "JSOW", _channel, "frequencyTX", _freq] call ACRE_FUNC(setPresetChannelField);
    } forEach [RADIO_MR];
} forEach GVAR(channelLabelsJSOW_MR);

{
    _x params ["_channel", "_freq", "_name"];

    {
        [_x, "BOLO", _channel, "label", _name] call ACRE_FUNC(setPresetChannelField);
        [_x, "BOLO", _channel, "frequencyRX", _freq] call ACRE_FUNC(setPresetChannelField);
        [_x, "BOLO", _channel, "frequencyTX", _freq] call ACRE_FUNC(setPresetChannelField);
    } forEach [RADIO_MR];
} forEach GVAR(channelLabelsTR_MR);


