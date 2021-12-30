EpochBuildingMetal = [];

EpochBuildingMetal = 
[
	["", true],
	["What would you like?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Metal_Floor", [2],  "", -5, [["expression", format[exstr,"EpochMetalFloor.sqf"]]], "1", "1"],
	["Metal_Panel", [3],  "", -5, [["expression", format[exstr,"EpochMetalPanel.sqf"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:EpochBuildingMetal";