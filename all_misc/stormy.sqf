if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then 
{
	_toremote = format
	["
		[] spawn {
		_currentFog = fog;
		_currentOvercast = 1;
		0 setOvercast _currentOvercast;
		0 setFog _currentFog;
		};
	"];
	[_toremote] execVM "DeceptionHax\exec.sqf";
	
}else{

	_toremote = format["1 setFog 0.8;"];
	[_toremote] execVM "DeceptionHax\exec.sqf";
	
	sleep 3;

	_toremote = format["setViewDistance 500;"];
	[_toremote] execVM "DeceptionHax\exec.sqf";
	
	sleep 1;
	
	_toremote = format["1 setOvercast 1;"];
	[_toremote] execVM "DeceptionHax\exec.sqf";
	
	sleep 1;
	
	_creepy = "
	cutText [""
	Its raining - its pouring\n
	The old man is snoring\n
	He went to bed and bumped his head\n
	And he couldnt get up in the morning\n
	"", ""PLAIN"", 2];";
	[_creepy] execVM "DeceptionHax\exec.sqf";
};


hint format ["Stormy Weather"];
cutText [format["Stormy Weather"], "PLAIN DOWN"];


/*
setDate [2013, 1, 1, 16, 0];
*/