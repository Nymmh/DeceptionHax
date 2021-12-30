EpochAllDatBulk = [];

EpochAllDatBulk = 
[
	["", true],
	[">>> Next >>>", [11], "#USER:EpochCraftBuildingsPage2", -5, [["expression", ""]], "1", "1"],
	["What would you like?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Drink", [2],  "", -5, [["expression", format[exstr,"EpochBulkDrink.sqf"]]], "1", "1"],
	["Food", [3],  "", -5, [["expression", format[exstr,"EpochBulkFood.sqf"]]], "1", "1"],
	["Ammunition", [4],  "", -5, [["expression", format[exstr,"EpochBulkAmmo.sqf"]]], "1", "1"],
	["Items", [5],  "", -5, [["expression", format[exstr,"EpochBulkItems.sqf"]]], "1", "1"],
	["Equipment", [6],  "", -5, [["expression", format[exstr,"EpochEquipment.sqf"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:EpochAllDatBulk";