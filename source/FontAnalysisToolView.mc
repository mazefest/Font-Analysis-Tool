using Toybox.System as Sys;
using Toybox.WatchUi;
using Toybox.Graphics as Gfx;

var fontBook;

enum {fontSize, descent, devDesc, devDescDiff, save, reset, print, line}
class FontAnalysisToolView extends WatchUi.View {
    var focus;
    var focusValue;
    function initialize() {
		View.initialize();
        fontBook = new FontBook();
    	focus = true;
    	focusValue = fontSize;
    }

    // Update the view
    function onUpdate(dc) {
		View.onUpdate(dc);
        dc.setColor(Gfx.COLOR_BLACK, Gfx.COLOR_WHITE);
		dc.clear();
		
		var referenceLine = dc.getHeight() / 2;
       	
       	dc.drawLine(0,dc.getHeight()/2,400,dc.getHeight()/2);
		drawLineInterface(dc);	
       	
       	 
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

    function drawControlBar(dc) {
		drawFontSizeController(dc);
		drawDescentController(dc);
		drawIQDescentController(dc);
		drawDevDescDiff(dc); 
		drawSave(dc);
		drawReset(dc);
		drawPrint(dc);
		drawLine(dc);
    }
    
    function drawFontSizeController(dc) {
       	configControllerColor(dc, fontSize); 
       	dc.drawText(
    		dc.getWidth() * .5,
    		dc.getHeight() * .65,
    		0,
    		"FontSize: " + fontBook.fontSize,
        	Gfx.TEXT_JUSTIFY_CENTER
		); 
    }
    
    function drawDescentController(dc) {
       	configControllerColor(dc, descent); 
       	dc.drawText(
    		dc.getWidth() * .5,
    		dc.getHeight() * .65 + dc.getFontHeight(0),
    		0,
    		"Descent: " + fontBook.descent,
        	Gfx.TEXT_JUSTIFY_CENTER
		); 
    }
    
    function drawIQDescentController(dc) {
       	configControllerColor(dc, devDesc); 
    	var text = fontBook.devDesc ? "Enabled" : "Disabled";
		dc.drawText(
    		dc.getWidth() * .5,
    		dc.getHeight() * .65 + (dc.getFontHeight(0) * 2),
    		0,
    		"Dev Desc: " + text,
        	Gfx.TEXT_JUSTIFY_CENTER
		); 
    }
    
	function drawDevDescDiff(dc) {
       configControllerColor(dc, devDescDiff); 
	   dc.drawText(
    		dc.getWidth() * .5,
    		dc.getHeight() * .65 + (dc.getFontHeight(0) * 3),
    		0,
    		"DDD: " + fontBook.getDevAndHardDescentDiff(dc).toString(),
        	Gfx.TEXT_JUSTIFY_CENTER
		); 
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
   	
   	function drawLine(dc) {
		configControllerColor(dc, line); 
		dc.drawText(
    		dc.getWidth() * .5,
    		dc.getHeight() * .1 + (dc.getFontHeight(0) * 3),
    		0,
    		"Line",
        	Gfx.TEXT_JUSTIFY_CENTER
		); 
   	}
   	
   	function drawLineInterface(dc) {
	   if (focusValue == line && focus) {
	   	Sys.println("hre");
		   var refLine = dc.getHeight() / 2;
		   dc.drawLine(0, (refLine + fontBook.height), 400, (refLine + fontBook.height));
	   	Sys.println("hre" + (refLine + fontBook.height));
	   }
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
    
    function clearScreen(dc) {
		dc.setColor(Gfx.COLOR_BLACK, Gfx.COLOR_WHITE);
		dc.clear();
	}
	
	function changeFocus() {
		focus = !focus;
	}

}
