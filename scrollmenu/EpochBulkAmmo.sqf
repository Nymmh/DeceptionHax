EpochBulkAmmo = [];

EpochBulkAmmo = 
[
	["", true],
	["What would you like?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["30Rnd_MP5SD", [2],  "", -5, [["expression", format[exstr,"EpochBulk30RndMp5SD.sqf"]]], "1", "1"],
	["30Rnd_StanagSD", [3],  "", -5, [["expression", format[exstr,"EpochBulk30RndMp5SD.sqf"]]], "1", "1"],
	["17Rnd_G17", [4],  "", -5, [["expression", format[exstr,"EpochBulk17RndG17.sqf"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:EpochBulkAmmo";