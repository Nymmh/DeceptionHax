ArrowsAmmo = [];
WoodenArrow =[];
Quiver =[];

_text = "player addWeapon '%1'; _mags = getArray(configfile >> 'cfgWeapons' >> '%1' >> 'magazines'); _mag = _mags select 0; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player selectWeapon '%1'; reload player;player setUnitRecoilCoefficient 0;";

ArrowsAmmo =
[
	["", true],
	["WoodenArrow", [2], "#USER:WoodenArrow", -5, [["expression", ""]], "1", "1"],
	["Quiver", [3], "#USER:Quiver", -5, [["expression", ""]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:ArrowsAmmo";

WoodenArrow =
[
	["", true],
	["Spawn 1 WoodenArrow", [2], "", -5, [["expression", "player addMagazine 'WoodenArrow';"]], "1", "1"],
	["Spawn 2 WoodenArrow", [3], "", -5, [["expression", "player addMagazine 'WoodenArrow'; player addMagazine 'WoodenArrow';"]], "1", "1"],
	["Spawn 3 WoodenArrow", [4], "", -5, [["expression", "player addMagazine 'WoodenArrow'; player addMagazine 'WoodenArrow'; player addMagazine 'WoodenArrow';"]], "1", "1"],
	["Spawn 4 WoodenArrow", [5], "", -5, [["expression", "player addMagazine 'WoodenArrow'; player addMagazine 'WoodenArrow'; player addMagazine 'WoodenArrow'; player addMagazine 'WoodenArrow';"]], "1", "1"],
	["Spawn 5 WoodenArrow", [6], "", -5, [["expression", "player addMagazine 'WoodenArrow'; player addMagazine 'WoodenArrow'; player addMagazine 'WoodenArrow'; player addMagazine 'WoodenArrow'; player addMagazine 'WoodenArrow';"]], "1", "1"],
	["Spawn 10 WoodenArrow", [7], "", -5, [["expression", "player addMagazine 'WoodenArrow'; player addMagazine 'WoodenArrow'; player addMagazine 'WoodenArrow'; player addMagazine 'WoodenArrow'; player addMagazine 'WoodenArrow'; player addMagazine 'WoodenArrow'; player addMagazine 'WoodenArrow'; player addMagazine 'WoodenArrow'; player addMagazine 'WoodenArrow'; player addMagazine 'WoodenArrow';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

Quiver =
[
	["", true],
	["Spawn 1 Quiver", [2], "", -5, [["expression", "player addMagazine 'Quiver';"]], "1", "1"],
	["Spawn 2 Quiver", [3], "", -5, [["expression", "player addMagazine 'Quiver'; player addMagazine 'Quiver';"]], "1", "1"],
	["Spawn 3 Quiver", [4], "", -5, [["expression", "player addMagazine 'Quiver'; player addMagazine 'Quiver'; player addMagazine 'Quiver';"]], "1", "1"],
	["Spawn 4 Quiver", [5], "", -5, [["expression", "player addMagazine 'Quiver'; player addMagazine 'Quiver'; player addMagazine 'Quiver'; player addMagazine 'Quiver';"]], "1", "1"],
	["Spawn 5 Quiver", [6], "", -5, [["expression", "player addMagazine 'Quiver'; player addMagazine 'Quiver'; player addMagazine 'Quiver'; player addMagazine 'Quiver'; player addMagazine 'Quiver';"]], "1", "1"],
	["Spawn 10 Quiver", [7], "", -5, [["expression", "player addMagazine 'Quiver'; player addMagazine 'Quiver'; player addMagazine 'Quiver'; player addMagazine 'Quiver'; player addMagazine 'Quiver'; player addMagazine 'Quiver'; player addMagazine 'Quiver'; player addMagazine 'Quiver'; player addMagazine 'Quiver'; player addMagazine 'Quiver';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];