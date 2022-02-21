class ctrlMenuStrip;
class ctrlControlsGroupNoScrollbars;
class ctrlCheckboxToolbar;
class Separator1;

class display3den {
    class Controls {
        class MenuStrip: ctrlMenuStrip {
            class Items {
                items[] += {PREFIX};
                class PREFIX {
                    text = "TFD";
                    items[] = {"TFD_Documentation"};
                };
                class TFD_Documentation {
                    text = "TFD Docs"; // engine adds ... to links
                    data = "HelpFeedback";
                    picture = "\a3\3DEN\Data\Controls\ctrlMenu\link_ca.paa";
                    weblink = "http://arma.wiki";
                    opensNewWindow = 1;
                };
            };
        };
        class Toolbar: ctrlControlsGroupNoScrollbars {
            class Controls {
                class Separator3: Separator1 {
                    colorBackground[]={0,0,0,0.5};
                    x="33.5 *     (    5 * (pixelW * pixelGrid *     0.50))";
                    y="1 * (pixelH * pixelGrid *     0.50)";
                    w="pixelW";
                    h="(    5 * (pixelH * pixelGrid *     0.50))";
                };
                class TFD_Toolbar_Controls: ctrlControlsGroupNoScrollbars {
                    idc=-1;
                    x="34.5 * (5 * (pixelW * pixelGrid *     0.50))";
                    y="1 * (pixelH * pixelGrid *     0.50)";
                    w="5 *     (    5 * (pixelW * pixelGrid *     0.50))";
                    h="(    5 * (pixelH * pixelGrid *     0.50))";
                    class Controls {
                        class Garrison: ctrlCheckboxToolbar {
                            idc=-1;
                            onCheckedChanged=QUOTE(GVAR(Garrison) = !GVAR(Garrison));
                            onLoad="uiNamespace setVariable [""tfd_common_GarrisonControl"",_this select 0]; tfd_common_Garrison = false";
                            x="0 *     (    5 * (pixelW * pixelGrid *     0.50))";
                            y=0;
                            h="(    5 * (pixelH * pixelGrid *     0.50))";
                            w="(    5 * (pixelW * pixelGrid *     0.50))";
                            tooltip="TFD: Toggle garrison on dragging units";
                            textureChecked="\z\tfd\addons\media\images\itfd.paa";
                            textureUnchecked="\z\tfd\addons\media\images\tfd.paa";
                            textureFocusedChecked="\z\tfd\addons\media\images\itfd.paa";
                            textureFocusedUnchecked="\z\tfd\addons\media\images\tfd.paa";
                            textureHoverChecked="\z\tfd\addons\media\images\itfd.paa";
                            textureHoverUnchecked="\z\tfd\addons\media\images\tfd.paa";
                            texturePressedChecked="\z\tfd\addons\media\images\itfd.paa";
                            texturePressedUnchecked="\z\tfd\addons\media\images\tfd.paa";
                            textureDisabledChecked="\z\tfd\addons\media\images\itfd.paa";
                            textureDisabledUnchecked="\z\tfd\addons\media\images\tfd.paa";
                        };
                    };
                };
            };
        };
    };
};
