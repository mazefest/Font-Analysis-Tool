using Toybox.WatchUi;

class FontAnalysisToolDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new FontAnalysisToolMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

}