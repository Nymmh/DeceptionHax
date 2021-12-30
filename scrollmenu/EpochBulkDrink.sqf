EpochBulkDrink = [];

EpochBulkDrink = 
[
	["", true],
	["What would you like?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Soda_Coke", [2],  "", -5, [["expression", format[exstr,"EpochBulkSodaCoke.sqf"]]], "1", "1"],
	["Soda_Pepsi", [3],  "", -5, [["expression", format[exstr,"EpochBulkSodaCoke.sqf"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:EpochBulkDrink";