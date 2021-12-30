SideArm = []; 
15RndM9 = [];
15RndM9SD = [];
17Rndglock17 = [];
6Rnd45ACP = [];
7Rnd45ACP1911 = [];
8RndMakarov = [];
8RndMakarovSD = [];

_text = "player addWeapon '%1'; _mags = getArray(configfile >> 'cfgWeapons' >> '%1' >> 'magazines'); _mag = _mags select 0; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player selectWeapon '%1'; reload player;player setUnitRecoilCoefficient 0;";

SideArm =
[
	["", true],
	["SideArm Ammo", [-1], "", -5, [["expression", ""]], "1", "0"],
	["15Rnd M9", [2], "#USER:15RndM9", -5, [["expression", ""]], "1", "1"],
	["15Rnd M9SD", [3], "#USER:15RndM9SD", -5, [["expression", ""]], "1", "1"],
	["17Rnd glock17", [4], "#USER:17Rndglock17", -5, [["expression", ""]], "1", "1"],
	["6Rnd 45ACP", [5], "#USER:6Rnd45ACP", -5, [["expression", ""]], "1", "1"],
	["7Rnd 45ACP 1911", [6], "#USER:7Rnd45ACP1911", -5, [["expression", ""]], "1", "1"],
	["8Rnd Makarov", [7], "#USER:8RndMakarov", -5, [["expression", ""]], "1", "1"],
	["8Rnd MakarovSD", [7], "#USER:8RndMakarovSD", -5, [["expression", ""]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:SideArm";

15RndM9 =
[
	["", true],
	["Spawn 1 15Rnd M9", [2], "", -5, [["expression", "player addMagazine '15Rnd_9x19_M9';"]], "1", "1"],
	["Spawn 2 15Rnd M9", [3], "", -5, [["expression", "player addMagazine '15Rnd_9x19_M9'; player addMagazine '15Rnd_9x19_M9';"]], "1", "1"],
	["Spawn 3 15Rnd M9", [4], "", -5, [["expression", "player addMagazine '15Rnd_9x19_M9'; player addMagazine '15Rnd_9x19_M9'; player addMagazine '15Rnd_9x19_M9';"]], "1", "1"],
	["Spawn 4 15Rnd M9", [5], "", -5, [["expression", "player addMagazine '15Rnd_9x19_M9'; player addMagazine '15Rnd_9x19_M9'; player addMagazine '15Rnd_9x19_M9'; player addMagazine '20Rnd_762x51_FNFAL';"]], "1", "1"],
	["Spawn 5 15Rnd M9", [6], "", -5, [["expression", "player addMagazine '15Rnd_9x19_M9'; player addMagazine '15Rnd_9x19_M9'; player addMagazine '15Rnd_9x19_M9'; player addMagazine '20Rnd_762x51_FNFAL'; player addMagazine '15Rnd_9x19_M9';"]], "1", "1"],
	["Spawn 10 15Rnd M9", [7], "", -5, [["expression", "player addMagazine '15Rnd_9x19_M9'; player addMagazine '15Rnd_9x19_M9'; player addMagazine '15Rnd_9x19_M9'; player addMagazine '20Rnd_762x51_FNFAL'; player addMagazine '15Rnd_9x19_M9'; player addMagazine '15Rnd_9x19_M9'; player addMagazine '15Rnd_9x19_M9'; player addMagazine '15Rnd_9x19_M9'; player addMagazine '15Rnd_9x19_M9'; player addMagazine '15Rnd_9x19_M9';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

15RndM9SD = 
[
	["", true],
	["Spawn 1 15Rnd M9SD", [2], "", -5, [["expression", "player addMagazine '15Rnd_9x19_M9SD';"]], "1", "1"],
	["Spawn 2 15Rnd M9SD", [3], "", -5, [["expression", "player addMagazine '15Rnd_9x19_M9SD'; player addMagazine '15Rnd_9x19_M9SD';"]], "1", "1"],
	["Spawn 3 15Rnd M9SD", [4], "", -5, [["expression", "player addMagazine '15Rnd_9x19_M9SD'; player addMagazine '15Rnd_9x19_M9SD'; player addMagazine '15Rnd_9x19_M9SD';"]], "1", "1"],
	["Spawn 4 15Rnd M9SD", [5], "", -5, [["expression", "player addMagazine '15Rnd_9x19_M9SD'; player addMagazine '15Rnd_9x19_M9SD'; player addMagazine '15Rnd_9x19_M9SD'; player addMagazine '15Rnd_9x19_M9SD';"]], "1", "1"],
	["Spawn 5 15Rnd M9SD", [6], "", -5, [["expression", "player addMagazine '15Rnd_9x19_M9SD'; player addMagazine '15Rnd_9x19_M9SD'; player addMagazine '15Rnd_9x19_M9SD'; player addMagazine '15Rnd_9x19_M9SD'; player addMagazine '15Rnd_9x19_M9SD';"]], "1", "1"],
	["Spawn 10 15Rnd M9SD", [7], "", -5, [["expression", "player addMagazine '15Rnd_9x19_M9SD'; player addMagazine '15Rnd_9x19_M9SD'; player addMagazine '15Rnd_9x19_M9SD'; player addMagazine '15Rnd_9x19_M9SD'; player addMagazine '15Rnd_9x19_M9SD'; player addMagazine '15Rnd_9x19_M9SD'; player addMagazine '15Rnd_9x19_M9SD'; player addMagazine '15Rnd_9x19_M9SD'; player addMagazine '15Rnd_9x19_M9SD'; player addMagazine '15Rnd_9x19_M9SD';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

17Rndglock17 =
[
	["", true],
	["Spawn 1 17Rnd glock17", [2], "", -5, [["expression", "player addMagazine '17Rndglock17';"]], "1", "1"],
	["Spawn 2 17Rnd glock17", [3], "", -5, [["expression", "player addMagazine '17Rndglock17'; player addMagazine '17Rndglock17';"]], "1", "1"],
	["Spawn 3 17Rnd glock17", [4], "", -5, [["expression", "player addMagazine '17Rndglock17'; player addMagazine '17Rndglock17'; player addMagazine '17Rndglock17';"]], "1", "1"],
	["Spawn 4 17Rnd glock17", [5], "", -5, [["expression", "player addMagazine '17Rndglock17'; player addMagazine '17Rndglock17'; player addMagazine '17Rndglock17'; player addMagazine '17Rndglock17';"]], "1", "1"],
	["Spawn 5 17Rnd glock17", [6], "", -5, [["expression", "player addMagazine '17Rndglock17'; player addMagazine '17Rndglock17'; player addMagazine '17Rndglock17'; player addMagazine '17Rndglock17'; player addMagazine '17Rndglock17';"]], "1", "1"],
	["Spawn 10 17Rnd glock17", [7], "", -5, [["expression", "player addMagazine '17Rndglock17'; player addMagazine '17Rndglock17'; player addMagazine '17Rndglock17'; player addMagazine '17Rndglock17'; player addMagazine '17Rndglock17'; player addMagazine '17Rndglock17'; player addMagazine '17Rndglock17'; player addMagazine '17Rndglock17'; player addMagazine '17Rndglock17'; player addMagazine '17Rndglock17';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

6Rnd45ACP =
[
	["", true],
	["Spawn 1 6Rnd 45ACP", [2], "", -5, [["expression", "player addMagazine '6Rnd_45ACP';"]], "1", "1"],
	["Spawn 2 6Rnd 45ACP", [3], "", -5, [["expression", "player addMagazine '6Rnd_45ACP'; player addMagazine '6Rnd_45ACP';"]], "1", "1"],
	["Spawn 3 6Rnd 45ACP", [4], "", -5, [["expression", "player addMagazine '6Rnd_45ACP'; player addMagazine '6Rnd_45ACP'; player addMagazine '6Rnd_45ACP';"]], "1", "1"],
	["Spawn 4 6Rnd 45ACP", [5], "", -5, [["expression", "player addMagazine '6Rnd_45ACP'; player addMagazine '6Rnd_45ACP'; player addMagazine '6Rnd_45ACP'; player addMagazine '6Rnd_45ACP';"]], "1", "1"],
	["Spawn 5 6Rnd 45ACP", [6], "", -5, [["expression", "player addMagazine '6Rnd_45ACP'; player addMagazine '6Rnd _45ACP'; player addMagazine '6Rnd_45ACP'; player addMagazine '6Rnd_45ACP'; player addMagazine '6Rnd_45ACP';"]], "1", "1"],
	["Spawn 10 6Rnd 45ACP", [7], "", -5, [["expression", "player addMagazine '6Rnd_45ACP'; player addMagazine '6Rnd _45ACP'; player addMagazine '6Rnd_45ACP'; player addMagazine '6Rnd_45ACP'; player addMagazine '6Rnd_45ACP'; player addMagazine '6Rnd_45ACP'; player addMagazine '6Rnd_45ACP'; player addMagazine '6Rnd_45ACP'; player addMagazine '6Rnd_45ACP'; player addMagazine '6Rnd_45ACP';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

7Rnd45ACP1911 =
[
	["", true],
	["Spawn 1 7Rnd 45ACP1911", [2], "", -5, [["expression", "player addMagazine '7Rnd_45ACP_1911';"]], "1", "1"],
	["Spawn 2 7Rnd 45ACP1911", [3], "", -5, [["expression", "player addMagazine '7Rnd_45ACP_1911'; player addMagazine '7Rnd_45ACP_1911';"]], "1", "1"],
	["Spawn 3 7Rnd 45ACP1911", [4], "", -5, [["expression", "player addMagazine '7Rnd_45ACP_1911'; player addMagazine '7Rnd_45ACP_1911'; player addMagazine '7Rnd_45ACP_1911';"]], "1", "1"],
	["Spawn 4 7Rnd 45ACP1911", [5], "", -5, [["expression", "player addMagazine '7Rnd_45ACP_1911'; player addMagazine '7Rnd_45ACP_1911'; player addMagazine '7Rnd_45ACP_1911'; player addMagazine '7Rnd_45ACP_1911';"]], "1", "1"],
	["Spawn 5 7Rnd 45ACP1911", [6], "", -5, [["expression", "player addMagazine '7Rnd_45ACP_1911'; player addMagazine '7Rnd_45ACP_1911'; player addMagazine '7Rnd_45ACP_1911'; player addMagazine '7Rnd_45ACP_1911'; player addMagazine '7Rnd_45ACP_1911';"]], "1", "1"],
	["Spawn 10 7Rnd 45ACP1911", [7], "", -5, [["expression", "player addMagazine '7Rnd_45ACP_1911'; player addMagazine '7Rnd_45ACP_1911'; player addMagazine '7Rnd_45ACP_1911'; player addMagazine '7Rnd_45ACP_1911'; player addMagazine '7Rnd_45ACP_1911'; player addMagazine '7Rnd_45ACP_1911'; player addMagazine '7Rnd_45ACP_1911'; player addMagazine '7Rnd_45ACP_1911'; player addMagazine '7Rnd_45ACP_1911'; player addMagazine '7Rnd_45ACP_1911';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

8RndMakarov =
[
	["", true],
	["Spawn 1 8Rnd Makarov", [2], "", -5, [["expression", "player addMagazine '8Rnd_9x18_Makarov';"]], "1", "1"],
	["Spawn 2 8Rnd Makarov", [3], "", -5, [["expression", "player addMagazine '8Rnd_9x18_Makarov'; player addMagazine '8Rnd_9x18_Makarov';"]], "1", "1"],
	["Spawn 3 8Rnd Makarov", [4], "", -5, [["expression", "player addMagazine '8Rnd_9x18_Makarov'; player addMagazine '8Rnd_9x18_Makarov'; player addMagazine '8Rnd_9x18_Makarov';"]], "1", "1"],
	["Spawn 4 8Rnd Makarov", [5], "", -5, [["expression", "player addMagazine '8Rnd_9x18_Makarov'; player addMagazine '8Rnd_9x18_Makarov'; player addMagazine '8Rnd_9x18_Makarov'; player addMagazine '8Rnd_9x18_Makarov';"]], "1", "1"],
	["Spawn 5 8Rnd Makarov", [6], "", -5, [["expression", "player addMagazine '8Rnd_9x18_Makarov'; player addMagazine '8Rnd_9x18_Makarov'; player addMagazine '8Rnd_9x18_Makarov'; player addMagazine '8Rnd_9x18_Makarov'; player addMagazine '8Rnd_9x18_Makarov';"]], "1", "1"],
	["Spawn 10 8Rnd Makarov", [7], "", -5, [["expression", "player addMagazine '8Rnd_9x18_Makarov'; player addMagazine '8Rnd_9x18_Makarov'; player addMagazine '8Rnd_9x18_Makarov'; player addMagazine '8Rnd_9x18_Makarov'; player addMagazine '8Rnd_9x18_Makarov'; player addMagazine '8Rnd_9x18_Makarov'; player addMagazine '8Rnd_9x18_Makarov'; player addMagazine '8Rnd_9x18_Makarov'; player addMagazine '8Rnd_9x18_Makarov'; player addMagazine '8Rnd_9x18_Makarov';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

8RndMakarovSD =
[
	["", true],
	["Spawn 1 8Rnd MakarovSD", [2], "", -5, [["expression", "player addMagazine '8Rnd_9x18_MakarovSD';"]], "1", "1"],
	["Spawn 2 8Rnd MakarovSD", [3], "", -5, [["expression", "player addMagazine '8Rnd_9x18_MakarovSD'; player addMagazine '8Rnd_9x18_MakarovSD';"]], "1", "1"],
	["Spawn 3 8Rnd MakarovSD", [4], "", -5, [["expression", "player addMagazine '8Rnd_9x18_MakarovSD'; player addMagazine '8Rnd_9x18_MakarovSD'; player addMagazine '8Rnd_9x18_MakarovSD';"]], "1", "1"],
	["Spawn 4 8Rnd MakarovSD", [5], "", -5, [["expression", "player addMagazine '8Rnd_9x18_MakarovSD'; player addMagazine '8Rnd_9x18_MakarovSD'; player addMagazine '8Rnd_9x18_MakarovSD'; player addMagazine '8Rnd_9x18_MakarovSD';"]], "1", "1"],
	["Spawn 5 8Rnd MakarovSD", [6], "", -5, [["expression", "player addMagazine '8Rnd_9x18_MakarovSD'; player addMagazine '8Rnd_9x18_MakarovSD'; player addMagazine '8Rnd_9x18_MakarovSD'; player addMagazine '8Rnd_9x18_MakarovSD'; player addMagazine '8Rnd_9x18_MakarovSD';"]], "1", "1"],
	["Spawn 10 8Rnd MakarovSD", [7], "", -5, [["expression", "player addMagazine '8Rnd_9x18_MakarovSD'; player addMagazine '8Rnd_9x18_MakarovSD'; player addMagazine '8Rnd_9x18_MakarovSD'; player addMagazine '8Rnd_9x18_MakarovSD'; player addMagazine '8Rnd_9x18_MakarovSD'; player addMagazine '8Rnd_9x18_MakarovSD'; player addMagazine '8Rnd_9x18_MakarovSD'; player addMagazine '8Rnd_9x18_MakarovSD'; player addMagazine '8Rnd_9x18_MakarovSD'; player addMagazine '8Rnd_9x18_MakarovSD';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];