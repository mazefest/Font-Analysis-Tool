using Toybox.WatchUi;
using Toybox.System as Sys;

class FontAnalysisToolDelegate extends WatchUi.BehaviorDelegate {
	var view;
	var focusItemCount;
    function initialize(view) {
        BehaviorDelegate.initialize();
        self.view = view;
		focusItemCount = 7;
    }

    function onMenu() {
        return true;
    }
    
    function onSelect() {
   		switch(view.focusValue) {
   			case save:
   				fontBook.save();
   				break;
   			case reset:
   				fontBook.reset();
   				break;
   			case print:
   				fontBook.print();
   				break;
   			default:
			   view.changeFocus(); 
   		}	
   		
		WatchUi.requestUpdate();
    }
	
	function onBack() {
		view.focus = false;
		WatchUi.requestUpdate();
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
			view.focusValue = (view.focusValue < 0) ? (focusItemCount) : view.focusValue;  
		}
		
		WatchUi.requestUpdate();
	}
	
	function changeValue(value) {
		switch (view.focusValue) {
			case line: 
				fontBook.changeHeight(value);
				break;	
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