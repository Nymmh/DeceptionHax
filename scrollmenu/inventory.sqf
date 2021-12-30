items1 = 
[
	["",true],
	[">>> Next >>>", [11], "#USER:items2", -5, [["expression", ""]], "1", "1"],
	["PAGE 1", [-1], "", -5, [["expression", ""]], "1", "0"],	
	["Map", [2], "", -5, [["expression", "player addWeapon 'ItemMap';"]], "1", "1"],
	["GPS", [3], "", -5, [["expression", "player addWeapon 'ItemGps';"]], "1", "1"],
	["Watch", [4], "", -5, [["expression", "player addWeapon 'ItemWatch';"]], "1", "1"],
	["Radio", [5], "", -5, [["expression", "player addWeapon 'ItemRadio';"]], "1", "1"],
	["Compass", [6], "", -5, [["expression", "player addWeapon 'ItemCompass';"]], "1", "1"],
	["Binocular", [7], "", -5, [["expression", "player addWeapon 'Binocular';"]], "1", "1"],
	["Rangefinder", [8], "", -5, [["expression", "player addWeapon 'Binocular_Vector';"]], "1", "1"],
	["Laser marker", [9], "", -5, [["expression", "player addWeapon 'Laserdesignator';player addMagazine 'Laserbatteries';"]], "1", "1"],
	["Nightvision goggles", [10], "", -5, [["expression", "player addWeapon 'NVGoggles';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

items2 = 
[
	["",true],
	[">>> Next >>>", [11], "#USER:items3", -5, [["expression", ""]], "1", "1"],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],	
	["PAGE 2", [-1], "", -5, [["expression", ""]], "1", "0"],	
	["Hunting knife", [2], "", -5, [["expression", "player addWeapon 'ItemKnife';"]], "1", "1"],
	["Hatchet", [3], "", -5, [["expression", "player addWeapon 'ItemHatchet';"]], "1", "1"],
	["Toolbox", [4], "", -5, [["expression", "player addWeapon 'ItemToolbox';"]], "1", "1"],
	["Military Flashlight", [5], "", -5, [["expression", "player addWeapon 'ItemFlashlightRed';"]], "1", "1"],
	["Matchbox", [6], "", -5, [["expression", "player addWeapon 'ItemMatchbox';"]], "1", "1"],
	["E-Tool", [7], "", -5, [["expression", "player addWeapon 'ItemEtool';"]], "1", "1"],	
	["JerryCan", [8],  "", -5, [["expression", format[exstr,"SpawningJerryCans.sqf"]]], "1", "1"],
	["ItemTent", [9], "", -5, [["expression", "player addMagazine 'ItemTent';"]], "1", "1"],
	["PartWoodPile", [10], "", -5, [["expression", "player addMagazine 'PartWoodPile';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

items3 = 
[
	["",true],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],	
	["PAGE 3", [-1], "", -5, [["expression", ""]], "1", "0"],
	["PartEngine", [2], "", -5, [["expression", "player addMagazine 'PartEngine';"]], "1", "1"],
	["PartFueltank", [3], "", -5, [["expression", "player addMagazine 'PartFueltank';"]], "1", "1"],
	["PartVRotor", [4], "", -5, [["expression", "player addMagazine 'PartVRotor';"]], "1", "1"],
	["PartScrap", [5], "", -5, [["expression", "player addMagazine 'PartGeneric';"]], "1", "1"],
	["PartWheel", [6], "", -5, [["expression", "player addMagazine 'PartWheel';"]], "1", "1"],
	["PartGlass", [7], "", -5, [["expression", "player addMagazine 'PartGlass'; player addMagazine 'PartGlass'; player addMagazine 'PartGlass'; player addMagazine 'PartGlass';"]], "1", "1"],
	["Wire", [8], "", -5, [["expression", "player addMagazine 'ItemWire';"]], "1", "1"],
	["Sandbag", [9], "", -5, [["expression", "player addMagazine 'ItemSandbag';"]], "1", "1"],
	["TankTrap", [10], "", -5, [["expression", "player addMagazine 'ItemTankTrap'; player addMagazine 'ItemTankTrap'; player addMagazine 'ItemTankTrap';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:items1";