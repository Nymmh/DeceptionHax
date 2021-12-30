ShotGunAmmo = [];
15Rnd_W1866_Slug = [];
2Rnd_shotgun_74_Pellets = [];
2Rnd_shotgun_74Slug = [];
8Rnd_B_Beneli_74Slug =[];
8Rnd_B_Beneli_Pellets = [];
8Rnd_B_Saiga12_74Slug = [];
8Rnd_B_Saiga12_Pellets = [];

_text = "player addWeapon '%1'; _mags = getArray(configfile >> 'cfgWeapons' >> '%1' >> 'magazines'); _mag = _mags select 0; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player selectWeapon '%1'; reload player;player setUnitRecoilCoefficient 0;";

ShotGunAmmo =
[
	["", true],
	["ShotGun Ammo", [-1], "", -5, [["expression", ""]], "1", "0"],
	["15Rnd_W1866_Slug", [2], "#USER:15Rnd_W1866_Slug", -5, [["expression", ""]], "1", "1"],
	["2Rnd_shotgun_74_Pellets", [3], "#USER:2Rnd_shotgun_74_Pellets", -5, [["expression", ""]], "1", "1"],
	["2Rnd_shotgun_74Slug", [4], "#USER:2Rnd_shotgun_74Slug", -5, [["expression", ""]], "1", "1"],
	["8Rnd_B_Beneli_74Slug", [5], "#USER:8Rnd_B_Beneli_74Slug", -5, [["expression", ""]], "1", "1"],
	["8Rnd_B_Beneli_Pellets", [6], "#USER:8Rnd_B_Beneli_Pellets", -5, [["expression", ""]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:ShotGunAmmo";

15Rnd_W1866_Slug = 
[
	["", true],
	["Spawn 1 15Rnd_W1866_Slug", [2], "", -5, [["expression", "player addMagazine '15Rnd_W1866_Slug';"]], "1", "1"],
	["Spawn 2 15Rnd_W1866_Slug", [3], "", -5, [["expression", "player addMagazine '15Rnd_W1866_Slug'; player addMagazine '15Rnd_W1866_Slug';"]], "1", "1"],
	["Spawn 3 15Rnd_W1866_Slug", [4], "", -5, [["expression", "player addMagazine '15Rnd_W1866_Slug'; player addMagazine '15Rnd_W1866_Slug'; player addMagazine '15Rnd_W1866_Slug';"]], "1", "1"],
	["Spawn 4 15Rnd_W1866_Slug", [5], "", -5, [["expression", "player addMagazine '15Rnd_W1866_Slug'; player addMagazine '15Rnd_W1866_Slug'; player addMagazine '15Rnd_W1866_Slug'; player addMagazine '15Rnd_W1866_Slug';"]], "1", "1"],
	["Spawn 5 15Rnd_W1866_Slug", [6], "", -5, [["expression", "player addMagazine '15Rnd_W1866_Slug'; player addMagazine '15Rnd_W1866_Slug'; player addMagazine '15Rnd_W1866_Slug'; player addMagazine '15Rnd_W1866_Slug'; player addMagazine '15Rnd_W1866_Slug';"]], "1", "1"],
	["Spawn 10 15Rnd_W1866_Slug", [7], "", -5, [["expression", "player addMagazine '15Rnd_W1866_Slug'; player addMagazine '15Rnd_W1866_Slug'; player addMagazine '15Rnd_W1866_Slug'; player addMagazine '15Rnd_W1866_Slug'; player addMagazine '15Rnd_W1866_Slug'; player addMagazine '15Rnd_W1866_Slug'; player addMagazine '15Rnd_W1866_Slug'; player addMagazine '15Rnd_W1866_Slug'; player addMagazine '15Rnd_W1866_Slug'; player addMagazine '15Rnd_W1866_Slug';"]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

2Rnd_shotgun_74_Pellets = 
[
	["", true],
	["Spawn 1 2Rnd_shotgun_74_Pellets", [2], "", -5, [["expression", "player addMagazine '2Rnd_shotgun_74Pellets';"]], "1", "1"],
	["Spawn 2 2Rnd_shotgun_74_Pellets", [3], "", -5, [["expression", "player addMagazine '2Rnd_shotgun_74Pellets'; player addMagazine '2Rnd_shotgun_74Pellets';"]], "1", "1"],
	["Spawn 3 2Rnd_shotgun_74_Pellets", [4], "", -5, [["expression", "player addMagazine '2Rnd_shotgun_74Pellets'; player addMagazine '2Rnd_shotgun_74Pellets'; player addMagazine '2Rnd_shotgun_74Pellets';"]], "1", "1"],
	["Spawn 4 2Rnd_shotgun_74_Pellets", [5], "", -5, [["expression", "player addMagazine '2Rnd_shotgun_74Pellets'; player addMagazine '2Rnd_shotgun_74Pellets'; player addMagazine '2Rnd_shotgun_74Pellets'; player addMagazine '2Rnd_shotgun_74Pellets';"]], "1", "1"],
	["Spawn 5 2Rnd_shotgun_74_Pellets", [6], "", -5, [["expression", "player addMagazine '2Rnd_shotgun_74Pellets'; player addMagazine '2Rnd_shotgun_74Pellets'; player addMagazine '2Rnd_shotgun_74Pellets'; player addMagazine '2Rnd_shotgun_74Pellets'; player addMagazine '2Rnd_shotgun_74Pellets';"]], "1", "1"],
	["Spawn 10 2Rnd_shotgun_74_Pellets", [7], "", -5, [["expression", "player addMagazine '2Rnd_shotgun_74Pellets'; player addMagazine '2Rnd_shotgun_74Pellets'; player addMagazine '2Rnd_shotgun_74Pellets'; player addMagazine '2Rnd_shotgun_74Pellets'; player addMagazine '2Rnd_shotgun_74Pellets'; player addMagazine '2Rnd_shotgun_74Pellets'; player addMagazine '2Rnd_shotgun_74Pellets'; player addMagazine '2Rnd_shotgun_74Pellets'; player addMagazine '2Rnd_shotgun_74Pellets'; player addMagazine '2Rnd_shotgun_74Pellets';"]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

2Rnd_shotgun_74Slug = 
[
	["", true],
	["Spawn 1 2Rnd_shotgun_74Slug", [2], "", -5, [["expression", "player addMagazine '2Rnd_shotgun_74Slug';"]], "1", "1"],
	["Spawn 2 2Rnd_shotgun_74Slug", [3], "", -5, [["expression", "player addMagazine '2Rnd_shotgun_74Slug'; player addMagazine '2Rnd_shotgun_74Slug';"]], "1", "1"],
	["Spawn 3 2Rnd_shotgun_74Slug", [4], "", -5, [["expression", "player addMagazine '2Rnd_shotgun_74Slug'; player addMagazine '2Rnd_shotgun_74Slug'; player addMagazine '2Rnd_shotgun_74Slug';"]], "1", "1"],
	["Spawn 4 2Rnd_shotgun_74Slug", [5], "", -5, [["expression", "player addMagazine '2Rnd_shotgun_74Slug'; player addMagazine '2Rnd_shotgun_74Slug'; player addMagazine '2Rnd_shotgun_74Slug'; player addMagazine '2Rnd_shotgun_74Slug';"]], "1", "1"],
	["Spawn 5 2Rnd_shotgun_74Slug", [6], "", -5, [["expression", "player addMagazine '2Rnd_shotgun_74Slug'; player addMagazine '2Rnd_shotgun_74Slug'; player addMagazine '2Rnd_shotgun_74Slug'; player addMagazine '2Rnd_shotgun_74Slug'; player addMagazine '2Rnd_shotgun_74Slug';"]], "1", "1"],
	["Spawn 10 2Rnd_shotgun_74Slug", [7], "", -5, [["expression", "player addMagazine '2Rnd_shotgun_74Slug'; player addMagazine '2Rnd_shotgun_74Slug'; player addMagazine '2Rnd_shotgun_74Slug'; player addMagazine '2Rnd_shotgun_74Slug'; player addMagazine '2Rnd_shotgun_74Slug'; player addMagazine '2Rnd_shotgun_74Slug'; player addMagazine '2Rnd_shotgun_74Slug'; player addMagazine '2Rnd_shotgun_74Slug'; player addMagazine '2Rnd_shotgun_74Slug'; player addMagazine '2Rnd_shotgun_74Slug';"]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

8Rnd_B_Beneli_74Slug =
[
	["", true],
	["Spawn 1 8Rnd_B_Beneli_74Slug", [2], "", -5, [["expression", "player addMagazine '8Rnd_B_Beneli_74Slug';"]], "1", "1"],
	["Spawn 2 8Rnd_B_Beneli_74Slug", [3], "", -5, [["expression", "player addMagazine '8Rnd_B_Beneli_74Slug'; player addMagazine '8Rnd_B_Beneli_74Slug';"]], "1", "1"],
	["Spawn 3 8Rnd_B_Beneli_74Slug", [4], "", -5, [["expression", "player addMagazine '8Rnd_B_Beneli_74Slug'; player addMagazine '8Rnd_B_Beneli_74Slug'; player addMagazine '8Rnd_B_Beneli_74Slug';"]], "1", "1"],
	["Spawn 4 8Rnd_B_Beneli_74Slug", [5], "", -5, [["expression", "player addMagazine '8Rnd_B_Beneli_74Slug'; player addMagazine '8Rnd_B_Beneli_74Slug'; player addMagazine '8Rnd_B_Beneli_74Slug'; player addMagazine '8Rnd_B_Beneli_74Slug';"]], "1", "1"],
	["Spawn 5 8Rnd_B_Beneli_74Slug", [6], "", -5, [["expression", "player addMagazine '8Rnd_B_Beneli_74Slug'; player addMagazine '8Rnd_B_Beneli_74Slug'; player addMagazine '8Rnd_B_Beneli_74Slug'; player addMagazine '8Rnd_B_Beneli_74Slug'; player addMagazine '8Rnd_B_Beneli_74Slug';"]], "1", "1"],
	["Spawn 10 8Rnd_B_Beneli_74Slug", [7], "", -5, [["expression", "player addMagazine '8Rnd_B_Beneli_74Slug'; player addMagazine '8Rnd_B_Beneli_74Slug'; player addMagazine '8Rnd_B_Beneli_74Slug'; player addMagazine '8Rnd_B_Beneli_74Slug'; player addMagazine '8Rnd_B_Beneli_74Slug'; player addMagazine '8Rnd_B_Beneli_74Slug'; player addMagazine '8Rnd_B_Beneli_74Slug'; player addMagazine '8Rnd_B_Beneli_74Slug'; player addMagazine '8Rnd_B_Beneli_74Slug'; player addMagazine '8Rnd_B_Beneli_74Slug';"]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

8Rnd_B_Beneli_Pellets = 
[
	["", true],
	["Spawn 1 8Rnd_B_Beneli_Pellets", [2], "", -5, [["expression", "player addMagazine '8Rnd_B_Beneli_Pellets';"]], "1", "1"],
	["Spawn 2 8Rnd_B_Beneli_Pellets", [3], "", -5, [["expression", "player addMagazine '8Rnd_B_Beneli_Pellets'; player addMagazine '8Rnd_B_Beneli_Pellets';"]], "1", "1"],
	["Spawn 3 8Rnd_B_Beneli_Pellets", [4], "", -5, [["expression", "player addMagazine '8Rnd_B_Beneli_Pellets'; player addMagazine '8Rnd_B_Beneli_Pellets'; player addMagazine '8Rnd_B_Beneli_Pellets';"]], "1", "1"],
	["Spawn 4 8Rnd_B_Beneli_Pellets", [5], "", -5, [["expression", "player addMagazine '8Rnd_B_Beneli_Pellets'; player addMagazine '8Rnd_B_Beneli_Pellets'; player addMagazine '8Rnd_B_Beneli_Pellets'; player addMagazine '8Rnd_B_Beneli_Pellets';"]], "1", "1"],
	["Spawn 5 8Rnd_B_Beneli_Pellets", [6], "", -5, [["expression", "player addMagazine '8Rnd_B_Beneli_Pellets'; player addMagazine '8Rnd_B_Beneli_Pellets'; player addMagazine '8Rnd_B_Beneli_Pellets'; player addMagazine '8Rnd_B_Beneli_Pellets'; player addMagazine '8Rnd_B_Beneli_Pellets';"]], "1", "1"],
	["Spawn 10 8Rnd_B_Beneli_Pellets", [7], "", -5, [["expression", "player addMagazine '8Rnd_B_Beneli_Pellets'; player addMagazine '8Rnd_B_Beneli_Pellets'; player addMagazine '8Rnd_B_Beneli_Pellets'; player addMagazine '8Rnd_B_Beneli_Pellets'; player addMagazine '8Rnd_B_Beneli_Pellets'; player addMagazine '8Rnd_B_Beneli_Pellets'; player addMagazine '8Rnd_B_Beneli_Pellets'; player addMagazine '8Rnd_B_Beneli_Pellets'; player addMagazine '8Rnd_B_Beneli_Pellets'; player addMagazine '8Rnd_B_Beneli_Pellets';"]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

8Rnd_B_Saiga12_74Slug = 
[
	["", true],
	["Spawn 1 8Rnd_B_Saiga12_74Slug", [2], "", -5, [["expression", "player addMagazine '8Rnd_B_Saiga12_74Slug';"]], "1", "1"],
	["Spawn 2 8Rnd_B_Saiga12_74Slug", [3], "", -5, [["expression", "player addMagazine '8Rnd_B_Saiga12_74Slug'; player addMagazine '8Rnd_B_Saiga12_74Slug';"]], "1", "1"],
	["Spawn 3 8Rnd_B_Saiga12_74Slug", [4], "", -5, [["expression", "player addMagazine '8Rnd_B_Saiga12_74Slug'; player addMagazine '8Rnd_B_Saiga12_74Slug'; player addMagazine '8Rnd_B_Saiga12_74Slug';"]], "1", "1"],
	["Spawn 4 8Rnd_B_Saiga12_74Slug", [5], "", -5, [["expression", "player addMagazine '8Rnd_B_Saiga12_74Slug'; player addMagazine '8Rnd_B_Saiga12_74Slug'; player addMagazine '8Rnd_B_Saiga12_74Slug'; player addMagazine '8Rnd_B_Saiga12_74Slug';"]], "1", "1"],
	["Spawn 5 8Rnd_B_Saiga12_74Slug", [6], "", -5, [["expression", "player addMagazine '8Rnd_B_Saiga12_74Slug'; player addMagazine '8Rnd_B_Saiga12_74Slug'; player addMagazine '8Rnd_B_Saiga12_74Slug'; player addMagazine '8Rnd_B_Saiga12_74Slug'; player addMagazine '8Rnd_B_Saiga12_74Slug';"]], "1", "1"],
	["Spawn 10 8Rnd_B_Saiga12_74Slug", [7], "", -5, [["expression", "player addMagazine '8Rnd_B_Saiga12_74Slug'; player addMagazine '8Rnd_B_Saiga12_74Slug'; player addMagazine '8Rnd_B_Saiga12_74Slug'; player addMagazine '8Rnd_B_Saiga12_74Slug'; player addMagazine '8Rnd_B_Saiga12_74Slug'; player addMagazine '8Rnd_B_Saiga12_74Slug'; player addMagazine '8Rnd_B_Saiga12_74Slug'; player addMagazine '8Rnd_B_Saiga12_74Slug'; player addMagazine '8Rnd_B_Saiga12_74Slug'; player addMagazine '8Rnd_B_Saiga12_74Slug';"]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

8Rnd_B_Saiga12_Pellets =
[
	["", true],
	["Spawn 1 8Rnd_B_Saiga12_Pellets", [2], "", -5, [["expression", "player addMagazine '8Rnd_B_Saiga12_Pellets';"]], "1", "1"],
	["Spawn 2 8Rnd_B_Saiga12_Pellets", [3], "", -5, [["expression", "player addMagazine '8Rnd_B_Saiga12_Pellets'; player addMagazine '8Rnd_B_Saiga12_Pellets';"]], "1", "1"],
	["Spawn 3 8Rnd_B_Saiga12_Pellets", [4], "", -5, [["expression", "player addMagazine '8Rnd_B_Saiga12_Pellets'; player addMagazine '8Rnd_B_Saiga12_Pellets'; player addMagazine '8Rnd_B_Saiga12_Pellets';"]], "1", "1"],
	["Spawn 4 8Rnd_B_Saiga12_Pellets", [5], "", -5, [["expression", "player addMagazine '8Rnd_B_Saiga12_Pellets'; player addMagazine '8Rnd_B_Saiga12_Pellets'; player addMagazine '8Rnd_B_Saiga12_Pellets'; player addMagazine '8Rnd_B_Saiga12_Pellets';"]], "1", "1"],
	["Spawn 5 8Rnd_B_Saiga12_Pellets", [6], "", -5, [["expression", "player addMagazine '8Rnd_B_Saiga12_Pellets'; player addMagazine '8Rnd_B_Saiga12_Pellets'; player addMagazine '8Rnd_B_Saiga12_Pellets'; player addMagazine '8Rnd_B_Saiga12_Pellets'; player addMagazine '8Rnd_B_Saiga12_Pellets';"]], "1", "1"],
	["Spawn 10 8Rnd_B_Saiga12_Pellets", [7], "", -5, [["expression", "player addMagazine '8Rnd_B_Saiga12_Pellets'; player addMagazine '8Rnd_B_Saiga12_Pellets'; player addMagazine '8Rnd_B_Saiga12_Pellets'; player addMagazine '8Rnd_B_Saiga12_Pellets'; player addMagazine '8Rnd_B_Saiga12_Pellets'; player addMagazine '8Rnd_B_Saiga12_Pellets'; player addMagazine '8Rnd_B_Saiga12_Pellets'; player addMagazine '8Rnd_B_Saiga12_Pellets'; player addMagazine '8Rnd_B_Saiga12_Pellets'; player addMagazine '8Rnd_B_Saiga12_Pellets';"]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];