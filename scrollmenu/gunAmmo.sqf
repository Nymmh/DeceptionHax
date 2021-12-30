GunAmmoStartTab = [];
AssaultRifle = [];
Arrows = [];
SideArm = [];
SniperRifle = [];
ShotGun = [];
SMG = [];
LMG = [];
Ammo = [];

_text = "player addWeapon '%1'; _mags = getArray(configfile >> 'cfgWeapons' >> '%1' >> 'magazines'); _mag = _mags select 0; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player selectWeapon '%1'; reload player;player setUnitRecoilCoefficient 0;";

GunAmmoStartTab =
[
	["", true],
	["AssaultRifle", [2],  "", -5, [["expression", format[exstr,"AssaultRifleAmmo.sqf"]]], "1", "1"],
	["Arrows", [3],  "", -5, [["expression", format[exstr,"ArrowsAmmo.sqf"]]], "1", "1"],
	["SideArm", [4],  "", -5, [["expression", format[exstr,"SideArmAmmo.sqf"]]], "1", "1"],
	["SniperRifle", [5],  "", -5, [["expression", format[exstr,"SniperRifleAmmo.sqf"]]], "1", "1"],
	["ShotGun", [6],  "", -5, [["expression", format[exstr,"ShotGunAmmo.sqf"]]], "1", "1"],
	["SMG", [7],  "", -5, [["expression", format[exstr,"SMGAmmo.sqf"]]], "1", "1"],
	["LMG", [8],  "", -5, [["expression", format[exstr,"LMGAmmo.sqf"]]], "1", "1"],
	["SpecialAmmo", [9],  "", -5, [["expression", format[exstr,"SpecialAmmo.sqf"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:GunAmmoStartTab";