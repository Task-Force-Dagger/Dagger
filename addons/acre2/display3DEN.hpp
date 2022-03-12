class ctrlMenuStrip;
class display3DEN
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
                    action = "edit3DENMissionAttributes 'TFD_MissionAcre2Attributes';";
                    //picture = "\z\tfd\addons\common\UI\icon_gear_ca";
                };
            };
        };
    };
};