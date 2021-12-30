SMGAmmo = [];
30rndMP5 = [];
30RndMP5SD = [];
30RndUZI = [];
64Rnd_SD_Bizon = [];
30Rnd_UZI_SD = [];
20Rnd_B_Ball = [];

_text = "player addWeapon '%1'; _mags = getArray(configfile >> 'cfgWeapons' >> '%1' >> 'magazines'); _mag = _mags select 0; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player selectWeapon '%1'; reload player;player setUnitRecoilCoefficient 0;";

SMGAmmo =
[
	["", true],
	["SMG Ammo", [-1], "", -5, [["expression", ""]], "1", "0"],
	["30rnd MP5", [2], "#USER:30rndMP5", -5, [["expression", ""]], "1", "1"],
	["30Rnd MP5SD", [3], "#USER:30RndMP5SD", -5, [["expression", ""]], "1", "1"],
	["30Rnd UZI", [4], "#USER:30RndUZI", -5, [["expression", ""]], "1", "1"],
	["64Rnd_SD_Bizon", [5], "#USER:64Rnd_SD_Bizon", -5, [["expression", ""]], "1", "1"],
	["30Rnd_UZI_SD", [6], "#USER:30Rnd_UZI_SD", -5, [["expression", ""]], "1", "1"],
	["20Rnd_B_Ball", [7], "#USER:20Rnd_B_Ball", -5, [["expression", ""]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:SMGAmmo";

30rndMP5 =
[
	["", true],
	["Spawn 1 30rnd MP5", [2], "", -5, [["expression", "player addMagazine '30rnd_9x19_MP5';"]], "1", "1"],
	["Spawn 2 30rnd MP5", [3], "", -5, [["expression", "player addMagazine '30rnd_9x19_MP5'; player addMagazine '30rnd_9x19_MP5';"]], "1", "1"],
	["Spawn 3 30rnd MP5", [4], "", -5, [["expression", "player addMagazine '30rnd_9x19_MP5'; player addMagazine '30rnd_9x19_MP5'; player addMagazine '30rnd_9x19_MP5';"]], "1", "1"],
	["Spawn 4 30rnd MP5", [5], "", -5, [["expression", "player addMagazine '30rnd_9x19_MP5'; player addMagazine '30rnd_9x19_MP5'; player addMagazine '30rnd_9x19_MP5'; player addMagazine '30rnd_9x19_MP5';"]], "1", "1"],
	["Spawn 5 30rnd MP5", [6], "", -5, [["expression", "player addMagazine '30rnd_9x19_MP5'; player addMagazine '30rnd_9x19_MP5'; player addMagazine '30rnd_9x19_MP5'; player addMagazine '30rnd_9x19_MP5'; player addMagazine '30rnd_9x19_MP5';"]], "1", "1"],
	["Spawn 10 30rnd MP5", [7], "", -5, [["expression", "player addMagazine '30rnd_9x19_MP5'; player addMagazine '30rnd_9x19_MP5'; player addMagazine '30rnd_9x19_MP5'; player addMagazine '30rnd_9x19_MP5'; player addMagazine '30rnd_9x19_MP5'; player addMagazine '30rnd_9x19_MP5'; player addMagazine '30rnd_9x19_MP5'; player addMagazine '30rnd_9x19_MP5'; player addMagazine '30rnd_9x19_MP5'; player addMagazine '30rnd_9x19_MP5';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];
30RndMP5SD =
[
	["", true],
	["Spawn 1 30rnd MP5SD", [2], "", -5, [["expression", "player addMagazine '30Rnd_9x19_MP5SD';"]], "1", "1"],
	["Spawn 2 30rnd MP5SD", [3], "", -5, [["expression", "player addMagazine '30Rnd_9x19_MP5SD'; player addMagazine '30Rnd_9x19_MP5SD';"]], "1", "1"],
	["Spawn 3 30rnd MP5SD", [4], "", -5, [["expression", "player addMagazine '30Rnd_9x19_MP5SD'; player addMagazine '30Rnd_9x19_MP5SD'; player addMagazine '30Rnd_9x19_MP5SD';"]], "1", "1"],
	["Spawn 4 30rnd MP5SD", [5], "", -5, [["expression", "player addMagazine '30Rnd_9x19_MP5SD'; player addMagazine '30Rnd_9x19_MP5SD'; player addMagazine '30Rnd_9x19_MP5SD'; player addMagazine '30Rnd_9x19_MP5SD';"]], "1", "1"],
	["Spawn 5 30rnd MP5SD", [6], "", -5, [["expression", "player addMagazine '30Rnd_9x19_MP5SD'; player addMagazine '30Rnd_9x19_MP5SD'; player addMagazine '30Rnd_9x19_MP5SD'; player addMagazine '30Rnd_9x19_MP5SD'; player addMagazine '30Rnd_9x19_MP5SD';"]], "1", "1"],
	["Spawn 10 30rnd MP5SD", [7], "", -5, [["expression", "player addMagazine '30Rnd_9x19_MP5SD'; player addMagazine '30Rnd_9x19_MP5SD'; player addMagazine '30Rnd_9x19_MP5SD'; player addMagazine '30Rnd_9x19_MP5SD'; player addMagazine '30Rnd_9x19_MP5SD'; player addMagazine '30Rnd_9x19_MP5SD'; player addMagazine '30Rnd_9x19_MP5SD'; player addMagazine '30Rnd_9x19_MP5SD'; player addMagazine '30Rnd_9x19_MP5SD'; player addMagazine '30Rnd_9x19_MP5SD';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

30RndUZI =
[
	["", true],
	["Spawn 1 30Rnd UZI", [2], "", -5, [["expression", "player addMagazine '30Rnd_9x19_UZI';"]], "1", "1"],
	["Spawn 2 30Rnd UZI", [3], "", -5, [["expression", "player addMagazine '30Rnd_9x19_UZI'; player addMagazine '30Rnd_9x19_UZI';"]], "1", "1"],
	["Spawn 3 30Rnd UZI", [4], "", -5, [["expression", "player addMagazine '30Rnd_9x19_UZI'; player addMagazine '30Rnd_9x19_UZI'; player addMagazine '30Rnd_9x19_UZI';"]], "1", "1"],
	["Spawn 4 30Rnd UZI", [5], "", -5, [["expression", "player addMagazine '30Rnd_9x19_UZI'; player addMagazine '30Rnd_9x19_UZI'; player addMagazine '30Rnd_9x19_UZI'; player addMagazine '30Rnd_9x19_UZI';"]], "1", "1"],
	["Spawn 5 30Rnd UZI", [6], "", -5, [["expression", "player addMagazine '30Rnd_9x19_UZI'; player addMagazine '30Rnd_9x19_UZI'; player addMagazine '30Rnd_9x19_UZI'; player addMagazine '30Rnd_9x19_UZI'; player addMagazine '30Rnd_9x19_UZI';"]], "1", "1"],
	["Spawn 10 30Rnd UZI", [7], "", -5, [["expression", "player addMagazine '30Rnd_9x19_UZI'; player addMagazine '30Rnd_9x19_UZI'; player addMagazine '30Rnd_9x19_UZI'; player addMagazine '30Rnd_9x19_UZI'; player addMagazine '30Rnd_9x19_UZI'; player addMagazine '30Rnd_9x19_UZI'; player addMagazine '30Rnd_9x19_UZI'; player addMagazine '30Rnd_9x19_UZI'; player addMagazine '30Rnd_9x19_UZI'; player addMagazine '30Rnd_9x19_UZI';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

64Rnd_SD_Bizon = 
[
	["", true],
	["Spawn 1 64Rnd_SD_Bizon", [2], "", -5, [["expression", "player addMagazine '64Rnd_9x19_SD_Bizon';"]], "1", "1"],
	["Spawn 2 64Rnd_SD_Bizon", [3], "", -5, [["expression", "player addMagazine '64Rnd_9x19_SD_Bizon'; player addMagazine '64Rnd_9x19_SD_Bizon';"]], "1", "1"],
	["Spawn 3 64Rnd_SD_Bizon", [4], "", -5, [["expression", "player addMagazine '64Rnd_9x19_SD_Bizon'; player addMagazine '64Rnd_9x19_SD_Bizon'; player addMagazine '64Rnd_9x19_SD_Bizon';"]], "1", "1"],
	["Spawn 4 64Rnd_SD_Bizon", [5], "", -5, [["expression", "player addMagazine '64Rnd_9x19_SD_Bizon'; player addMagazine '64Rnd_9x19_SD_Bizon'; player addMagazine '64Rnd_9x19_SD_Bizon'; player addMagazine '64Rnd_9x19_SD_Bizon';"]], "1", "1"],
	["Spawn 5 64Rnd_SD_Bizon", [6], "", -5, [["expression", "player addMagazine '64Rnd_9x19_SD_Bizon'; player addMagazine '64Rnd_9x19_SD_Bizon'; player addMagazine '64Rnd_9x19_SD_Bizon'; player addMagazine '64Rnd_9x19_SD_Bizon'; player addMagazine '64Rnd_9x19_SD_Bizon';"]], "1", "1"],
	["Spawn 10 64Rnd_SD_Bizon", [7], "", -5, [["expression", "player addMagazine '64Rnd_9x19_SD_Bizon'; player addMagazine '64Rnd_9x19_SD_Bizon'; player addMagazine '64Rnd_9x19_SD_Bizon'; player addMagazine '64Rnd_9x19_SD_Bizon'; player addMagazine '64Rnd_9x19_SD_Bizon'; player addMagazine '64Rnd_9x19_SD_Bizon'; player addMagazine '64Rnd_9x19_SD_Bizon'; player addMagazine '64Rnd_9x19_SD_Bizon'; player addMagazine '64Rnd_9x19_SD_Bizon'; player addMagazine '64Rnd_9x19_SD_Bizon';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

30Rnd_UZI_SD = 
[
	["", true],
	["Spawn 1 30Rnd_UZI_SD", [2], "", -5, [["expression", "player addMagazine '30Rnd_9x19_UZI_SD';"]], "1", "1"],
	["Spawn 2 30Rnd_UZI_SD", [3], "", -5, [["expression", "player addMagazine '30Rnd_9x19_UZI_SD'; player addMagazine '30Rnd_9x19_UZI_SD';"]], "1", "1"],
	["Spawn 3 30Rnd_UZI_SD", [4], "", -5, [["expression", "player addMagazine '30Rnd_9x19_UZI_SD'; player addMagazine '30Rnd_9x19_UZI_SD'; player addMagazine '30Rnd_9x19_UZI_SD';"]], "1", "1"],
	["Spawn 4 30Rnd_UZI_SD", [5], "", -5, [["expression", "player addMagazine '30Rnd_9x19_UZI_SD'; player addMagazine '30Rnd_9x19_UZI_SD'; player addMagazine '30Rnd_9x19_UZI_SD'; player addMagazine '30Rnd_9x19_UZI_SD';"]], "1", "1"],
	["Spawn 5 30Rnd_UZI_SD", [6], "", -5, [["expression", "player addMagazine '30Rnd_9x19_UZI_SD'; player addMagazine '30Rnd_9x19_UZI_SD'; player addMagazine '30Rnd_9x19_UZI_SD'; player addMagazine '30Rnd_9x19_UZI_SD'; player addMagazine '30Rnd_9x19_UZI_SD';"]], "1", "1"],
	["Spawn 10 30Rnd_UZI_SD", [7], "", -5, [["expression", "player addMagazine '30Rnd_9x19_UZI_SD'; player addMagazine '30Rnd_9x19_UZI_SD'; player addMagazine '30Rnd_9x19_UZI_SD'; player addMagazine '30Rnd_9x19_UZI_SD'; player addMagazine '30Rnd_9x19_UZI_SD'; player addMagazine '30Rnd_9x19_UZI_SD'; player addMagazine '30Rnd_9x19_UZI_SD'; player addMagazine '30Rnd_9x19_UZI_SD'; player addMagazine '30Rnd_9x19_UZI_SD'; player addMagazine '30Rnd_9x19_UZI_SD';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

20Rnd_B_Ball = 
[
	["", true],
	["Spawn 1 20Rnd_B_Ball", [2], "", -5, [["expression", "player addMagazine '20Rnd_B_765x17_Ball';"]], "1", "1"],
	["Spawn 2 20Rnd_B_Ball", [3], "", -5, [["expression", "player addMagazine '20Rnd_B_765x17_Ball'; player addMagazine '20Rnd_B_765x17_Ball';"]], "1", "1"],
	["Spawn 3 20Rnd_B_Ball", [4], "", -5, [["expression", "player addMagazine '20Rnd_B_765x17_Ball'; player addMagazine '20Rnd_B_765x17_Ball'; player addMagazine '20Rnd_B_765x17_Ball';"]], "1", "1"],
	["Spawn 4 20Rnd_B_Ball", [5], "", -5, [["expression", "player addMagazine '20Rnd_B_765x17_Ball'; player addMagazine '20Rnd_B_765x17_Ball'; player addMagazine '20Rnd_B_765x17_Ball'; player addMagazine '20Rnd_B_765x17_Ball';"]], "1", "1"],
	["Spawn 5 20Rnd_B_Ball", [6], "", -5, [["expression", "player addMagazine '20Rnd_B_765x17_Ball'; player addMagazine '20Rnd_B_765x17_Ball'; player addMagazine '20Rnd_B_765x17_Ball'; player addMagazine '20Rnd_B_765x17_Ball'; player addMagazine '20Rnd_B_765x17_Ball';"]], "1", "1"],
	["Spawn 10 20Rnd_B_Ball", [7], "", -5, [["expression", "player addMagazine '20Rnd_B_765x17_Ball'; player addMagazine '20Rnd_B_765x17_Ball'; player addMagazine '20Rnd_B_765x17_Ball'; player addMagazine '20Rnd_B_765x17_Ball'; player addMagazine '20Rnd_B_765x17_Ball'; player addMagazine '20Rnd_B_765x17_Ball'; player addMagazine '20Rnd_B_765x17_Ball'; player addMagazine '20Rnd_B_765x17_Ball'; player addMagazine '20Rnd_B_765x17_Ball'; player addMagazine '20Rnd_B_765x17_Ball';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];