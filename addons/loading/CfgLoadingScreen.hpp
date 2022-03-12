#define LOADING_SCREEN_CLASS(className,authorName) \
    class className { \
        author = QUOTE(authorName); \
        path = QPATHTOF(ui\loading\##className##.paa); \
    }

class GVAR(CfgLoadingScreen) {
    class Backgrounds {
        LOADING_SCREEN_CLASS(AdobeStock_269676636,TFD);
        LOADING_SCREEN_CLASS(AdobeStock_269676677,TFD);
        LOADING_SCREEN_CLASS(AdobeStock_271859839,TFD);
        LOADING_SCREEN_CLASS(AdobeStock_285905473,TFD);
        LOADING_SCREEN_CLASS(AdobeStock_296841733,TFD);
        LOADING_SCREEN_CLASS(AdobeStock_297308106,TFD);
        LOADING_SCREEN_CLASS(AdobeStock_298480575,TFD);
        LOADING_SCREEN_CLASS(AdobeStock_361616315,TFD);
        LOADING_SCREEN_CLASS(AdobeStock_287796119,TFD);
        LOADING_SCREEN_CLASS(AdobeStock_288887578,TFD);
        LOADING_SCREEN_CLASS(AdobeStock_319048089,TFD);
        LOADING_SCREEN_CLASS(maxresdefault,TFD);
        LOADING_SCREEN_CLASS(AdobeStock_269677107,TFD);
        LOADING_SCREEN_CLASS(AdobeStock_272813407,TFD);
        LOADING_SCREEN_CLASS(AdobeStock_275306051,TFD);
        LOADING_SCREEN_CLASS(AdobeStock_283924597,TFD);
        LOADING_SCREEN_CLASS(AdobeStock_371890417,TFD);
        LOADING_SCREEN_CLASS(AdobeStock_400370807,TFD);
    };
};
