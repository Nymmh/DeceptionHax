SniperRifle = [];
10Rndm107 = [];
10RndSVD = [];
5RndM24 = [];
20Rnd_SB_SCAR = [];
10Rnd_SP5_VSS = [];
20Rnd_SP5_VSS = [];

_text = "player addWeapon '%1'; _mags = getArray(configfile >> 'cfgWeapons' >> '%1' >> 'magazines'); _mag = _mags select 0; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player selectWeapon '%1'; reload player;player setUnitRecoilCoefficient 0;";

SniperRifle =
[
	["", true],
	["SniperRifle Ammo", [-1], "", -5, [["expression", ""]], "1", "0"],
	["10Rnd m107", [2], "#USER:10Rndm107", -5, [["expression", ""]], "1", "1"],
	["10Rnd SVD", [3], "#USER:10RndSVD", -5, [["expression", ""]], "1", "1"],
	["5Rnd M24", [3], "#USER:5RndM24", -5, [["expression", ""]], "1", "1"],
	["20Rnd_SB_SCAR", [3], "#USER:20Rnd_SB_SCAR", -5, [["expression", ""]], "1", "1"],
	["10Rnd_SP5_VSS", [3], "#USER:10Rnd_SP5_VSS", -5, [["expression", ""]], "1", "1"],
	["20Rnd_SP5_VSS", [3], "#USER:20Rnd_SP5_VSS", -5, [["expression", ""]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:SniperRifle";

10Rndm107 =
[
	["", true],
	["Spawn 1 10Rnd m107", [2], "", -5, [["expression", "player addMagazine '10Rnd_127x99_m107';"]], "1", "1"],
	["Spawn 2 10Rnd m107", [3], "", -5, [["expression", "player addMagazine '10Rnd_127x99_m107'; player addMagazine '10Rnd_127x99_m107';"]], "1", "1"],
	["Spawn 3 10Rnd m107", [4], "", -5, [["expression", "player addMagazine '10Rnd_127x99_m107'; player addMagazine '10Rnd_127x99_m107'; player addMagazine '10Rnd_127x99_m107';"]], "1", "1"],
	["Spawn 4 10Rnd m107", [5], "", -5, [["expression", "player addMagazine '10Rnd_127x99_m107'; player addMagazine '10Rnd_127x99_m107'; player addMagazine '10Rnd_127x99_m107'; player addMagazine '10Rnd_127x99_m107';"]], "1", "1"],
	["Spawn 5 10Rnd m107", [6], "", -5, [["expression", "player addMagazine '10Rnd_127x99_m107'; player addMagazine '10Rnd_127x99_m107'; player addMagazine '10Rnd_127x99_m107'; player addMagazine '10Rnd_127x99_m107'; player addMagazine '10Rnd_127x99_m107';"]], "1", "1"],
	["Spawn 10 10Rnd m107", [7], "", -5, [["expression", "player addMagazine '10Rnd_127x99_m107'; player addMagazine '10Rnd_127x99_m107'; player addMagazine '10Rnd_127x99_m107'; player addMagazine '10Rnd_127x99_m107'; player addMagazine '10Rnd_127x99_m107'; player addMagazine '10Rnd_127x99_m107'; player addMagazine '10Rnd_127x99_m107'; player addMagazine '10Rnd_127x99_m107'; player addMagazine '10Rnd_127x99_m107'; player addMagazine '10Rnd_127x99_m107';"]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

10RndSVD =
[
	["", true],
	["Spawn 1 10Rnd SVD", [2], "", -5, [["expression", "player addMagazine '10Rnd_762x54_SVD';"]], "1", "1"],
	["Spawn 2 10Rnd SVD", [3], "", -5, [["expression", "player addMagazine '10Rnd_762x54_SVD'; player addMagazine '10Rnd_762x54_SVD';"]], "1", "1"],
	["Spawn 3 10Rnd SVD", [4], "", -5, [["expression", "player addMagazine '10Rnd_762x54_SVD'; player addMagazine '10Rnd_762x54_SVD'; player addMagazine '10Rnd_762x54_SVD';"]], "1", "1"],
	["Spawn 4 10Rnd SVD", [5], "", -5, [["expression", "player addMagazine '10Rnd_762x54_SVD'; player addMagazine '10Rnd_762x54_SVD'; player addMagazine '10Rnd_762x54_SVD'; player addMagazine '10Rnd_762x54_SVD';"]], "1", "1"],
	["Spawn 5 10Rnd SVD", [6], "", -5, [["expression", "player addMagazine '10Rnd_762x54_SVD'; player addMagazine '10Rnd_762x54_SVD'; player addMagazine '10Rnd_762x54_SVD'; player addMagazine '10Rnd_762x54_SVD'; player addMagazine '10Rnd_762x54_SVD';"]], "1", "1"],
	["Spawn 10 10Rnd SVD", [7], "", -5, [["expression", "player addMagazine '10Rnd_762x54_SVD'; player addMagazine '10Rnd_762x54_SVD'; player addMagazine '10Rnd_762x54_SVD'; player addMagazine '10Rnd_762x54_SVD'; player addMagazine '10Rnd_762x54_SVD'; player addMagazine '10Rnd_762x54_SVD'; player addMagazine '10Rnd_762x54_SVD'; player addMagazine '10Rnd_762x54_SVD'; player addMagazine '10Rnd_762x54_SVD'; player addMagazine '10Rnd_762x54_SVD';"]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

5RndM24 = 
[
	["", true],
	["Spawn 1 5Rnd M24", [2], "", -5, [["expression", "player addMagazine '5Rnd_762x51_M24';"]], "1", "1"],
	["Spawn 2 5Rnd M24", [3], "", -5, [["expression", "player addMagazine '5Rnd_762x51_M24'; player addMagazine '5Rnd_762x51_M24';"]], "1", "1"],
	["Spawn 3 5Rnd M24", [4], "", -5, [["expression", "player addMagazine '5Rnd_762x51_M24'; player addMagazine '5Rnd_762x51_M24'; player addMagazine '5Rnd_762x51_M24';"]], "1", "1"],
	["Spawn 4 5Rnd M24", [5], "", -5, [["expression", "player addMagazine '5Rnd_762x51_M24'; player addMagazine '5Rnd_762x51_M24'; player addMagazine '5Rnd_762x51_M24'; player addMagazine '5Rnd_762x51_M24';"]], "1", "1"],
	["Spawn 5 5Rnd M24", [6], "", -5, [["expression", "player addMagazine '5Rnd_762x51_M24'; player addMagazine '5Rnd_762x51_M24'; player addMagazine '5Rnd_762x51_M24'; player addMagazine '5Rnd_762x51_M24'; player addMagazine '5Rnd_762x51_M24';"]], "1", "1"],
	["Spawn 10 5Rnd M24", [7], "", -5, [["expression", "player addMagazine '5Rnd_762x51_M24'; player addMagazine '5Rnd_762x51_M24'; player addMagazine '5Rnd_762x51_M24'; player addMagazine '5Rnd_762x51_M24'; player addMagazine '5Rnd_762x51_M24'; player addMagazine '5Rnd_762x51_M24'; player addMagazine '5Rnd_762x51_M24'; player addMagazine '5Rnd_762x51_M24'; player addMagazine '5Rnd_762x51_M24'; player addMagazine '5Rnd_762x51_M24';"]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

20Rnd_SB_SCAR =
[
	["", true],
	["Spawn 1 20Rnd_SB_SCAR", [2], "", -5, [["expression", "player addMagazine '20Rnd_762x51_SB_SCAR';"]], "1", "1"],
	["Spawn 2 20Rnd_SB_SCAR", [3], "", -5, [["expression", "player addMagazine '20Rnd_762x51_SB_SCAR'; player addMagazine '20Rnd_762x51_SB_SCAR';"]], "1", "1"],
	["Spawn 3 20Rnd_SB_SCAR", [4], "", -5, [["expression", "player addMagazine '20Rnd_762x51_SB_SCAR'; player addMagazine '20Rnd_762x51_SB_SCAR'; player addMagazine '20Rnd_762x51_SB_SCAR';"]], "1", "1"],
	["Spawn 4 20Rnd_SB_SCAR", [5], "", -5, [["expression", "player addMagazine '20Rnd_762x51_SB_SCAR'; player addMagazine '20Rnd_762x51_SB_SCAR'; player addMagazine '20Rnd_762x51_SB_SCAR'; player addMagazine '20Rnd_762x51_SB_SCAR';"]], "1", "1"],
	["Spawn 5 20Rnd_SB_SCAR", [6], "", -5, [["expression", "player addMagazine '20Rnd_762x51_SB_SCAR'; player addMagazine '20Rnd_762x51_SB_SCAR'; player addMagazine '20Rnd_762x51_SB_SCAR'; player addMagazine '20Rnd_762x51_SB_SCAR'; player addMagazine '20Rnd_762x51_SB_SCAR';"]], "1", "1"],
	["Spawn 10 20Rnd_SB_SCAR", [7], "", -5, [["expression", "player addMagazine '20Rnd_762x51_SB_SCAR'; player addMagazine '20Rnd_762x51_SB_SCAR'; player addMagazine '20Rnd_762x51_SB_SCAR'; player addMagazine '20Rnd_762x51_SB_SCAR'; player addMagazine '20Rnd_762x51_SB_SCAR'; player addMagazine '20Rnd_762x51_SB_SCAR'; player addMagazine '20Rnd_762x51_SB_SCAR'; player addMagazine '20Rnd_762x51_SB_SCAR'; player addMagazine '20Rnd_762x51_SB_SCAR'; player addMagazine '20Rnd_762x51_SB_SCAR';"]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];
 
10Rnd_SP5_VSS =
 [
	["", true],
	["Spawn 1 10Rnd_SP5_VSS", [2], "", -5, [["expression", "player addMagazine '10Rnd_9x39_SP5_VSS';"]], "1", "1"],
	["Spawn 2 10Rnd_SP5_VSS", [3], "", -5, [["expression", "player addMagazine '10Rnd_9x39_SP5_VSS'; player addMagazine '10Rnd_9x39_SP5_VSS';"]], "1", "1"],
	["Spawn 3 10Rnd_SP5_VSS", [4], "", -5, [["expression", "player addMagazine '10Rnd_9x39_SP5_VSS'; player addMagazine '10Rnd_9x39_SP5_VSS'; player addMagazine '10Rnd_9x39_SP5_VSS';"]], "1", "1"],
	["Spawn 4 10Rnd_SP5_VSS", [5], "", -5, [["expression", "player addMagazine '10Rnd_9x39_SP5_VSS'; player addMagazine '10Rnd_9x39_SP5_VSS'; player addMagazine '10Rnd_9x39_SP5_VSS'; player addMagazine '10Rnd_9x39_SP5_VSS';"]], "1", "1"],
	["Spawn 5 10Rnd_SP5_VSS", [6], "", -5, [["expression", "player addMagazine '10Rnd_9x39_SP5_VSS'; player addMagazine '10Rnd_9x39_SP5_VSS'; player addMagazine '10Rnd_9x39_SP5_VSS'; player addMagazine '10Rnd_9x39_SP5_VSS'; player addMagazine '10Rnd_9x39_SP5_VSS';"]], "1", "1"],
	["Spawn 10 10Rnd_SP5_VSS", [7], "", -5, [["expression", "player addMagazine '10Rnd_9x39_SP5_VSS'; player addMagazine '10Rnd_9x39_SP5_VSS'; player addMagazine '10Rnd_9x39_SP5_VSS'; player addMagazine '10Rnd_9x39_SP5_VSS'; player addMagazine '10Rnd_9x39_SP5_VSS'; player addMagazine '10Rnd_9x39_SP5_VSS'; player addMagazine '10Rnd_9x39_SP5_VSS'; player addMagazine '10Rnd_9x39_SP5_VSS'; player addMagazine '10Rnd_9x39_SP5_VSS'; player addMagazine '10Rnd_9x39_SP5_VSS';"]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

20Rnd_SP5_VSS =
[
	["", true],
	["Spawn 1 20Rnd_SP5_VSS", [2], "", -5, [["expression", "player addMagazine '20Rnd_9x39_SP5_VSS';"]], "1", "1"],
	["Spawn 2 20Rnd_SP5_VSS", [3], "", -5, [["expression", "player addMagazine '20Rnd_9x39_SP5_VSS'; player addMagazine '20Rnd_9x39_SP5_VSS';"]], "1", "1"],
	["Spawn 3 20Rnd_SP5_VSS", [4], "", -5, [["expression", "player addMagazine '20Rnd_9x39_SP5_VSS'; player addMagazine '20Rnd_9x39_SP5_VSS'; player addMagazine '20Rnd_9x39_SP5_VSS';"]], "1", "1"],
	["Spawn 4 20Rnd_SP5_VSS", [5], "", -5, [["expression", "player addMagazine '20Rnd_9x39_SP5_VSS'; player addMagazine '20Rnd_9x39_SP5_VSS'; player addMagazine '20Rnd_9x39_SP5_VSS'; player addMagazine '20Rnd_9x39_SP5_VSS';"]], "1", "1"],
	["Spawn 5 20Rnd_SP5_VSS", [6], "", -5, [["expression", "player addMagazine '20Rnd_9x39_SP5_VSS'; player addMagazine '20Rnd_9x39_SP5_VSS'; player addMagazine '20Rnd_9x39_SP5_VSS'; player addMagazine '20Rnd_9x39_SP5_VSS'; player addMagazine '20Rnd_9x39_SP5_VSS';"]], "1", "1"],
	["Spawn 10 20Rnd_SP5_VSS", [7], "", -5, [["expression", "player addMagazine '20Rnd_9x39_SP5_VSS'; player addMagazine '20Rnd_9x39_SP5_VSS'; player addMagazine '20Rnd_9x39_SP5_VSS'; player addMagazine '20Rnd_9x39_SP5_VSS'; player addMagazine '20Rnd_9x39_SP5_VSS'; player addMagazine '20Rnd_9x39_SP5_VSS'; player addMagazine '20Rnd_9x39_SP5_VSS'; player addMagazine '20Rnd_9x39_SP5_VSS'; player addMagazine '20Rnd_9x39_SP5_VSS'; player addMagazine '20Rnd_9x39_SP5_VSS';"]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];