AssaultRifle = [];
20RndFNFAL = [];
30RndAK = [];
30Rnd_556x45_Stanag = [];
30Rnd_556x45_StanagSD = [];
30RndAK47 = [];
30RndSA58 = [];
29Rnd_30mm_AGS30 = [];

_text = "player addWeapon '%1'; _mags = getArray(configfile >> 'cfgWeapons' >> '%1' >> 'magazines'); _mag = _mags select 0; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player selectWeapon '%1'; reload player;player setUnitRecoilCoefficient 0;";

AssaultRifle =
[
	["", true],
	["AssaultRifle Ammo", [-1], "", -5, [["expression", ""]], "1", "0"],
	["20Rnd FNFAL", [2], "#USER:20RndFNFAL", -5, [["expression", ""]], "1", "1"],
	["30Rnd AK", [3], "#USER:30RndAK", -5, [["expression", ""]], "1", "1"],
	["30Rnd Stanag", [4], "#USER:30Rnd_556x45_Stanag", -5, [["expression", ""]], "1", "1"],
	["30Rnd StanagSD", [5], "#USER:30Rnd_556x45_StanagSD", -5, [["expression", ""]], "1", "1"],
	["30Rnd SA58", [6], "#USER:30RndSA58", -5, [["expression", ""]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:AssaultRifle";

20RndFNFAL =
[
	["", true],
	["Spawn 1 20Rnd FNFAL", [2], "", -5, [["expression", "player addMagazine '20Rnd_762x51_FNFAL';"]], "1", "1"],
	["Spawn 2 20Rnd FNFAL", [3], "", -5, [["expression", "player addMagazine '20Rnd_762x51_FNFAL'; player addMagazine '20Rnd_762x51_FNFAL';"]], "1", "1"],
	["Spawn 3 20Rnd FNFAL", [4], "", -5, [["expression", "player addMagazine '20Rnd_762x51_FNFAL'; player addMagazine '20Rnd_762x51_FNFAL'; player addMagazine '20Rnd_762x51_FNFAL';"]], "1", "1"],
	["Spawn 4 20Rnd FNFAL", [5], "", -5, [["expression", "player addMagazine '20Rnd_762x51_FNFAL'; player addMagazine '20Rnd_762x51_FNFAL'; player addMagazine '20Rnd_762x51_FNFAL'; player addMagazine '20Rnd_762x51_FNFAL';"]], "1", "1"],
	["Spawn 5 20Rnd FNFAL", [6], "", -5, [["expression", "player addMagazine '20Rnd_762x51_FNFAL'; player addMagazine '20Rnd_762x51_FNFAL'; player addMagazine '20Rnd_762x51_FNFAL'; player addMagazine '20Rnd_762x51_FNFAL'; player addMagazine '20Rnd_762x51_FNFAL';"]], "1", "1"],
	["Spawn 10 20Rnd FNFAL", [7], "", -5, [["expression", "player addMagazine '20Rnd_762x51_FNFAL'; player addMagazine '20Rnd_762x51_FNFAL'; player addMagazine '20Rnd_762x51_FNFAL'; player addMagazine '20Rnd_762x51_FNFAL'; player addMagazine '20Rnd_762x51_FNFAL'; player addMagazine '20Rnd_762x51_FNFAL'; player addMagazine '20Rnd_762x51_FNFAL'; player addMagazine '20Rnd_762x51_FNFAL'; player addMagazine '20Rnd_762x51_FNFAL'; player addMagazine '20Rnd_762x51_FNFAL';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

30RndAK =
[
	["", true],
	["Spawn 1 30Rnd 30RndAK", [2], "", -5, [["expression", "player addMagazine '30Rnd_545x39_AK';"]], "1", "1"],
	["Spawn 2 30Rnd 30RndAK", [3], "", -5, [["expression", "player addMagazine '30Rnd_545x39_AK'; player addMagazine '30Rnd_545x39_AK';"]], "1", "1"],
	["Spawn 3 30Rnd 30RndAK", [4], "", -5, [["expression", "player addMagazine '30Rnd_545x39_AK'; player addMagazine '30Rnd_545x39_AK'; player addMagazine '30Rnd_545x39_AK';"]], "1", "1"],
	["Spawn 4 30Rnd 30RndAK", [5], "", -5, [["expression", "player addMagazine '30Rnd_545x39_AK'; player addMagazine '30Rnd_545x39_AK'; player addMagazine '30Rnd_545x39_AK'; player addMagazine '30Rnd_545x39_AK';"]], "1", "1"],
	["Spawn 5 30Rnd 30RndAK", [6], "", -5, [["expression", "player addMagazine '30Rnd_545x39_AK'; player addMagazine '30Rnd_545x39_AK'; player addMagazine '30Rnd_545x39_AK'; player addMagazine '30Rnd_545x39_AK'; player addMagazine '30Rnd_545x39_AK';"]], "1", "1"],
	["Spawn 10 30Rnd 30RndAK", [7], "", -5, [["expression", "player addMagazine '30Rnd_545x39_AK'; player addMagazine '30Rnd_545x39_AK'; player addMagazine '30Rnd_545x39_AK'; player addMagazine '30Rnd_545x39_AK'; player addMagazine '30Rnd_545x39_AK'; player addMagazine '30Rnd_545x39_AK'; player addMagazine '30Rnd_545x39_AK'; player addMagazine '30Rnd_545x39_AK'; player addMagazine '30Rnd_545x39_AK'; player addMagazine '30Rnd_545x39_AK';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

30Rnd_556x45_Stanag =
[
	["", true],
	["Spawn 1 30Rnd Stanag", [2], "", -5, [["expression", "player addMagazine '30Rnd_556x45_Stanag';"]], "1", "1"],
	["Spawn 2 30Rnd Stanag", [3], "", -5, [["expression", "player addMagazine '30Rnd_556x45_Stanag'; player addMagazine '30Rnd_556x45_Stanag';"]], "1", "1"],
	["Spawn 3 30Rnd Stanag", [4], "", -5, [["expression", "player addMagazine '30Rnd_556x45_Stanag'; player addMagazine '30Rnd_556x45_Stanag'; player addMagazine '30Rnd_556x45_Stanag';"]], "1", "1"],
	["Spawn 4 30Rnd Stanag", [5], "", -5, [["expression", "player addMagazine '30Rnd_556x45_Stanag'; player addMagazine '30Rnd_556x45_Stanag'; player addMagazine '30Rnd_556x45_Stanag'; player addMagazine '30Rnd_556x45_Stanag';"]], "1", "1"],
	["Spawn 5 30Rnd Stanag", [6], "", -5, [["expression", "player addMagazine '30Rnd_556x45_Stanag'; player addMagazine '30Rnd_556x45_Stanag'; player addMagazine '30Rnd_556x45_Stanag'; player addMagazine '30Rnd_556x45_Stanag'; player addMagazine '30Rnd_556x45_Stanag';"]], "1", "1"],
	["Spawn 10 30Rnd Stanag", [7], "", -5, [["expression", "player addMagazine '30Rnd_556x45_Stanag'; player addMagazine '30Rnd_556x45_Stanag'; player addMagazine '30Rnd_556x45_Stanag'; player addMagazine '30Rnd_556x45_Stanag'; player addMagazine '30Rnd_556x45_Stanag'; player addMagazine '30Rnd_556x45_Stanag'; player addMagazine '30Rnd_556x45_Stanag'; player addMagazine '30Rnd_556x45_Stanag'; player addMagazine '30Rnd_556x45_Stanag'; player addMagazine '30Rnd_556x45_Stanag';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

30Rnd_556x45_StanagSD =
[
	["", true],
	["Spawn 1 30Rnd StanagSD", [2], "", -5, [["expression", "player addMagazine '30Rnd_556x45_StanagSD';"]], "1", "1"],
	["Spawn 2 30Rnd StanagSD", [3], "", -5, [["expression", "player addMagazine '30Rnd_556x45_StanagSD'; player addMagazine '30Rnd_556x45_StanagSD';"]], "1", "1"],
	["Spawn 3 30Rnd StanagSD", [4], "", -5, [["expression", "player addMagazine '30Rnd_556x45_StanagSD'; player addMagazine '30Rnd_556x45_StanagSD'; player addMagazine '30Rnd_556x45_StanagSD';"]], "1", "1"],
	["Spawn 4 30Rnd StanagSD", [5], "", -5, [["expression", "player addMagazine '30Rnd_556x45_StanagSD'; player addMagazine '30Rnd_556x45_StanagSD'; player addMagazine '30Rnd_556x45_StanagSD'; player addMagazine '30Rnd_556x45_StanagSD';"]], "1", "1"],
	["Spawn 5 30Rnd StanagSD", [6], "", -5, [["expression", "player addMagazine '30Rnd_556x45_StanagSD'; player addMagazine '30Rnd_556x45_StanagSD'; player addMagazine '30Rnd_556x45_StanagSD'; player addMagazine '30Rnd_556x45_StanagSD'; player addMagazine '30Rnd_556x45_StanagSD';"]], "1", "1"],
	["Spawn 10 30Rnd StanagSD", [7], "", -5, [["expression", "player addMagazine '30Rnd_556x45_StanagSD'; player addMagazine '30Rnd_556x45_StanagSD'; player addMagazine '30Rnd_556x45_StanagSD'; player addMagazine '30Rnd_556x45_StanagSD'; player addMagazine '30Rnd_556x45_StanagSD'; player addMagazine '30Rnd_556x45_StanagSD'; player addMagazine '30Rnd_556x45_StanagSD'; player addMagazine '30Rnd_556x45_StanagSD'; player addMagazine '30Rnd_556x45_StanagSD'; player addMagazine '30Rnd_556x45_StanagSD';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

30RndAK47 = 
[
	["", true],
	["Spawn 1 30Rnd AK47", [2], "", -5, [["expression", "player addMagazine '30RndAK47';"]], "1", "1"],
	["Spawn 2 30Rnd AK47", [3], "", -5, [["expression", "player addMagazine '30RndAK47'; player addMagazine '30RndAK47';"]], "1", "1"],
	["Spawn 3 30Rnd AK47", [4], "", -5, [["expression", "player addMagazine '30RndAK47'; player addMagazine '30RndAK47'; player addMagazine '30RndAK47';"]], "1", "1"],
	["Spawn 4 30Rnd AK47", [5], "", -5, [["expression", "player addMagazine '30RndAK47'; player addMagazine '30RndAK47'; player addMagazine '30RndAK47'; player addMagazine '30RndAK47';"]], "1", "1"],
	["Spawn 5 30Rnd AK47", [6], "", -5, [["expression", "player addMagazine '30RndAK47'; player addMagazine '30RndAK47'; player addMagazine '30RndAK47'; player addMagazine '30RndAK47'; player addMagazine '30RndAK47';"]], "1", "1"],
	["Spawn 10 30Rnd AK47", [7], "", -5, [["expression", "player addMagazine '30RndAK47'; player addMagazine '30RndAK47'; player addMagazine '30RndAK47'; player addMagazine '30RndAK47'; player addMagazine '30RndAK47'; player addMagazine '30RndAK47'; player addMagazine '30RndAK47'; player addMagazine '30RndAK47'; player addMagazine '30RndAK47'; player addMagazine '30RndAK47';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

30RndSA58 = 
[
	["", true],
	["Spawn 1 30Rnd SA58", [2], "", -5, [["expression", "player addMagazine '30RndSA58';"]], "1", "1"],
	["Spawn 2 30Rnd SA58", [3], "", -5, [["expression", "player addMagazine '30RndSA58'; player addMagazine '30RndSA58';"]], "1", "1"],
	["Spawn 3 30Rnd SA58", [4], "", -5, [["expression", "player addMagazine '30RndSA58'; player addMagazine '30RndSA58'; player addMagazine '30RndSA58';"]], "1", "1"],
	["Spawn 4 30Rnd SA58", [5], "", -5, [["expression", "player addMagazine '30RndSA58'; player addMagazine '30RndSA58'; player addMagazine '30RndSA58'; player addMagazine '30RndSA58';"]], "1", "1"],
	["Spawn 5 30Rnd SA58", [6], "", -5, [["expression", "player addMagazine '30RndSA58'; player addMagazine '30RndSA58'; player addMagazine '30RndSA58'; player addMagazine '30RndSA58'; player addMagazine '30RndSA58';"]], "1", "1"],
	["Spawn 10 30Rnd SA58", [7], "", -5, [["expression", "player addMagazine '30RndSA58'; player addMagazine '30RndSA58'; player addMagazine '30RndSA58'; player addMagazine '30RndSA58'; player addMagazine '30RndSA58'; player addMagazine '30RndSA58'; player addMagazine '30RndSA58'; player addMagazine '30RndSA58'; player addMagazine '30RndSA58'; player addMagazine '30RndSA58';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

29Rnd_30mm_AGS30 = 
[
	["", true],
	["Spawn 1 30mm_AGS30", [2], "", -5, [["expression", "player addMagazine '29Rnd_30mm_AGS30';"]], "1", "1"],
	["Spawn 2 30mm_AGS30", [3], "", -5, [["expression", "player addMagazine '29Rnd_30mm_AGS30'; player addMagazine '29Rnd_30mm_AGS30';"]], "1", "1"],
	["Spawn 3 30mm_AGS30", [4], "", -5, [["expression", "player addMagazine '29Rnd_30mm_AGS30'; player addMagazine '29Rnd_30mm_AGS30'; player addMagazine '29Rnd_30mm_AGS30';"]], "1", "1"],
	["Spawn 4 30mm_AGS30", [5], "", -5, [["expression", "player addMagazine '29Rnd_30mm_AGS30'; player addMagazine '29Rnd_30mm_AGS30'; player addMagazine '29Rnd_30mm_AGS30'; player addMagazine '29Rnd_30mm_AGS30';"]], "1", "1"],
	["Spawn 5 30mm_AGS30", [6], "", -5, [["expression", "player addMagazine '29Rnd_30mm_AGS30'; player addMagazine '29Rnd_30mm_AGS30'; player addMagazine '29Rnd_30mm_AGS30'; player addMagazine '29Rnd_30mm_AGS30'; player addMagazine '29Rnd_30mm_AGS30';"]], "1", "1"],
	["Spawn 10 30mm_AGS30", [7], "", -5, [["expression", "player addMagazine '29Rnd_30mm_AGS30'; player addMagazine '29Rnd_30mm_AGS30'; player addMagazine '29Rnd_30mm_AGS30'; player addMagazine '29Rnd_30mm_AGS30'; player addMagazine '29Rnd_30mm_AGS30'; player addMagazine '29Rnd_30mm_AGS30'; player addMagazine '29Rnd_30mm_AGS30'; player addMagazine '29Rnd_30mm_AGS30'; player addMagazine '29Rnd_30mm_AGS30'; player addMagazine '29Rnd_30mm_AGS30';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];