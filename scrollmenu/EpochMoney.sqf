EpochMoneyTab = [];
EpochMoneyTabPage2 = [];

EpochMoneyTab = 
[
	["", true],
	[">>> Next >>>", [13], "#USER:EpochMoneyTabPage2", -5, [["expression", ""]], "1", "1"],
	["Epoch Money", [-1], "", -5, [["expression", ""]], "1", "0"],
	["BrifeCases", [2],  "", -5, [["expression", format[exstr,"EpochBriefs.sqf"]]], "1", "1"],
	["Gold_10oz", [3],  "", -5, [["expression", format[exstr,"EpochGold10oz.sqf"]]], "1", "1"],
	["Gold", [4],  "", -5, [["expression", format[exstr,"EpochGold.sqf"]]], "1", "1"],
	["SilverBar_10oz", [5],  "", -5, [["expression", format[exstr,"EpochSilverBar_10oz.sqf"]]], "1", "1"],
	["SilverBar", [6],  "", -5, [["expression", format[exstr,"EpochSilverBar.sqf"]]], "1", "1"],
	["CopperBar_10oz", [7],  "", -5, [["expression", format[exstr,"EpochCopperBar_10oz.sqf"]]], "1", "1"],
	["CopperBar", [8],  "", -5, [["expression", format[exstr,"EpochCopperBar.sqf"]]], "1", "1"],
	["BronzeBar", [9],  "", -5, [["expression", format[exstr,"EpochBronzeBar.sqf"]]], "1", "1"],
	["AluminumBar_10oz", [10],  "", -5, [["expression", format[exstr,"EpochAluminumBar_10oz.sqf"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:EpochMoneyTab";

EpochMoneyTabPage2 =
[
	["", true],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["Epoch Money", [-1], "", -5, [["expression", ""]], "1", "0"],
	["AluminumBar", [2],  "", -5, [["expression", format[exstr,"EpochAluminumBar.sqf"]]], "1", "1"],
	["TinBar_10oz", [3],  "", -5, [["expression", format[exstr,"EpochTinBar_10oz.sqf"]]], "1", "1"],
	["TinBar", [4],  "", -5, [["expression", format[exstr,"EpochTinBar.sqf"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];