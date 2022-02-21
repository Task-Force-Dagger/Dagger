#define MAINPREFIX z
#define PREFIX tfd
#define SUBPREFIX addons

#include "script_version.hpp"

#define VERSION MAJOR.MINOR
#define VERSION_STR MAJOR.MINOR
#define VERSION_AR MAJOR,MINOR

#define AUTHOR TFD
#define QAUTHOR QUOTE(AUTHOR)

#define LOGO_PATH "\z\tfd\addons\media\images\tfd.paa"

#define URL https://arma.wiki/
#define NAME TFD

// MINIMAL REQUIRED VERSIONS
// ARMA, CBA, ACE
#define REQUIRED_VERSION 2
#define REQUIRED_CBA_VERSION {3,12,2}
#define REQUIRED_ACE_VERSION {3,12,6}

#define ZEUS_ADDITIONS_TAG ZEUS_ADDITIONS

#ifdef COMPONENT_BEAUTIFIED
    #define COMPONENT_NAME QUOTE(TFD - COMPONENT_BEAUTIFIED)
#else
    #define COMPONENT_NAME QUOTE(TFD - COMPONENT)
#endif
