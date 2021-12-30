EpochDrink = [];
EpochDrink2 = [];

_text = "player addWeapon '%1'; _mags = getArray(configfile >> 'cfgWeapons' >> '%1' >> 'magazines'); _mag = _mags select 0; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player selectWeapon '%1'; reload player;player setUnitRecoilCoefficient 0;";

EpochDrink =
[
	["", true],
	[">>> Next >>>", [11], "#USER:EpochDrink2", -5, [["expression", ""]], "1", "1"],
	["Select a Drink", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Soda R4z0r", [2], "", -5, [["expression", "player addMagazine 'ItemSodaR4z0r';"]], "1", "1"],
	["Soda Rbull", [3], "", -5, [["expression", "player addMagazine 'ItemSodaRbull';"]], "1", "1"],
	["Soda OrangeSherbet", [4], "", -5, [["expression", "player addMagazine 'ItemSodaOrangeSherbet';"]], "1", "1"],
	["Soda Clays", [5], "", -5, [["expression", "player addMagazine 'ItemSodaClays';"]], "1", "1"],
	["Soda Smasht", [6], "", -5, [["expression", "player addMagazine 'ItemSodaSmasht';"]], "1", "1"],
	["Soda Drwaste", [7], "", -5, [["expression", "player addMagazine 'ItemSodaDrwaste';"]], "1", "1"],
	["Soda Lemonade", [8], "", -5, [["expression", "player addMagazine 'ItemSodaLemonade';"]], "1", "1"],
	["Soda Lvg", [9], "", -5, [["expression", "player addMagazine 'ItemSodaLvg';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:EpochDrink";

EpochDrink2 =
[
	["", true],
	["Select a Drink", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Soda Mzly", [2], "", -5, [["expression", "player addMagazine 'ItemSodaMzly';"]], "1", "1"],
	["Soda Rabbit(BEER)", [3], "", -5, [["expression", "player addMagazine 'ItemSodaRabbit';"]], "1", "1"],
	["Water bottle", [4], "", -5, [["expression", "player addMagazine 'ItemWaterbottle  ';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];