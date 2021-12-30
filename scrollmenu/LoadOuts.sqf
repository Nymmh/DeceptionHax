LoadOutStartingTab = [];
SniperLoadOut = [];

_text = "player addWeapon '%1'; _mags = getArray(configfile >> 'cfgWeapons' >> '%1' >> 'magazines'); _mag = _mags select 0; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player selectWeapon '%1'; reload player;player setUnitRecoilCoefficient 0;";

LoadOutStartingTab = 
[
	["", true],
	["LoadOuts", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Sniper LoadOut", [2], "#USER:SniperLoadOut", -5, [["expression", ""]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:LoadOutStartingTab";

SniperLoadOut =
[
	["", true],
	["Ready Up", [-1], "", -5, [["expression", ""]], "1", "0"],
	["M4A1 CCO SD(Camo)", [4], "", -5, [["expression", format[_text, "M4A1_AIM_SD_camo"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];