class ctrlMenuStrip;
class display3den
{
    class Controls
    {
        class MenuStrip : ctrlMenuStrip
        {
            class Items
            {
                class PREFIX {
                    items[] += {"TFD_ACRE2"};
                };
                class TFD_ACRE2
                {
                    text = "TFD ACRE2 Settings";
                    action = "edit3denMissionAttributes 'TFD_MissionAcre2Attributes';";
                    picture = "\z\tfd\addons\media\images\Icons\icon_gear_ca.paa";
                };
            };
        };
    };
};