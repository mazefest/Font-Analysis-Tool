using Toybox.WatchUi;

class FontAnalysisToolDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new FontAnalysisToolMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }
	function changeValue(value) {
		switch (view.focusValue) {
			case fontSize:
				fontBook.changeFont(value);
				break;

			case descent:
				fontBook.changeDescent(value);
				break;	
		
		}
		return true;
	}

}