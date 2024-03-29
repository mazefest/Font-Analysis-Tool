using Toybox.System as Sys;

class FontBook {
	var fontSize;
	var testText;	
	var testTextIdx;
	
	var adjustment;
	var devDesc;
	
	var descent;
	var height;
	
	var fontDescentStore;
	var fontHeightStore;
	
	function initialize() {
		fontSize = 0;
		testText = ["TEST WORD", 888];
		testTextIdx = 0;
		descent = 0;
		adjustment = 0;
		devDesc = false;
		fontDescentStore = [0,0,0,0,0,0,0,0,0];
		fontHeightStore = [0,0,0,0,0,0,0,0,0]; 
		height = 70;
	}
	
	function changeFont(value) {
		fontSize = (fontSize + value) % 9;
		fontSize = (fontSize < 0) ? 8 : fontSize;
		
		if (fontSize < 5) {
			testTextIdx = 0;
		} else {
			testTextIdx = 1;
		}
	}
	
	function changeDescent(value) {
		descent += value;
	}
	
	function changeDeviceDescent() {
		devDesc = !devDesc;
	}	
	
	function changeHeight(value) {
		height += value;
	}
	
	function calculateY(dc) {
		var mDescent = descent;
		if (devDesc) {
			mDescent -= dc.getFontDescent(fontSize);
		} 
		
		return mDescent;
	}
	
	function getDevAndHardDescentDiff(dc) {
		if (devDesc) {
			return descent + (dc.getFontDescent(fontSize) * -1);
		} else {
			return 0;
		}
	}
	
	function getText() {
		return testText[testTextIdx];
	}
	
	function writeData() {
		//Sys.println("Font Size: " + fontSize);
		//Sys.println("Descent: " + descent);
		//Sys.println("adjustment: " + adjustment);
	}
	
	function reset() {
		fontSize = 0;
		testText = ["TEST WORD", 888];
		testTextIdx = 0;
		descent = 0;
		adjustment = 0;
		devDesc = false;
		fontDescentStore = [0,0,0,0,0,0,0,0,0];
		fontHeightStore = [0,0,0,0,0,0,0,0,0];
	}
	
	function save() {
		fontDescentStore[fontSize] = descent;
		fontHeightStore[fontSize] = height + 2;
	
		changeFont(1);
		descent = 0;
		adjustment = 0;
		devDesc = false;
		
	}
	
	function print() {
		var deviceId = getDevice();
		
		Sys.println(" #"+deviceNames[deviceId]);
		Sys.println(" Font Descent" + fontDescentStore + "\n Font Height" + fontHeightStore);
	}
	
	function fontName() {
		switch(fontSize) {
			case 0:
				return "XTINY";
				break;
			case 1:
				return "TINY";
			case 2:
				return "SMALL";
			case 3:
				return "MEDIUM";
			case 4:
				return "LARGE";
			case 5:
				return "NUMBER_MILD";
			case 6:
				return "NUMBER_MEDIUM";
			case 7:
				return "NUMBER_HOT";
			case 8:
				return "NUMBER_THAI_HOT";
			default:
				return "--";
		}
	}
	
	


}