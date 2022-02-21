/*
    Author: Freddo

    Creates a debriefing section for admins containing all
    log messasges sent during the mission.
    Displayed in mission debriefing screen.

    Include this file in description.ext of your mission

    Example:
    class CfgDebriefingSections {
        #include "\z\tfd\addons\adminmenu\debriefAdminLog.inc"
    };
*/

class tfd_adminlog
{
    title = "TFD Log";
    variable = "TFD_adminmenu_debrief";
};
