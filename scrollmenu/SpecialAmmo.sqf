SpecialAmmo = [];

SpecialAmmo =
[
	["", true],
	["Special Ammo", [-1], "", -5, [["expression", ""]], "1", "0"],
	["29Rnd_30mm_AGS30", [2], "#USER:29Rnd_30mm_AGS30", -5, [["expression", ""]], "1", "1"],
	["50Rnd_DSHKM", [3],  "", -5, [["expression", format[exstr,"50Rnd_DSHKM.sqf"]]], "1", "1"],
	["100Rnd_M2", [4], "#USER:100Rnd_M2", -5, [["expression", ""]], "1", "1"],
	["2000Rnd_M134", [5],  "", -5, [["expression", format[exstr,"2000Rnd_M134.sqf"]]], "1", "1"],
	["48Rnd_MK19", [6],  "", -5, [["expression", format[exstr,"48Rnd_MK19.sqf"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:SpecialAmmo";

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

100Rnd_M2 =
[
	["", true],
	["Spawn 1 100Rnd_M2", [2], "", -5, [["expression", "player addMagazine '100Rnd_127x99_M2';"]], "1", "1"],
	["Spawn 2 100Rnd_M2", [3], "", -5, [["expression", "player addMagazine '100Rnd_127x99_M2'; player addMagazine '100Rnd_127x99_M2';"]], "1", "1"],
	["Spawn 3 100Rnd_M2", [4], "", -5, [["expression", "player addMagazine '100Rnd_127x99_M2'; player addMagazine '100Rnd_127x99_M2'; player addMagazine '100Rnd_127x99_M2';"]], "1", "1"],
	["Spawn 4 100Rnd_M2", [5], "", -5, [["expression", "player addMagazine '100Rnd_127x99_M2'; player addMagazine '100Rnd_127x99_M2'; player addMagazine '100Rnd_127x99_M2'; player addMagazine '100Rnd_127x99_M2';"]], "1", "1"],
	["Spawn 5 100Rnd_M2", [6], "", -5, [["expression", "player addMagazine '100Rnd_127x99_M2'; player addMagazine '100Rnd_127x99_M2'; player addMagazine '100Rnd_127x99_M2'; player addMagazine '100Rnd_127x99_M2'; player addMagazine '100Rnd_127x99_M2';"]], "1", "1"],
	["Spawn 10 100Rnd_M2", [7], "", -5, [["expression", "player addMagazine '100Rnd_127x99_M2'; player addMagazine '100Rnd_127x99_M2'; player addMagazine '100Rnd_127x99_M2'; player addMagazine '100Rnd_127x99_M2'; player addMagazine '100Rnd_127x99_M2'; player addMagazine '100Rnd_127x99_M2'; player addMagazine '100Rnd_127x99_M2'; player addMagazine '100Rnd_127x99_M2'; player addMagazine '100Rnd_127x99_M2'; player addMagazine '100Rnd_127x99_M2';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];