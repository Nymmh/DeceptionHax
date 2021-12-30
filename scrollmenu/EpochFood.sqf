EpochFood = [];
EpochFood2 = [];
EpochFood3 = [];

_text = "player addWeapon '%1'; _mags = getArray(configfile >> 'cfgWeapons' >> '%1' >> 'magazines'); _mag = _mags select 0; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player selectWeapon '%1'; reload player;player setUnitRecoilCoefficient 0;";

EpochFood =
[
	["", true],
	["Select a Food", [-1], "", -5, [["expression", ""]], "1", "0"],
	["SeaBass Cooked", [3], "", -5, [["expression", "player addMagazine 'ItemSeaBassCooked';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:EpochFood";