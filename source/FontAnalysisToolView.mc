using Toybox.WatchUi;

class FontAnalysisToolView extends WatchUi.View {

    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.MainLayout(dc));
    function onUpdate(dc) {
		View.onUpdate(dc);
        dc.setColor(Gfx.COLOR_BLACK, Gfx.COLOR_WHITE);
		dc.clear();
		
		var referenceLine = dc.getHeight() / 2;
       	
       	dc.drawLine(0,dc.getHeight()/2,400,dc.getHeight()/2);
       	 
        dc.setColor(Gfx.COLOR_BLACK, Gfx.COLOR_TRANSPARENT);
        dc.drawText(
        	dc.getWidth() / 2,
        	referenceLine + fontBook.calculateY(dc),
        	fontBook.fontSize,
        	fontBook.getText(),
        	Gfx.TEXT_JUSTIFY_CENTER
		);
		
		drawControlBar(dc);
		fontBook.writeData();	
		
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    }

    // Update the view
    function onUpdate(dc) {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }
   	function drawSave(dc) {
		configControllerColor(dc, save); 
		dc.drawText(
    		dc.getWidth() * .5,
    		dc.getHeight() * .1,
    		0,
    		"Save",
        	Gfx.TEXT_JUSTIFY_CENTER
		); 
   	}
   	
   	function drawReset(dc) {
   		configControllerColor(dc, reset); 
		dc.drawText(
    		dc.getWidth() * .5,
    		dc.getHeight() * .1 + (dc.getFontHeight(0) * 1),
    		0,
    		"Reset",
        	Gfx.TEXT_JUSTIFY_CENTER
		); 
   	}
   	
   	function drawPrint(dc) {
		configControllerColor(dc, print); 
		dc.drawText(
    		dc.getWidth() * .5,
    		dc.getHeight() * .1 + (dc.getFontHeight(0) * 2),
    		0,
    		"Print",
        	Gfx.TEXT_JUSTIFY_CENTER
		); 
   	}

    function configControllerColor(dc, controller) {
    	switch(controller) {
    		case focusValue:
    			if (focus) {
					dc.setColor(Gfx.COLOR_GREEN, Gfx.COLOR_TRANSPARENT);
    			} else  {
					dc.setColor(Gfx.COLOR_RED, Gfx.COLOR_TRANSPARENT);
    			}
    			break;
    		default:
    			dc.setColor(Gfx.COLOR_BLACK, Gfx.COLOR_TRANSPARENT);
    	}
    	
    }

}
