using Toybox.WatchUi;

class FontAnalysisToolDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new FontAnalysisToolMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }
	function onNextPage() {
	
		if (view.focusValue == devDesc && view.focus) {
			fontBook.changeDeviceDescent();
		} else if (view.focus) {
			changeValue(1);
		} else {
			view.focusValue = (view.focusValue + 1) % (focusItemCount + 1); 
		}
		
		WatchUi.requestUpdate();
	}
	function onPreviousPage() {
		
		if (view.focusValue == devDesc && view.focus) {
			fontBook.changeDeviceDescent();
		} else if (view.focus) {
			changeValue(-1);
		} else {
			view.focusValue = (view.focusValue - 1);
			view.focusValue = (view.focusValue < 0) ? (focusItemCount - 1) : view.focusValue;  
		}
		
		WatchUi.requestUpdate();
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