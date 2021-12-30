EpochBuilding= [];

EpochBuilding = 
[
	["", true],
	[">>> Next >>>", [11], "#USER:EpochEquipmentPage2", -5, [["expression", ""]], "1", "1"],
	["What would you like?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Building Wood", [2],  "", -5, [["expression", format[exstr,"EpochBuildingWood.sqf"]]], "1", "1"],
	["Building Cinder", [3],  "", -5, [["expression", format[exstr,"EpochBuildingCinder.sqf"]]], "1", "1"],
	["Building Metal", [4],  "", -5, [["expression", format[exstr,"EpochBuildingMetal.sqf"]]], "1", "1"],
	["Storage", [5],  "", -5, [["expression", format[exstr,"EpochStoreageForYourShit.sqf"]]], "1", "1"],
	["Crafted Buildings", [6],  "", -5, [["expression", format[exstr,"EpochCraftedBuildings.sqf"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:EpochBuilding";