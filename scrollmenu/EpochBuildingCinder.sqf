EpochBuildingCinder  = [];

EpochBuildingCinder = 
[
	["", true],
	["What would you like?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Cinder_Blocks", [2],  "", -5, [["expression", format[exstr,"EpochCinderBlocks.sqf"]]], "1", "1"],
	["Mortar_Bucket", [3],  "", -5, [["expression", format[exstr,"EpochMortarBucket.sqf"]]], "1", "1"],
	["Cinder_Wall", [4],  "", -5, [["expression", format[exstr,"EpochCinderWall.sqf"]]], "1", "1"],
	["Cinder_Garage", [5],  "", -5, [["expression", format[exstr,"EpochCinderGarage.sqf"]]], "1", "1"],
	["Cinder_Door", [6],  "", -5, [["expression", format[exstr,"EpochCinderDoor.sqf"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:EpochBuildingCinder";