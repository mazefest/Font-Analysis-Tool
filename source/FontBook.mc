using Toybox.System as Sys;

class FontBook {
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