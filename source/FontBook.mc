using Toybox.System as Sys;

class FontBook {
	var fontSize;
	var testText;	
	var testTextIdx;
	
	var adjustment;
	var devDesc;
	
	var descent;
	
	var fontDescentStore;
	function initialize() {
		fontSize = 0;
		testText = ["TEST WORD", 888];
		testTextIdx = 0;
		descent = 0;
		adjustment = 0;
		devDesc = false;
		fontDescentStore = [0,0,0,0,0,0,0,0,0];
	}
	
	function changeFont(value) {
		fontSize = (fontSize + value) % 9;
		fontSize = (fontSize < 0) ? 8 : fontSize;
		
		if (fontSize < 4) {
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
	}
	
	function save() {
		fontDescentStore[fontSize] = descent;
	
		changeFont(1);
		testText = ["TEST WORD", 888];
		testTextIdx = 0;
		descent = 0;
		adjustment = 0;
		devDesc = false;
		Sys.println("Saved Value");
		
	}
	
	function print() {
		Sys.println("Device -> " + fontDescentStore);
	}
	
	
	


}