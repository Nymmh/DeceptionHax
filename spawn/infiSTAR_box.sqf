_classname = "USBasicWeapons_EP1";
_dir = getdir player;
_pos = getposATL player;
_pos = [(_pos select 0)+1*sin(_dir),(_pos select 1)+1*cos(_dir), (_pos select 2)];
_spaz = createVehicle [_classname, _pos, [], 0, "CAN_COLLIDE"];
_spaz setDir _dir;
_spaz setposATL _pos;

_backpacks = [
//"CZ_VestPouch_EP1",
//"DZ_Patrol_Pack_EP1",
//"DZ_Assault_Pack_EP1",
//"DZ_CivilBackpack_EP1",
//"DZ_ALICE_Pack_EP1"
"DZ_Backpack_EP1"
];

_inventory = [
"Binocular",
"Binocular_Vector",
"ItemCompass",
"ItemEtool",
"ItemFlashlightRed",
"ItemGPS",
"ItemHatchet",
"ItemKnife",
"ItemMap",
"ItemMatchbox",
"ItemRadio",
"ItemToolbox",
"ItemWatch",
"Laserdesignator",
"NVGoggles"
];

_items = [
"FoodCanBakedBeans",
"FoodCanFrankBeans",
"FoodCanPasta",
"FoodCanSardines",
"FoodSteakCooked",
"FoodSteakRaw",
"HandChemBlue",
"HandChemGreen",
"HandChemRed",
"HandRoadFlare",
"ItemAntibiotic",
"ItemBandage",
"ItemBloodbag",
"ItemEpinephrine",
"ItemHeatPack",
"ItemJerrycan",
"ItemMorphine",
"ItemPainkiller",
"ItemSandbag",
"ItemSodaCoke",
"ItemSodaEmpty",
"ItemSodaMdew",
"ItemSodaPepsi",
"ItemTankTrap",
"ItemTent",
"ItemWire",
"ItemWaterbottle",
"PartEngine",
"PartFueltank",
"PartGeneric",
"PartGlass",
"PartWheel",
"PartWoodPile",
"PartVRotor",
"TrapBear"
];

_skins = [
"Skin_Camo1_DZ",
"Skin_Soldier1_DZ",
"Skin_Sniper1_DZ",
"Skin_Survivor2_DZ"
];

_weapons = [
"AK_107_GL_Kobra",
"AK_107_GL_PSO",
"AK_107_Kobra",
"AK_107_PSO",
"AK_47_M",
"AK_47_S",
"AK_74",
"AK_74_GL",
"AK_74_GL_Kobra",
"AKS_74",
"AKS_74_Kobra",
"AKS_74_PSO",
"AKS_74_U",
"AKS_74_UN_Kobra",
"AKS_GOLD",
"BAF_AS50_scoped",
"BAF_AS50_TWS",
"BAF_L110A1_Aim",
"BAF_L7A2_GPMG",
"BAF_L85A2_RIS_ACOG",
"BAF_L85A2_RIS_CWS",
"BAF_L85A2_RIS_Holo",
"BAF_L85A2_RIS_SUSAT",
"BAF_L85A2_UGL_ACOG",
"BAF_L85A2_UGL_Holo",
"BAF_L85A2_UGL_SUSAT",
"BAF_L86A2_ACOG",
"BAF_LRR_scoped",
"BAF_LRR_scoped_W",
//"BAF_NLAW_Launcher", // not working
"bizon",
"bizon_silenced",
"Colt1911",
"Crossbow",
"DMR",
"G36_C_SD_camo",
"G36_C_SD_eotech",
"G36a",
"G36A_camo",
"G36C",
"G36C_camo",
"G36K",
"G36K_camo",
"FN_FAL",
"FN_FAL_ANPVS4",
"glock17_EP1",
"Huntingrifle",
"ksvk",
"LeeEnfield",
"M1014",
//"m107", // same as DayZ version
"m107_DZ",
//"M136", // not working
"M14_EP1",
"M16A2",
"M16A2GL",
"m16a4",
"m16a4_acg",
"M16A4_ACG_GL",
"M16A4_GL",
"M24",
"M24_des_EP1",
//"M240", // same as DayZ version
"M240_DZ",
"m240_scoped_EP1",
//"M249", // same as DayZ version
"M249_DZ",
"M249_EP1",
"M249_m145_EP1",
"M40A3",
"M4A1",
"M4A1_Aim",
"M4A1_Aim_camo",
"M4A1_AIM_SD_camo",
"M4A1_HWS_GL",
"M4A1_HWS_GL_camo",
"M4A1_HWS_GL_SD_Camo",
"M4A1_RCO_GL",
"M4A3_CCO_EP1",
"M4A3_RCO_GL_EP1",
"M4SPR",
"M60A4_EP1",
"M9",
"M9SD",
"Makarov",
"MakarovSD",
"MeleeHatchet",
"MeleeCrowbar",
"MG36",
"Mk_48_DES_EP1",
"Mk_48_DZ",
"MP5A5",
"MP5SD",
"MR43",
"Pecheneg",
"PK",
"Remington870_lamp",
"revolver_EP1",
"revolver_gold_EP1",
"RPK_74",
"Sa61_EP1",
"Saiga12K",
"SVD",
"SVD_CAMO",
"SVD_des_EP1",
"SVD_NSPU_EP1",
"UZI_EP1",
"UZI_SD_EP1",
"Winchester1866"
];

_ammo = [
"5Rnd_127x108_KSVK",
"5Rnd_127x99_as50",
"5Rnd_762x51_M24",
"5Rnd_86x70_L115A1",
"5x_22_LR_17_HMR",
"6Rnd_45ACP",
"7Rnd_45ACP_1911",
"8Rnd_9x18_Makarov",
"8Rnd_9x18_MakarovSD",
"10Rnd_127x99_M107",
"10Rnd_762x54_SVD",
"10x_303",
"15Rnd_9x19_M9",
"15Rnd_9x19_M9SD",
"15Rnd_W1866_Slug",
"15Rnd_W1866_Pellet",
"17Rnd_9x19_glock17",
"20Rnd_556x45_Stanag",
"20Rnd_762x51_DMR",
"20Rnd_762x51_FNFAL",
"20Rnd_B_765x17_Ball",
"20Rnd_B_AA12_74Slug", // no weapon for this ammo
"30Rnd_545x39_AK",
"30Rnd_545x39_AKSD",
"30Rnd_556x45_G36",
"30Rnd_556x45_G36SD",
"30Rnd_556x45_Stanag",
"30Rnd_556x45_StanagSD",
"30Rnd_762x39_AK47",
//"30Rnd_762x39_SA58", // no weapon for this ammo
"30Rnd_9x19_MP5",
"30Rnd_9x19_MP5SD",
"30Rnd_9x19_UZI",
"30Rnd_9x19_UZI_SD",
"50Rnd_127x108_KORD",
"64Rnd_9x19_Bizon",
"64Rnd_9x19_SD_Bizon",
"75Rnd_545x39_RPK",
"100Rnd_762x51_M240",
"100Rnd_762x54_PK", 
"100Rnd_556x45_BetaCMag",
"100Rnd_556x45_M249",
"200Rnd_556x45_L110A1",
"200Rnd_556x45_M249"
];

_explosives = [
"1Rnd_HE_GP25",
"1Rnd_HE_M203",
"1Rnd_Smoke_GP25",
"1Rnd_SmokeGreen_GP25",
"1Rnd_SmokeRed_GP25",
"1Rnd_SmokeYellow_GP25",
"1Rnd_Smoke_M203",
"1Rnd_SmokeGreen_M203",
"1Rnd_SmokeRed_M203",
"1Rnd_SmokeYellow_M203",
"FlareGreen_GP25",
"FlareRed_GP25",
"FlareWhite_GP25",
"FlareYellow_GP25",
"FlareGreen_M203",
"FlareRed_M203",
"FlareWhite_M203",
"FlareYellow_M203",
//"HandGrenade", // not working
"HandGrenade_East",
//"HandGrenade_Stone", // not working
"HandGrenade_West",
"M136",
"SmokeShell",
"SmokeShellBlue",
"SmokeShellGreen",
"SmokeShellOrange",
"SmokeShellPurple",
"SmokeShellRed",
"SmokeShellYellow",
"PipeBomb"
];

titleText [format["Just-A-Box spawned nearby."],"PLAIN DOWN"]; titleFadeOut 4;

clearWeaponCargoGlobal _spaz;
clearMagazineCargoGlobal _spaz;
clearBackpackCargoGlobal _spaz;

{_spaz addBackpackCargo [_x, 10];} forEach _backpacks;
{_spaz addWeaponCargoGlobal [_x, 30];} forEach _inventory;
{_spaz addMagazineCargoGlobal [_x, 30];} forEach _items;
{_spaz addMagazineCargoGlobal [_x, 30];} forEach _skins;
{_spaz addWeaponCargoGlobal [_x, 30];} forEach _weapons;
{_spaz addMagazineCargoGlobal [_x, 30];} forEach _ammo;
{_spaz addMagazineCargoGlobal [_x, 30];} forEach _explosives;

delaymenu = 
[
	["",true],
	["Select delay", [-1], "", -5, [["expression", ""]], "1", "0"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["1 min", [2], "", -5, [["expression", "SelectDelay=60;DelaySelected=true;"]], "1", "1"],
	["2 min", [3], "", -5, [["expression", "SelectDelay=120;DelaySelected=true;"]], "1", "1"],
	["3 min", [4], "", -5, [["expression", "SelectDelay=180;DelaySelected=true;"]], "1", "1"],
	["4 min", [5], "", -5, [["expression", "SelectDelay=240;DelaySelected=true;"]], "1", "1"],
	["5 min", [6], "", -5, [["expression", "SelectDelay=300;DelaySelected=true;"]], "1", "1"],
	["10 min", [7], "", -5, [["expression", "SelectDelay=600;DelaySelected=true;"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["No timer", [11], "", -5, [["expression", "DelaySelected=false;"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:delaymenu";

WaitUntil{DelaySelected};
DelaySelected=false;

sleep 3;
titleText [format["Just-A-Box will disappear in %1 seconds.",SelectDelay],"PLAIN DOWN"]; titleFadeOut 4;

sleep SelectDelay;

deletevehicle _spaz;

titleText [format["Just-A-Box disappeared."],"PLAIN DOWN"]; titleFadeOut 4;