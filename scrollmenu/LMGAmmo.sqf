LMGAmmo = [];
100Rnd_M240 = [];
200Rnd_M249 = [];
200Rnd_M240 = [];

_text = "player addWeapon '%1'; _mags = getArray(configfile >> 'cfgWeapons' >> '%1' >> 'magazines'); _mag = _mags select 0; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player selectWeapon '%1'; reload player;player setUnitRecoilCoefficient 0;";

LMGAmmo =
[
	["", true],
	["LMG Ammo", [-1], "", -5, [["expression", ""]], "1", "0"],
	["100Rnd_M240", [2], "#USER:100Rnd_M240", -5, [["expression", ""]], "1", "1"],
	["100Rnd_PK", [3], "#USER:100Rnd_PK", -5, [["expression", ""]], "1", "1"],
	["100Rnd_M249", [4], "#USER:100Rnd_M249", -5, [["expression", ""]], "1", "1"],
	["200Rnd_M249", [5], "#USER:200Rnd_M249", -5, [["expression", ""]], "1", "1"],
	["200Rnd_M240", [6], "#USER:200Rnd_M240", -5, [["expression", ""]], "1", "1"],
	["100Rnd_BetaCMag", [7], "#USER:100Rnd_BetaCMag", -5, [["expression", ""]], "1", "1"],
	["75Rnd_RPK", [8], "#USER:75Rnd_RPK", -5, [["expression", ""]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:LMGAmmo";

100Rnd_M240 =
[
	["", true],
	["Spawn 1 100Rnd_M240", [2], "", -5, [["expression", "player addMagazine '100Rnd_762x51_M240';"]], "1", "1"],
	["Spawn 2 100Rnd_M240", [3], "", -5, [["expression", "player addMagazine '100Rnd_762x51_M240'; player addMagazine '100Rnd_762x51_M240';"]], "1", "1"],
	["Spawn 3 100Rnd_M240", [4], "", -5, [["expression", "player addMagazine '100Rnd_762x51_M240'; player addMagazine '100Rnd_762x51_M240'; player addMagazine '100Rnd_762x51_M240';"]], "1", "1"],
	["Spawn 4 100Rnd_M240", [5], "", -5, [["expression", "player addMagazine '100Rnd_762x51_M240'; player addMagazine '100Rnd_762x51_M240'; player addMagazine '100Rnd_762x51_M240'; player addMagazine '100Rnd_762x51_M240';"]], "1", "1"],
	["Spawn 5 100Rnd_M240", [6], "", -5, [["expression", "player addMagazine '100Rnd_762x51_M240'; player addMagazine '100Rnd_762x51_M240'; player addMagazine '100Rnd_762x51_M240'; player addMagazine '100Rnd_762x51_M240'; player addMagazine '100Rnd_762x51_M240';"]], "1", "1"],
	["Spawn 10 100Rnd_M240", [7], "", -5, [["expression", "player addMagazine '100Rnd_762x51_M240'; player addMagazine '100Rnd_762x51_M240'; player addMagazine '100Rnd_762x51_M240'; player addMagazine '100Rnd_762x51_M240'; player addMagazine '100Rnd_762x51_M240'; player addMagazine '100Rnd_762x51_M240'; player addMagazine '100Rnd_762x51_M240'; player addMagazine '100Rnd_762x51_M240'; player addMagazine '100Rnd_762x51_M240'; player addMagazine '100Rnd_762x51_M240';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

200Rnd_M249 =
[
	["", true],
	["Spawn 1 200Rnd_M249", [2], "", -5, [["expression", "player addMagazine '200Rnd_556x45_M249';"]], "1", "1"],
	["Spawn 2 200Rnd_M249", [3], "", -5, [["expression", "player addMagazine '200Rnd_556x45_M249'; player addMagazine '200Rnd_556x45_M249';"]], "1", "1"],
	["Spawn 3 200Rnd_M249", [4], "", -5, [["expression", "player addMagazine '200Rnd_556x45_M249'; player addMagazine '200Rnd_556x45_M249'; player addMagazine '200Rnd_556x45_M249';"]], "1", "1"],
	["Spawn 4 200Rnd_M249", [5], "", -5, [["expression", "player addMagazine '200Rnd_556x45_M249'; player addMagazine '200Rnd_556x45_M249'; player addMagazine '200Rnd_556x45_M249'; player addMagazine '200Rnd_556x45_M249';"]], "1", "1"],
	["Spawn 5 200Rnd_M249", [6], "", -5, [["expression", "player addMagazine '200Rnd_556x45_M249'; player addMagazine '200Rnd_556x45_M249'; player addMagazine '200Rnd_556x45_M249'; player addMagazine '200Rnd_556x45_M249'; player addMagazine '200Rnd_556x45_M249';"]], "1", "1"],
	["Spawn 10 200Rnd_M249", [7], "", -5, [["expression", "player addMagazine '200Rnd_556x45_M249'; player addMagazine '200Rnd_556x45_M249'; player addMagazine '200Rnd_556x45_M249'; player addMagazine '200Rnd_556x45_M249'; player addMagazine '200Rnd_556x45_M249'; player addMagazine '200Rnd_556x45_M249'; player addMagazine '200Rnd_556x45_M249'; player addMagazine '200Rnd_556x45_M249'; player addMagazine '200Rnd_556x45_M249'; player addMagazine '200Rnd_556x45_M249';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

100Rnd_PK = 
[
	["", true],
	["Spawn 1 100Rnd_PK", [2], "", -5, [["expression", "player addMagazine '100Rnd_762x54_PK';"]], "1", "1"],
	["Spawn 2 100Rnd_PK", [3], "", -5, [["expression", "player addMagazine '100Rnd_762x54_PK'; player addMagazine '100Rnd_762x54_PK';"]], "1", "1"],
	["Spawn 3 100Rnd_PK", [4], "", -5, [["expression", "player addMagazine '100Rnd_762x54_PK'; player addMagazine '100Rnd_762x54_PK'; player addMagazine '100Rnd_762x54_PK';"]], "1", "1"],
	["Spawn 4 100Rnd_PK", [5], "", -5, [["expression", "player addMagazine '100Rnd_762x54_PK'; player addMagazine '100Rnd_762x54_PK'; player addMagazine '100Rnd_762x54_PK'; player addMagazine '100Rnd_762x54_PK';"]], "1", "1"],
	["Spawn 5 100Rnd_PK", [6], "", -5, [["expression", "player addMagazine '100Rnd_762x54_PK'; player addMagazine '100Rnd_762x54_PK'; player addMagazine '100Rnd_762x54_PK'; player addMagazine '100Rnd_762x54_PK'; player addMagazine '100Rnd_762x54_PK';"]], "1", "1"],
	["Spawn 10 100Rnd_PK", [7], "", -5, [["expression", "player addMagazine '100Rnd_762x54_PK'; player addMagazine '100Rnd_762x54_PK'; player addMagazine '100Rnd_762x54_PK'; player addMagazine '100Rnd_762x54_PK'; player addMagazine '100Rnd_762x54_PK'; player addMagazine '100Rnd_762x54_PK'; player addMagazine '100Rnd_762x54_PK'; player addMagazine '100Rnd_762x54_PK'; player addMagazine '100Rnd_762x54_PK'; player addMagazine '100Rnd_762x54_PK';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

200Rnd_M240 =
[
	["", true],
	["Spawn 1 200Rnd_M240", [2], "", -5, [["expression", "player addMagazine '200Rnd_762x51_M240';"]], "1", "1"],
	["Spawn 2 200Rnd_M240", [3], "", -5, [["expression", "player addMagazine '200Rnd_762x51_M240'; player addMagazine '200Rnd_762x51_M240';"]], "1", "1"],
	["Spawn 3 200Rnd_M240", [4], "", -5, [["expression", "player addMagazine '200Rnd_762x51_M240'; player addMagazine '200Rnd_762x51_M240'; player addMagazine '200Rnd_762x51_M240';"]], "1", "1"],
	["Spawn 4 200Rnd_M240", [5], "", -5, [["expression", "player addMagazine '200Rnd_762x51_M240'; player addMagazine '200Rnd_762x51_M240'; player addMagazine '200Rnd_762x51_M240'; player addMagazine '200Rnd_762x51_M240';"]], "1", "1"],
	["Spawn 5 200Rnd_M240", [6], "", -5, [["expression", "player addMagazine '200Rnd_762x51_M240'; player addMagazine '200Rnd_762x51_M240'; player addMagazine '200Rnd_762x51_M240'; player addMagazine '200Rnd_762x51_M240'; player addMagazine '200Rnd_762x51_M240';"]], "1", "1"],
	["Spawn 10 200Rnd_M240", [7], "", -5, [["expression", "player addMagazine '200Rnd_762x51_M240'; player addMagazine '200Rnd_762x51_M240'; player addMagazine '200Rnd_762x51_M240'; player addMagazine '200Rnd_762x51_M240'; player addMagazine '200Rnd_762x51_M240'; player addMagazine '200Rnd_762x51_M240'; player addMagazine '200Rnd_762x51_M240'; player addMagazine '200Rnd_762x51_M240'; player addMagazine '200Rnd_762x51_M240'; player addMagazine '200Rnd_762x51_M240';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

100Rnd_M249 =
[
	["", true],
	["Spawn 1 100Rnd_M249", [2], "", -5, [["expression", "player addMagazine '100Rnd_556x45_M249';"]], "1", "1"],
	["Spawn 2 100Rnd_M249", [3], "", -5, [["expression", "player addMagazine '100Rnd_556x45_M249'; player addMagazine '100Rnd_556x45_M249';"]], "1", "1"],
	["Spawn 3 100Rnd_M249", [4], "", -5, [["expression", "player addMagazine '100Rnd_556x45_M249'; player addMagazine '100Rnd_556x45_M249'; player addMagazine '100Rnd_556x45_M249';"]], "1", "1"],
	["Spawn 4 100Rnd_M249", [5], "", -5, [["expression", "player addMagazine '100Rnd_556x45_M249'; player addMagazine '100Rnd_556x45_M249'; player addMagazine '100Rnd_556x45_M249'; player addMagazine '100Rnd_556x45_M249';"]], "1", "1"],
	["Spawn 5 100Rnd_M249", [6], "", -5, [["expression", "player addMagazine '100Rnd_556x45_M249'; player addMagazine '100Rnd_556x45_M249'; player addMagazine '100Rnd_556x45_M249'; player addMagazine '100Rnd_556x45_M249'; player addMagazine '100Rnd_556x45_M249';"]], "1", "1"],
	["Spawn 10 100Rnd_M249", [7], "", -5, [["expression", "player addMagazine '100Rnd_556x45_M249'; player addMagazine '100Rnd_556x45_M249'; player addMagazine '100Rnd_556x45_M249'; player addMagazine '100Rnd_556x45_M249'; player addMagazine '100Rnd_556x45_M249'; player addMagazine '100Rnd_556x45_M249'; player addMagazine '100Rnd_556x45_M249'; player addMagazine '100Rnd_556x45_M249'; player addMagazine '100Rnd_556x45_M249'; player addMagazine '100Rnd_556x45_M249';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

100Rnd_BetaCMag =
[
	["", true],
	["Spawn 1 100Rnd_BetaCMag", [2], "", -5, [["expression", "player addMagazine '100Rnd_556x45_BetaCMag';"]], "1", "1"],
	["Spawn 2 100Rnd_BetaCMag", [3], "", -5, [["expression", "player addMagazine '100Rnd_556x45_BetaCMag'; player addMagazine '100Rnd_556x45_BetaCMag';"]], "1", "1"],
	["Spawn 3 100Rnd_BetaCMag", [4], "", -5, [["expression", "player addMagazine '100Rnd_556x45_BetaCMag'; player addMagazine '100Rnd_556x45_BetaCMag'; player addMagazine '100Rnd_556x45_BetaCMag';"]], "1", "1"],
	["Spawn 4 100Rnd_BetaCMag", [5], "", -5, [["expression", "player addMagazine '100Rnd_556x45_BetaCMag'; player addMagazine '100Rnd_556x45_BetaCMag'; player addMagazine '100Rnd_556x45_BetaCMag'; player addMagazine '100Rnd_556x45_BetaCMag';"]], "1", "1"],
	["Spawn 5 100Rnd_BetaCMag", [6], "", -5, [["expression", "player addMagazine '100Rnd_556x45_BetaCMag'; player addMagazine '100Rnd_556x45_BetaCMag'; player addMagazine '100Rnd_556x45_BetaCMag'; player addMagazine '100Rnd_556x45_BetaCMag'; player addMagazine '100Rnd_556x45_BetaCMag';"]], "1", "1"],
	["Spawn 10 100Rnd_BetaCMag", [7], "", -5, [["expression", "player addMagazine '100Rnd_556x45_BetaCMag'; player addMagazine '100Rnd_556x45_BetaCMag'; player addMagazine '100Rnd_556x45_BetaCMag'; player addMagazine '100Rnd_556x45_BetaCMag'; player addMagazine '100Rnd_556x45_BetaCMag'; player addMagazine '100Rnd_556x45_BetaCMag'; player addMagazine '100Rnd_556x45_BetaCMag'; player addMagazine '100Rnd_556x45_BetaCMag'; player addMagazine '100Rnd_556x45_BetaCMag'; player addMagazine '100Rnd_556x45_BetaCMag';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

75Rnd_RPK =
[
	["", true],
	["Spawn 1 75Rnd_RPK", [2], "", -5, [["expression", "player addMagazine '75Rnd_545x39_RPK';"]], "1", "1"],
	["Spawn 2 75Rnd_RPK", [3], "", -5, [["expression", "player addMagazine '75Rnd_545x39_RPK'; player addMagazine '75Rnd_545x39_RPK';"]], "1", "1"],
	["Spawn 3 75Rnd_RPK", [4], "", -5, [["expression", "player addMagazine '75Rnd_545x39_RPK'; player addMagazine '75Rnd_545x39_RPK'; player addMagazine '75Rnd_545x39_RPK';"]], "1", "1"],
	["Spawn 4 75Rnd_RPK", [5], "", -5, [["expression", "player addMagazine '75Rnd_545x39_RPK'; player addMagazine '75Rnd_545x39_RPK'; player addMagazine '75Rnd_545x39_RPK'; player addMagazine '75Rnd_545x39_RPK';"]], "1", "1"],
	["Spawn 5 75Rnd_RPK", [6], "", -5, [["expression", "player addMagazine '75Rnd_545x39_RPK'; player addMagazine '75Rnd_545x39_RPK'; player addMagazine '75Rnd_545x39_RPK'; player addMagazine '75Rnd_545x39_RPK'; player addMagazine '75Rnd_545x39_RPK';"]], "1", "1"],
	["Spawn 10 75Rnd_RPK", [7], "", -5, [["expression", "player addMagazine '75Rnd_545x39_RPK'; player addMagazine '75Rnd_545x39_RPK'; player addMagazine '75Rnd_545x39_RPK'; player addMagazine '75Rnd_545x39_RPK'; player addMagazine '75Rnd_545x39_RPK'; player addMagazine '75Rnd_545x39_RPK'; player addMagazine '75Rnd_545x39_RPK'; player addMagazine '75Rnd_545x39_RPK'; player addMagazine '75Rnd_545x39_RPK'; player addMagazine '75Rnd_545x39_RPK';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];