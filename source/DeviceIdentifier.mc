using Toybox.System as Sys;

enum {
fr55, 
fr245m, 
fr645m, 
fr745, 
fr945, 
F5,	
Fenix5X, 
Fenix5Plus, 
Fenix5xPlus, 
Fenix5sPlus, 
Fenix6Pro, 
Fenix6xPro, 
Fenix6sPro, 
MARQAthlete, 
MARQAviator, 
MARQCaptain, 
MARQDriver, 
MARQExpedition, 
MARQAdventurer, 
MARQCommander, 
MARQGolfer,
LegacyHeroCaptainMarvel, 
LegacyFirstAvenger, 
LegacySagaDarthVader, 
LegacySagaRey, 
Venu, 
VenuD, 
VenuSQM, 
VivoActive3D, 
Vivoactive3M, 
Vivoactive3MLTE, 
Vivoactive4, 
Vivoactive4s, 
D2Charlie, 
D2Delta, 
D2DeltaPX, 
D2DeltaS, 
DescentMK1, 
DescentMK2,
Enduro
}		


function getDevice() {
	var partNumber = Sys.getDeviceSettings().partNumber;
	
	switch (partNumber) {
	
		case "006-B3077-00":
			return fr245m;
			break;	
		
		case "006-B2888-00":
			return fr645m;
			break;
	
		case "006-B3589-00": 
			return fr745;	 
			break;

		case "006-B3113-00": 
			return fr945;	 
			break;
		
		case "006-B2697-00": 
			return F5; 	 
			break;

		case "006-B2604-00": 
			return Fenix5X;
			break;

		case "006-B3110-00": 
			return Fenix5Plus;  
			break;
		
		case "006-B3111-00": 
			return Fenix5xPlus;  
			break;

		case "006-B2900-00": 
			return Fenix5sPlus;  
			break;
			
		case "006-B3290-00":
			return Fenix6Pro;
			break;
			
		case "006-B3291-00": 
			return Fenix6xPro;	 
			break;

		case "006-B3288-00" :
			return Fenix6sPro;
			break;

		case "006-B3251-00":
			return MARQAthlete;
			break;
			
		case "006-B3247-00":
			return MARQAviator;
			break;

		case "006-B3248-00":
			return MARQCaptain;
			break;

		case "006-B3246-00":
			return MARQDriver;
			break;
			
		case "006-B3250-00":
			return MARQExpedition;	
			break;

		case "006-B3624-00":
			return MARQAdventurer;
			break;

		case "006-B3249-00":
			return MARQCommander;	
			break;
		case "006-B3739-00":
			return MARQGolfer;
			break;
		case "006-B3500-00":
			return LegacyHeroCaptainMarvel;
			break;

		case "006-B3501-00":
			return LegacyFirstAvenger;	
			break;

		case "006-B3499-00":
			return LegacySagaDarthVader;	
			break;

		case "006-B3498-00":	
			return LegacySagaRey;	 
			break;

		case "006-B3226-00":
			return Venu;	
			break;

		case "006-B3740-00":
			return VenuD;
			break;

		case "006-B3596-00":
			return VenuSQM;
			break;
		
		case "006-B3473-00":
			return VivoActive3D;	
			break;

		case "006-B2988-00":
			return Vivoactive3M;
			break;

		case "006-B3066-00":
			return Vivoactive3MLTE;
			break;

		case "006-B3225-00":
			return Vivoactive4;	
			break;

		case "006-B3224-00":
			return Vivoactive4s;
			break;
		
		case "006-B2819-00":
			return D2Charlie;
			break;

		case "006-B3197-00":
			return D2Delta;
			break;
			
		case "006-B3198-00":
			return D2DeltaPX;	
			break;
			
		case "006-B3196-00":	
			return D2DeltaS;
			break;
		
		case "006-B2859-00":
			return DescentMK1;
			break;

		case "006-B3258-00":
			return DescentMK2;	
			break;
		case "006-B3638-00":
			return Enduro;
			break;
		case "006-B3869-00":
			return fr55;
			break;
		default:
			Sys.println("--->> " + partNumber);
			return 0;
		
	}
}
/*
function configDevieTextParameters(device) {
	switch (device) {
	
		case fr645m:
		case Fenix5Plus:
		case Fenix5sPlus:
		case Fenix5x:
		case Fenix5xPlus:
			fontDescent = [-6, -6, -7, -8, -7, 0, -1, -1, -1];
			fontHeight = [17, 17, 18, 21, 25, 28, 37, 53, 60];
			break;
 		
 		case fr245m:
 		case fr745:
 		case fr945:
 		case MARQAdvenurer:
		case MARQAthlete:
		case MARQAviator:
		case MARQCaptain:
		case MARQCommander:
		case MARQDriver:
		case MARQExpedition:
		case MARQgolfer:
			fontDescent = [-5, -6, -7, -8, -8, -13, -15, -21, -24];
			fontHeight = [12, 16, 18, 21, 23, 29, 35, 47, 54];
 			break;
		 
		case D2Charlie:
		case D2Delta:
		case D2DeltaPX:
		case D2DeltaS:
		case DescentMK1:
			fontDescent = [-6, -6, -7, -8, -8, -1, -1, -1, -1];
			fontHeight = [17, 17, 17, 21, 23, 27, 37, 53, 59];
			break; 
		 
		case LegacyHeroCaptainMarvel:
		case LegacySagaRey:
		case Vivoactive4s:
			fontDescent = [-4, -5, -6, -7, -8, -8, -10, -19, -21];
			fontHeight = [11, 15, 17, 19, 21, 27, 30, 41, 46];
			break;

		case LegacySagaDarthVader:
		case LegacyFirstAvenger:
		case Fenix6sPro:
		case Vivoactive4:
			fontDescent = [-4, -5, -7, -8, -9, -10, -11, -21, -25];
			fontHeight = [13, 18, 19, 22, 25, 31, 35, 48, 55];
			break;
 
		case DescentMK2:
			fontDescent = [-4, -8, -8, -9, -9, -16, -20, -25, -29];
			fontHeight = [13, 19, 21, 25, 27, 33, 40, 55, 62];
			break;
		
		case Fenix6Pro:
		case Fenix6xPro:
			fontDescent = [-4, -7, -7, -8, -9, -15, -19, -24, -27];
			fontHeight = [13, 18, 20, 24, 25, 31, 37, 51, 58];
			break;
 
		 case Venu:
		 case VenuD:
			 fontDescent = [-7, -9, -10, -11, -13, -14, -16, -21, -25];
			 fontHeight = [21, 26, 29, 35, 36, 46, 54, 82, 96];
			 break;
 
		 case Vivoactive3D:
		 case Vivoactive3M:
		 case Vivoactive3MLTE:
			 fontDescent = [-6, -9, -9, -10, -10, -11, -14, -20, -25];
			 fontHeight = [13, 17, 17, 19, 19, 22, 26, 43, 53];
 
		 case VenuSQM:
			 fontDescent = [-5, -5, -5, -5, -7, -8, -11, -13, -17];
			 fontHeight = [19, 19, 19, 19, 20, 20, 26, 31, 40];
 
	}
}
*/

var deviceNames = [
"55",
"245M",
"645M",
"745",
"945",	 
"F5",	 
"Fenix 5X",
"Fenix 5 Plus",
"Fenix 5x Plus",
"Fenix 5s Plus",
"Fenix 6 Pro",	  
"Fenix 6x Pro", 
"Fenix 6s Pro",
"MARQ Athlete",
"MARQ Aviator",	
"MARQ Captain",
"MARQ Driver",
"MARQ Expedition",	
"MARQ Adventurer",
"MARQ Commander",
"Legacy Hero Captain Marvel",
"Legacy First Avenger",
"Legacy Saga Darth Vader",	
"Legacy Saga Rey",
"Venu",
"Venu D",
"Venu SQM",
"Vivo Active 3D",	
"Vivoactive 3M",
"Vivoactive 3M LTE",
"Vivoactive 4",
"Vivoactive 4s",
"D2 Charlie",
"D2 Delta",
"D2 Delta PX",	
"D2 Delta S",
"Descent MK1",	
"Descent MK2",
"Enduro",
];

