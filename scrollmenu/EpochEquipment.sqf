EpochEquipment = [];
EpochEquipmentPage2 = [];
EpochEquipmentPage3 = [];
EpochEquipmentPage4 = [];

EpochEquipment = 
[
	["", true],
	[">>> Next >>>", [11], "#USER:EpochEquipmentPage2", -5, [["expression", ""]], "1", "1"],
	["What would you like?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["HotwireKit", [2], "", -5, [["expression", "player addMagazine 'ItemHotwireKit';"]], "1", "1"],
	["LightBulbs", [3],  "", -5, [["expression", format[exstr,"EpochLightBulb.sqf"]]], "1", "1"],
	["ZombieParts", [4], "", -5, [["expression", "player addMagazine 'ZombieParts';"]], "1", "1"],
	["ComboLock", [5],  "", -5, [["expression", format[exstr,"EpochComboLock.sqf"]]], "1", "1"],
	["MetalPole", [6],  "", -5, [["expression", format[exstr,"EpochMetalPole.sqf"]]], "1", "1"],
	["Generator", [7], "", -5, [["expression", "player addMagazine 'ItemGenerator';"]], "1", "1"],
	["Fuel_Pump", [8], "", -5, [["expression", "player addMagazine 'fuel_pump_kit';"]], "1", "1"],
	["Light_Pole", [9],  "", -5, [["expression", format[exstr,"EpochMetalPole.sqf"]]], "1", "1"],
	["FireBarrel", [10], "", -5, [["expression", "player addMagazine 'ItemFireBarrel_kit';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:EpochEquipment";

EpochEquipmentPage2 =
[
	["", true],
	[">>> Next >>>", [11], "#USER:EpochEquipmentPage3", -5, [["expression", ""]], "1", "1"],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["What would you like?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["FuelBarrel", [2], "", -5, [["expression", "player addMagazine 'ItemFuelBarrel';"]], "1", "1"],
	["OilBarrel", [3], "", -5, [["expression", "player addMagazine 'ItemOilBarrel';"]], "1", "1"],
	["Canvas", [4], "", -5, [["expression", "player addMagazine 'ItemCanvas';"]], "1", "1"],
	["Burlap", [5], "", -5, [["expression", "player addMagazine 'ItemBurlap';"]], "1", "1"],
	["Document_Ramp", [6], "", -5, [["expression", "player addMagazine 'ItemDocumentRamp';"]], "1", "1"],
	["Workbench", [7], "", -5, [["expression", "player addMagazine 'workbench_kit';"]], "1", "1"],
	["Iron_Ore", [8], "", -5, [["expression", "player addMagazine 'PartOre';"]], "1", "1"],
	["Ore_Silver", [9], "", -5, [["expression", "player addMagazine 'PartOreSilver';"]], "1", "1"],
	["Ore_Gold", [10], "", -5, [["expression", "player addMagazine 'PartOreGold';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

EpochEquipmentPage3 = 
[
	["", true],
	[">>> Next >>>", [11], "#USER:EpochEquipmentPage4", -5, [["expression", ""]], "1", "1"],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["What would you like?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Sledge_Head", [2], "", -5, [["expression", "player addMagazine 'ItemSledgeHead';"]], "1", "1"],
	["Sledge_Handle", [3], "", -5, [["expression", "player addMagazine 'ItemSledgeHandle';"]], "1", "1"],
	["Sandbag_Large", [4],  "", -5, [["expression", format[exstr,"EpochSandbagLarge.sqf"]]], "1", "1"],
	["Sandbag_ExLarge", [5],  "", -5, [["expression", format[exstr,"EpochSandbagExLarge.sqf"]]], "1", "1"],
	["Sandbag_ExLarge5x", [6],  "", -5, [["expression", format[exstr,"EpochSandbagExLarge5x.sqf"]]], "1", "1"],
	["Trap_Bear", [7], "", -5, [["expression", "player addMagazine 'TrapBear';"]], "1", "1"],
	["Quiver", [8], "", -5, [["expression", "player addMagazine 'Quiver';"]], "1", "1"],
	["30m_plot", [9], "", -5, [["expression", "player addMagazine '30m_plot_kit';"]], "1", "1"],
	["GunRack", [10],  "", -5, [["expression", format[exstr,"EpochGunRack.sqf"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

EpochEquipmentPage4 =
[
	["", true],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["What would you like?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["KeyKit", [2], "", -5, [["expression", "player addMagazine 'ItemKeyKit';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];
