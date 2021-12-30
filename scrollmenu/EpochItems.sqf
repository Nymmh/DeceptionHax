EpochItems = [];

SpecialAmmo =
[
	["", true],
	["What Do You Want?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Topaz", [2],  "", -5, [["expression", format[exstr,"WTFEpochTopaz.sqf"]]], "1", "1"],
	["Obsidian", [3],  "", -5, [["expression", format[exstr,"WTFEpochObsidian.sqf"]]], "1", "1"],
	["Sapphire", [4],  "", -5, [["expression", format[exstr,"WTFEpochSapphire.sqf"]]], "1", "1"],
	["Amethyst", [5],  "", -5, [["expression", format[exstr,"WTFEpochAmethyst.sqf"]]], "1", "1"],
	["Emerald", [6],  "", -5, [["expression", format[exstr,"WTFEpochEmerald.sqf"]]], "1", "1"],
	["Citrine", [7],  "", -5, [["expression", format[exstr,"WTFEpochCitrine.sqf"]]], "1", "1"],
	["Ruby", [8],  "", -5, [["expression", format[exstr,"WTFEpochRuby.sqf"]]], "1", "1"],
	["MixOil", [9],  "", -5, [["expression", format[exstr,"WTFEpochMixOil.sqf"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:SpecialAmmo";