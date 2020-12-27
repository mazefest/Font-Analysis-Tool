using Toybox.System as Sys;

enum {fr245m, fr645m, fr745, fr945, F5,	Fenix5X, Fenix5xPlus, Fenix5sPlus, Fenix6xPro, Fenix6sPro, MARQAthlete, MARQAviator, MARQCaptain, MARQDriver, MARQExpedition, MARQAdventurer, MARQCommander, LegacyHeroCaptainMarvel, LegacyFirstAvenger, LegacySagaDarthVader, LegacySagaRey, Venu, VenuD, VenuSQM, VivoActive3D, Vivoactive3M, Vivoactive3MLTE, Vivoactive4, Vivoactive4s, D2Charlie, D2Delta, D2DeltaPX, D2DeltaS, DescentMK1, DescentMK2}		


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
		
		case "006-B3110-00": 
			return F5; 	 
			break;

		case "006-B2604-00": 
			return Fenix5X;
			break;

		case "006-B3111-00": 
			return Fenix5xPlus;  
			break;

		case "006-B2900-00": 
			return Fenix5sPlus;  
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
	}
}


var deviceNames = [
"245M",
"645M",
"745",
"945",	 
"F5",	 
"Fenix 5X",
"Fenix 5x Plus",
"Fenix 5s Plus",	  
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
"Descent MK2"
];

