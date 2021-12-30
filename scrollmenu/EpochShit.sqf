EpochStartingTab = [];
EpochBackPacks = [];
EpochFoodTab = [];
EpochDrinkTab = [];
EpochSkinsTab = [];
EpochMoneyTab = [];
EpochMoney = [];
EpochMoneyPage2 = [];
EpochEquipment = [];
EpochEquipmentPage2 = [];
EpochEquipmentPage3 = [];
EpochBuilding = [];
EpochStorage = [];
EpochCraftBuildings = [];
EpochCraftBuildingsPage2 = [];
EpochBuildingWood = [];
EpochBuildingWoodPage2 = [];
EpochBuildingWoodPage3 = [];
EpochBuildingCinder = [];
EpochBuildingMetal = [];
EpochBulk = [];
EpochBulkPage2 = [];

_text = "player addWeapon '%1'; _mags = getArray(configfile >> 'cfgWeapons' >> '%1' >> 'magazines'); _mag = _mags select 0; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player selectWeapon '%1'; reload player;player setUnitRecoilCoefficient 0;";

EpochStartingTab =
[
	["", true],
	["Select a Page", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Epoch Food", [2],  "", -5, [["expression", format[exstr,"EpochFood.sqf"]]], "1", "1"],
	["Epoch Drink", [3],  "", -5, [["expression", format[exstr,"EpochDrink.sqf"]]], "1", "1"],
	["Epoch Skins", [4],  "", -5, [["expression", format[exstr,"EpochSkins.sqf"]]], "1", "1"],
	["Epoch Money", [5],  "", -5, [["expression", format[exstr,"EpochMoney.sqf"]]], "1", "1"],
	["Epoch Equipment", [6],  "", -5, [["expression", format[exstr,"EpochEquipment.sqf"]]], "1", "1"],
	["Epoch Building", [7],  "", -5, [["expression", format[exstr,"EpochBuidling.sqf"]]], "1", "1"],
	["Epoch Bulk", [8],  "", -5, [["expression", format[exstr,"EpochAllDatBulk.sqf"]]], "1", "1"],
	["Epoch Items", [9],  "", -5, [["expression", format[exstr,"EpochItems.sqf"]]], "1", "1"],
	["Epoch BackPacks", [10], "#USER:EpochBackPacks", -5, [["expression", ""]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:EpochStartingTab";

EpochBackPacks =
[
	["", true],
	["Epoch BackPacks", [-1], "", -5, [["expression", ""]], "1", "0"],
	["LargeGunBag", [2], "", -5, [["expression", "player addMagazine '2b14_82mm_TK_INS_Bag_EP1';"]], "1", "1"],
	["GunBag", [3], "", -5, [["expression", "player addMagazine 'Tripod_Bag';"]], "1", "1"],
	["CompactPack", [4], "", -5, [["expression", "player addMagazine 'DZ_CompactPack_EP1';"]], "1", "1"],
	["TerminalPack", [5], "", -5, [["expression", "player addMagazine 'DZ_TerminalPack_EP1 ';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];