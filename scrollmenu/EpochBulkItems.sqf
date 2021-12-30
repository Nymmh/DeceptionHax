EpochBulkItems = [];

EpochBulkItems = 
[
	["", true],
	["What would you like?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Sandbag", [2],  "", -5, [["expression", format[exstr,"EpochBulkSandBag.sqf"]]], "1", "1"],
	["TankTrap", [3],  "", -5, [["expression", format[exstr,"EpochBulkTankTrap.sqf"]]], "1", "1"],
	["ItemWire", [4],  "", -5, [["expression", format[exstr,"EpochBulkItemWire.sqf"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:EpochBulkItems";