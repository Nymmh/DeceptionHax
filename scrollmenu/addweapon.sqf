Vanilla = [];
Chocolate = []; 
Ammo = [];
Ammo2 = [];
Ammo3 = [];
Ammo4 = [];
PlayerFavGuns = [];
CorbinFavGunz = [];
RiPZFavGunz = [];
AleksFavGunz = [];
JustyFavGunz = [];
VanillaAssaultRifles1 = [];
VanillaAssaultRifles2 = [];
VanillaAssaultRifles3 = [];
VanillaAssaultRifles4 = [];
VanillaAssaultRifles5 = [];
VanillaAssaultRifles6 = [];
VanillaCrossBows1 = [];
VanillaLightMachineGuns1 = [];
VanillaLightMachineGuns2 =[];
VanillaMeleeWeapons = [];
VanillaShotguns = [];
VanillaSideArms = [];
VanillaSideArms2 = [];
VanillaSniperRifles1 = [];
VanillaSniperRifles2 = [];
VanillaSubMachineGuns = [];
VanillaFlaresSmoke = [];
VanillaFlaresSmoke2 = []; 
VanillaFlaresSmoke3 = [];
ChocolateAssaultRifles1 = [];
ChocolateAssaultRifles2 = [];
ChocolateSniperRifles1 = [];
ChocolateLightMachineGuns1 = [];
infiSTAR_crazy = [];
OtherTab = [];

_text = "player addWeapon '%1'; _mags = getArray(configfile >> 'cfgWeapons' >> '%1' >> 'magazines'); _mag = _mags select 0; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player addMagazine _mag; player selectWeapon '%1'; reload player;player setUnitRecoilCoefficient 0;";

Vanilla = 
[
	["", true],
	[">>> Chocolate >>>", [13], "#USER:Chocolate", -5, [["expression", ""]], "1", "1"],
	["Ammo", [2],  "", -5, [["expression", format[exstr,"gunAmmo.sqf"]]], "1", "1"],
	["Vanilla", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Assault Rifles Page1", [2], "#USER:VanillaAssaultRifles1", -5, [["expression", ""]], "1", "1"],
	["CrossBows", [3], "#USER:VanillaCrossBows1", -5, [["expression", ""]], "1", "1"],
	["Light Machine Guns", [4], "#USER:VanillaLightMachineGuns1", -5, [["expression", ""]], "1", "1"],
	["Melee Weapons", [5], "#USER:VanillaMeleeWeapons", -5, [["expression", ""]], "1", "1"],
	["Shotguns", [6], "#USER:VanillaShotguns", -5, [["expression", ""]], "1", "1"],
	["SideArms", [7], "#USER:VanillaSideArms", -5, [["expression", ""]], "1", "1"],
	["Sniper Rifles", [8], "#USER:VanillaSniperRifles1", -5, [["expression", ""]], "1", "1"],
	["SubMachineGuns", [9], "#USER:VanillaSubMachineGuns", -5, [["expression", ""]], "1", "1"],
	["Flares, Explosives With Smoke", [10], "#USER:VanillaFlaresSmoke", -5, [["expression", ""]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:Vanilla";

Chocolate =
[
	["", true],
	[">>> PlayerGuns >>>", [13], "#USER:PlayerFavGuns", -5, [["expression", ""]], "1", "1"],
	["Chocolate", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Assault Rifles", [2], "#USER:ChocolateAssaultRifles1", -5, [["expression", ""]], "1", "1"],
	["Sniper Rifles", [3], "#USER:ChocolateSniperRifles1", -5, [["expression", ""]], "1", "1"],
	["LightMachineGuns", [4], "#USER:ChocolateLightMachineGuns1", -5, [["expression", ""]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

PlayerFavGuns = 
[
	["", true],
	[">>> Other >>>", [13], "#USER:OtherTab", -5, [["expression", ""]], "1", "1"],
	["Corbin's Gunz", [2], "#USER:CorbinFavGunz", -5, [["expression", ""]], "1", "1"],
	["RiPZ's Gunz", [3], "#USER:RiPZFavGunz", -5, [["expression", ""]], "1", "1"],
	["Alek's Gunz", [4], "#USER:AleksFavGunz", -5, [["expression", ""]], "1", "1"],
	["Justy's Gunz", [5], "#USER:JustyFavGunz", -5, [["expression", ""]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

CorbinFavGunz = 
[
	["", true],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["L85A2-AWS(NightVision/ThermalScope)", [2], "", -5, [["expression", format[_text, "BAF_L85A2_RIS_CWS"]]], "1", "1"],
	["M107(The Sound of Murder)", [3], "", -5, [["expression", format[_text, "m107_DZ"]]], "1", "1"],
	["AS50-TWS(ThermalScope)", [4], "", -5, [["expression", format[_text, "BAF_AS50_TWS"]]], "1", "1"],
	["Lapua(Desert Camo)", [5], "", -5, [["expression", format[_text, "BAF_LRR_scoped"]]], "1", "1"],
	["M40A3", [6], "", -5, [["expression", format[_text, "M40A3"]]], "1", "1"],
	["FN FAL", [7], "", -5, [["expression", format[_text, "FN_FAL"]]], "1", "1"],
	["AKM", [8], "", -5, [["expression", format[_text, "AK_47_M"]]], "1", "1"],
	["PDW-SD", [9], "", -5, [["expression", format[_text, "UZI_SD_EP1"]]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

RiPZFavGunz = 
[
	["", true],
	["Golden Revolver", [2], "", -5, [["expression", format[_text, "revolver_gold_EP1"]]], "1", "1"],
	["AKS(Gold)", [3], "", -5, [["expression", format[_text, "AKS_GOLD"]]], "1", "1"],
	["M4A1 CCO-SD(Camo)", [4], "", -5, [["expression", format[_text, "M4A1_AIM_SD_camo"]]], "1", "1"],
	["Remington 870 (Flash-light)", [5], "", -5, [["expression", format[_text, "Remington870_lamp"]]], "1", "1"],
	["M24", [6], "", -5, [["expression", format[_text, "M24"]]], "1", "1"],
	["M40A3", [7], "", -5, [["expression", format[_text, "M40A3"]]], "1", "1"],
	["AS50", [8], "", -5, [["expression", format[_text, "BAF_AS50_scoped"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

AleksFavGunz = 
[
	["", true],
	["M107(The Sound of Murder)", [2], "", -5, [["expression", format[_text, "m107_DZ"]]], "1", "1"],
	["AKM", [3], "", -5, [["expression", format[_text, "AK_47_M"]]], "1", "1"],
	["KSVK", [4], "", -5, [["expression", format[_text, "KSVK"]]], "1", "1"],
	["M249 Scope", [5], "", -5, [["expression", format[_text, "M249_m145_EP1"]]], "1", "1"],
	["G36K(Camo)", [6], "", -5, [["expression", format[_text, "G36K_camo"]]], "1", "1"],
	["G36C-SD(Camo)", [7], "", -5, [["expression", format[_text, "G36_C_SD_camo"]]], "1", "1"],
	["MK17-Sniper-SD", [8], "", -5, [["expression", "player addMagazine 'SCAR_H_LNG_Sniper_SD';"]], "1", "1"],
	["PDW-SD", [9], "", -5, [["expression", format[_text, "UZI_SD_EP1"]]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

JustyFavGunz =
[
	["", true],
	["AS50", [2], "", -5, [["expression", format[_text, "BAF_AS50_scoped"]]], "1", "1"],
	["M9SD", [3], "", -5, [["expression", format[_text, "M9SD"]]], "1", "1"],
	["FN FAL", [4], "", -5, [["expression", format[_text, "FN_FAL"]]], "1", "1"],
	["M14-AIM", [5], "", -5, [["expression", format[_text, "M14_EP1"]]], "1", "1"],
	["PKM", [6], "", -5, [["expression", format[_text, "PK"]]], "1", "1"],
	["Golden Revolver", [7], "", -5, [["expression", format[_text, "revolver_gold_EP1"]]], "1", "1"],
	["AS50-TWS(ThermalScope)", [8], "", -5, [["expression", format[_text, "BAF_AS50_TWS"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

VanillaAssaultRifles1 = 
[
	["", true],
	[">>> Next >>>", [13], "#USER:VanillaAssaultRifles2", -5, [["expression", ""]], "1", "1"],
	["AK-74", [2], "", -5, [["expression", format[_text, "AK_74"]]], "1", "1"],
	["AKM", [3], "", -5, [["expression", format[_text, "AK_47_M"]]], "1", "1"],
	["AKS-74U", [4], "", -5, [["expression", format[_text, "AKS_74_U"]]], "1", "1"],
	["AKS-74 Kobra", [5], "", -5, [["expression", format[_text, "AKS_74_kobra"]]], "1", "1"],
	["AK-107 GP-25", [6], "", -5, [["expression", format[_text, "AK_107_GL_kobra"]]], "1", "1"],
	["AK-107 GP-25 PSO", [7], "", -5, [["expression", format[_text, "AK_107_GL_pso"]]], "1", "1"],
	["AK-107 Kobra", [8], "", -5, [["expression", format[_text, "AK_107_kobra"]]], "1", "1"],
	["AK-107 PSO", [9], "", -5, [["expression", format[_text, "AK_107_pso"]]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

OtherTab = 
[
	["", true],
	["infiSTAR_goes_crazy", [2],  "", -5, [["expression", format[exstr,"infiSTAR_crazy.sqf"]]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

VanillaAssaultRifles2 = 
[
	["", true],
	[">>> Next >>>", [13], "#USER:VanillaAssaultRifles3", -5, [["expression", ""]], "1", "1"],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["AKS-74UN Kobra SD", [2], "", -5, [["expression", format[_text, "AKS_74_UN_kobra"]]], "1", "1"],
	["AKS-74 PSO", [3], "", -5, [["expression", format[_text, "AKS_74_pso"]]], "1", "1"],
	["AKS", [4], "", -5, [["expression", format[_text, "AK_47_S"]]], "1", "1"],
	["AKS Gold", [5], "", -5, [["expression", format[_text, "AKS_GOLD"]]], "1", "1"],
	["FN FAL", [6], "", -5, [["expression", format[_text, "FN_FAL"]]], "1", "1"],
	["FN FAL AN/PVS-4(NightVishion Scope)", [7], "", -5, [["expression", format[_text, "FN_FAL_ANPVS4"]]], "1", "1"],
	["L85A2 RIS Holo", [8], "", -5, [["expression", format[_text, "BAF_L85A2_RIS_Holo"]]], "1", "1"],
	["Lee Enfield", [9], "", -5, [["expression", format[_text, "LeeEnfield"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

VanillaAssaultRifles3 = 
[
	["", true],
	[">>> Next >>>", [13], "#USER:VanillaAssaultRifles4", -5, [["expression", ""]], "1", "1"],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["M4A1", [2], "", -5, [["expression", format[_text, "M4A1"]]], "1", "1"], 
	["M4A1 CCO", [3], "", -5, [["expression", format[_text, "M4A1_Aim"]]], "1", "1"],
	["M4A1 CCO SD(Camo)", [4], "", -5, [["expression", format[_text, "M4A1_AIM_SD_camo"]]], "1", "1"],
	["M16A4", [5], "", -5, [["expression", format[_text, "M16A4"]]], "1", "1"],
	["M16A4 M203", [6], "", -5, [["expression", format[_text, "M16A4_GL"]]], "1", "1"],
	["M16A4 M203 ACOG", [7], "", -5, [["expression", format[_text, "M16A4_ACG_GL"]]], "1", "1"],
	["M4A1 Holo(Camo)", [8], "", -5, [["expression", format[_text, "M4A1_HWS_GL_camo"]]], "1", "1"],
	["M4A1 Holo SD(Camo)", [9], "", -5, [["expression", format[_text, "M4A1_HWS_GL_SD_Camo"]]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

VanillaAssaultRifles4 =
[
	["", true],
	[">>> Next >>>", [13], "#USER:VanillaAssaultRifles5", -5, [["expression", ""]], "1", "1"],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["M4A1 M203 RCO", [2], "", -5, [["expression", format[_text, "M4A1_RCO_GL"]]], "1", "1"],
	["M4A1 CCO (Camo)", [3], "", -5, [["expression", format[_text, "M4A1_Aim_camo"]]], "1", "1"],
	["M4A3 M203 ACOG", [4], "", -5, [["expression", format[_text, "M4A3_RCO_GL_EP1"]]], "1", "1"],
	["G36", [5], "", -5, [["expression", format[_text, "G36a"]]], "1", "1"],
	["G36(Camo)", [6], "", -5, [["expression", format[_text, "G36A_camo"]]], "1", "1"],
	["G36C", [7], "", -5, [["expression", format[_text, "G36C"]]], "1", "1"],
	["G36C(Camo)", [8], "", -5, [["expression", format[_text, "G36C_camo"]]], "1", "1"],
	["G36C-SD", [9], "", -5, [["expression", format[_text, "G36_C_SD_eotech"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

VanillaAssaultRifles5 =
[
	["", true],
	[">>> Next >>>", [13], "#USER:VanillaAssaultRifles6", -5, [["expression", ""]], "1", "1"],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["G36C-SD(Camo)", [2], "", -5, [["expression", format[_text, "G36_C_SD_camo"]]], "1", "1"],
	["G36K", [3], "", -5, [["expression", format[_text, "G36K"]]], "1", "1"],
	["G36K(Camo)", [4], "", -5, [["expression", format[_text, "G36K_camo"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

VanillaAssaultRifles6 =
[
	["", true],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["L85A2 Guns", [-1], "", -5, [["expression", ""]], "1", "0"],
	["L85A2 ACOG", [2], "", -5, [["expression", format[_text, "BAF_L85A2_RIS_ACOG"]]], "1", "1"],
	["L85A2 Holo", [3], "", -5, [["expression", format[_text, "BAF_L85A2_RIS_Holo"]]], "1", "1"],
	["L85A2 SUSAT", [4], "", -5, [["expression", format[_text, "BAF_L85A2_RIS_SUSAT"]]], "1", "1"],
	["L85A2 ACOG GL", [5], "", -5, [["expression", format[_text, "BAF_L85A2_UGL_ACOG"]]], "1", "1"],
	["L85A2 Holo GL", [6], "", -5, [["expression", format[_text, "BAF_L85A2_UGL_Holo"]]], "1", "1"],
	["L85A2 SUSAT GL", [7], "", -5, [["expression", format[_text, "BAF_L85A2_UGL_SUSAT"]]], "1", "1"],
	["L86A2 LSW", [8], "", -5, [["expression", format[_text, "BAF_L86A2_ACOG"]]], "1", "1"],
	["L85A2-AWS(Night/ThermalScope)", [9], "", -5, [["expression", format[_text, "BAF_L85A2_RIS_CWS"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

VanillaCrossBows1 = 
[
	["", true],
	["Compound Crossbow", [2], "", -5, [["expression", format[_text, "Crossbow"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

VanillaLightMachineGuns1 = 
[
	["", true],
	[">>> Next >>>", [13], "#USER:VanillaLightMachineGuns2", -5, [["expression", ""]], "1", "1"],
	["M240", [2], "", -5, [["expression", format[_text, "M240_DZ"]]], "1", "1"],
	["M249 SAW", [3], "", -5, [["expression", format[_text, "M249_DZ"]]], "1", "1"],
	["Mk 48 Mod 0", [4], "", -5, [["expression", format[_text, "Mk_48_DZ"]]], "1", "1"],
	["L7A2 GPMG", [5], "", -5, [["expression", format[_text, "BAF_L7A2_GPMG"]]], "1", "1"],
	["M60E4", [6], "", -5, [["expression", format[_text, "M60A4_EP1"]]], "1", "1"],
	["MG36", [7], "", -5, [["expression", format[_text, "MG36"]]], "1", "1"],
	["PKM", [8], "", -5, [["expression", format[_text, "PK"]]], "1", "1"],
	["PKP", [9], "", -5, [["expression", format[_text, "Pecheneg"]]], "1", "1"],
	["RPK", [10], "", -5, [["expression", format[_text, "RPK_74"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

VanillaLightMachineGuns2= 
[
	["", true],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["L110A1", [2], "", -5, [["expression", format[_text, "BAF_L110A1_Aim"]]], "1", "1"],
	["M249 SAW", [3], "", -5, [["expression", format[_text, "M249_EP1"]]], "1", "1"],
	["M240 Scope", [4], "", -5, [["expression", format[_text, "m240_scoped_EP1"]]], "1", "1"],
	["M249 Scope", [5], "", -5, [["expression", format[_text, "M249_m145_EP1"]]], "1", "1"],
	["Mk48 Mod 0(Camo)", [6], "", -5, [["expression", format[_text, "Mk_48_DES_EP1"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

VanillaMeleeWeapons = 
[
	["", true],
	["Crowbar", [2], "", -5, [["expression", format[_text, "MeleeCrowbar"]]], "1", "1"],
	["Hatchet", [3], "", -5, [["expression", format[_text, "MeleeHatchet"]]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

VanillaShotguns = 
[
	["", true],
	["Double-barreled Shotgun(Complete Shit)", [2], "", -5, [["expression", format[_text, "MR43"]]], "1", "1"], 
	["M1014", [3], "", -5, [["expression", format[_text, "M1014"]]], "1", "1"], 
	["Remington 870 (Flash-light)", [4], "", -5, [["expression", format[_text, "Remington870_lamp"]]], "1", "1"],
	["Winchester 1866", [5], "", -5, [["expression", format[_text, "Winchester1866"]]], "1", "1"], 
	["Saiga12K", [6], "", -5, [["expression", format[_text, "Saiga12K"]]], "1", "1"], 
	["MR43", [7], "", -5, [["expression", format[_text, "MR43"]]], "1", "1"], 
	 
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

VanillaSideArms = 
[
	["", true],
	[">>> Next >>>", [13], "#USER:VanillaSideArms2", -5, [["expression", ""]], "1", "1"],
	["Makarov", [2], "", -5, [["expression", format[_text, "Makarov"]]], "1", "1"],
	["Revolver", [3], "", -5, [["expression", format[_text, "revolver_EP1"]]], "1", "1"],
	["M1911", [4], "", -5, [["expression", format[_text, "Colt1911"]]], "1", "1"],
	["G17", [5], "", -5, [["expression", format[_text, "glock17_EP1"]]], "1", "1"],
	["PDW", [6], "", -5, [["expression", format[_text, "UZI_EP1"]]], "1", "1"],
	["PDW-SD", [7], "", -5, [["expression", format[_text, "UZI_SD_EP1"]]], "1", "1"],
	["M9", [8], "", -5, [["expression", format[_text, "M9"]]], "1", "1"],
	["M9SD", [9], "", -5, [["expression", format[_text, "M9SD"]]], "1", "1"],
	["Makarov SD", [10], "", -5, [["expression", format[_text, "MakarovSD"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

VanillaSideArms2 =
[
	["Colt1911", [2], "", -5, [["expression", format[_text, "Colt1911"]]], "1", "1"],
	["Sa-61", [3], "", -5, [["expression", format[_text, "Sa61_EP1"]]], "1", "1"],
	["Revolver Gold", [4], "", -5, [["expression", format[_text, "revolver_gold_EP1"]]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

VanillaSniperRifles1 = 
[
	["", true],
	[">>> Next >>>", [13], "#USER:VanillaSniperRifles2", -5, [["expression", ""]], "1", "1"],
	["AS50", [2], "", -5, [["expression", format[_text, "BAF_AS50_scoped"]]], "1", "1"],
	["CZ 550", [3], "", -5, [["expression", format[_text, "huntingrifle"]]], "1", "1"],
	["DMR", [4], "", -5, [["expression", format[_text, "DMR"]]], "1", "1"],
	["M14-AIM", [5], "", -5, [["expression", format[_text, "M14_EP1"]]], "1", "1"],
	["M24", [6], "", -5, [["expression", format[_text, "M24"]]], "1", "1"],
	["M40A3", [7], "", -5, [["expression", format[_text, "M40A3"]]], "1", "1"],
	["M107(The Sound of Murder)", [8], "", -5, [["expression", format[_text, "m107_DZ"]]], "1", "1"],
	["SVD Camo", [9], "", -5, [["expression", format[_text, "SVD_CAMO"]]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

VanillaSniperRifles2 =
[
	["", true],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["AS50 TWS(Thermal Scope)", [2], "", -5, [["expression", format[_text, "BAF_AS50_TWS"]]], "1", "1"],
	["KSVK", [3], "", -5, [["expression", format[_text, "KSVK"]]], "1", "1"],
	["Mk12 SPR", [4], "", -5, [["expression", format[_text, "M4SPR"]]], "1", "1"],
	["L115A3 LRR", [5], "", -5, [["expression", format[_text, "BAF_LRR_scoped_W"]]], "1", "1"],
	["L115A3 LRR(Desert Camo)*", [6], "", -5, [["expression", format[_text, "BAF_LRR_scoped"]]], "1", "1"],
	["M24(Desert Camo)", [7], "", -5, [["expression", format[_text, "M24_des_EP1"]]], "1", "1"],
	["SVD", [8], "", -5, [["expression", format[_text, "SVD"]]], "1", "1"],
	["SVD(Desert Camo)", [9], "", -5, [["expression", format[_text, "SVD_des_EP1"]]], "1", "1"],
	["SVD NSPU", [10], "", -5, [["expression", format[_text, "SVD_NSPU_EP1"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

VanillaSubMachineGuns = 
[
	["", true],
	["Bizon PP-19 SD", [2], "", -5, [["expression", format[_text, "bizon_silenced"]]], "1", "1"],
	["MP5A5", [3], "", -5, [["expression", format[_text, "MP5A5"]]], "1", "1"],
	["MP5SD6", [4], "", -5, [["expression", format[_text, "MP5SD"]]], "1", "1"],
	["Bizon PP-19", [5], "", -5, [["expression", format[_text, "bizon"]]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

VanillaFlaresSmoke = 
[
	["", true],
	[">>> Next >>>", [13], "#USER:VanillaFlaresSmoke2", -5, [["expression", ""]], "1", "1"],
	["Explosives", [-1], "", -5, [["expression", ""]], "1", "0"],
	["M67 Frag Grenade", [2], "", -5, [["expression", "player addMagazine 'HandGrenade_West';"]], "1", "1"],
	["RGO Frag Grenade", [3], "", -5, [["expression", "player addMagazine 'HandGrenade_East';"]], "1", "1"],
//	["RGO Frag Grenade", [3], "", -5, [["expression", "player addMagazine 'HandGrenade';"]], "1", "1"],
	["M203 HE", [4], "", -5, [["expression", "player addMagazine '1Rnd_HE_M203';"]], "1", "1"],
	["GP-25 HE", [5], "", -5, [["expression", "player addMagazine '1Rnd_HE_GP25';"]], "1", "1"],
	["Satchel Charges", [6], "", -5, [["expression", "player addMagazine 'PipeBomb';"]], "1", "1"],
	["IED (Shit)", [7], "", -5, [["expression", "player addMagazine 'BAF_ied_v1';"]], "1", "1"],
	["Mine", [8], "", -5, [["expression", "player addMagazine 'Mine';"]], "1", "1"],
	["MineE", [9], "", -5, [["expression", "player addMagazine 'MineE';"]], "1", "1"],

	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

VanillaFlaresSmoke2 =
[
	["", true],
	[">>> Next >>>", [13], "#USER:VanillaFlaresSmoke3", -5, [["expression", ""]], "1", "1"],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["Smoke", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Smoke Grenade", [2], "", -5, [["expression", "player addMagazine 'SmokeShell';"]], "1", "1"],
	["Smoke Grenade(Red)", [3], "", -5, [["expression", "player addMagazine 'SmokeShellRed';"]], "1", "1"],
	["Smoke Grenade(Green)", [4], "", -5, [["expression", "player addMagazine 'SmokeShellGreen';"]], "1", "1"],
	["Smoke Grenade (Yellow)", [5], "", -5, [["expression", "player addMagazine 'SmokeShellYellow';"]], "1", "1"],
	["Smoke Grenade (Orange)", [6], "", -5, [["expression", "player addMagazine 'SmokeShellOrange';"]], "1", "1"],
	["Smoke Grenade (Purple)", [7], "", -5, [["expression", "player addMagazine 'SmokeShellPurple';"]], "1", "1"],
	["Smoke Grenade (Blue)", [8], "", -5, [["expression", "player addMagazine 'SmokeShellBlue';"]], "1", "1"],
	["M203 Smoke", [-1], "", -5, [["expression", ""]], "1", "0"],
	["M203 Smoke", [2], "", -5, [["expression", "player addMagazine '1Rnd_Smoke_M203';"]], "1", "1"],
	["M203 Smoke(Red)", [3], "", -5, [["expression", "player addMagazine '1Rnd_SmokeRed_M203';"]], "1", "1"],
	["M203 Smoke(Green)", [4], "", -5, [["expression", "player addMagazine '1Rnd_SmokeGreen_M203';"]], "1", "1"],
	["M203 Smoke(Yellow)", [5], "", -5, [["expression", "player addMagazine '1Rnd_SmokeYellow_M203';"]], "1", "1"],
	["GP-25 Smoke", [-1], "", -5, [["expression", ""]], "1", "0"],
	["GP-25 Smoke", [6], "", -5, [["expression", "player addMagazine '1Rnd_Smoke_GP25';"]], "1", "1"],
	["GP-25 Smoke(Red)", [7], "", -5, [["expression", "player addMagazine '1Rnd_SmokeRed_GP25';"]], "1", "1"],
	["GP-25 Smoke(Green)", [8], "", -5, [["expression", "player addMagazine '1Rnd_SmokeGreen_GP25';"]], "1", "1"],
	["GP-25 Smoke(Yellow)", [9], "", -5, [["expression", "player addMagazine '1Rnd_SmokeYellow_GP25';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

VanillaFlaresSmoke3 =
[
	["", true],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["Flares + ChemLights", [-1], "", -5, [["expression", ""]], "1", "0"],
	["ChemLight Green", [2], "", -5, [["expression", "player addMagazine 'HandChemGreen';"]], "1", "1"],
	["ChemLight Red", [3], "", -5, [["expression", "player addMagazine 'HandChemRed';"]], "1", "1"],
	["ChemLight Blue", [4], "", -5, [["expression", "player addMagazine 'HandChemBlue';"]], "1", "1"],
	["RoadFlare", [5], "", -5, [["expression", "player addMagazine 'HandRoadFlare';"]], "1", "1"],
	["M203 Flare", [-1], "", -5, [["expression", ""]], "1", "0"],
	["M203 Flare(White)", [2], "", -5, [["expression", "player addMagazine 'FlareWhite_M203';"]], "1", "1"],
	["M203 Flare(Green)", [3], "", -5, [["expression", "player addMagazine 'FlareGreen_M203';"]], "1", "1"],
	["M203 Flare(Red)", [4], "", -5, [["expression", "player addMagazine 'FlareRed_M203';"]], "1", "1"],
	["M203 Flare(Yellow)", [5], "", -5, [["expression", "player addMagazine 'FlareYellow_M203';"]], "1", "1"],
	["GP-25 Flare", [-1], "", -5, [["expression", ""]], "1", "0"],
	["GP-25 Flare(White)", [2], "", -5, [["expression", "player addMagazine 'FlareWhite_GP25';"]], "1", "1"],
	["GP-25 Flare(Green)", [3], "", -5, [["expression", "player addMagazine 'FlareGreen_GP25';"]], "1", "1"],
	["GP-25 Flare(Red)", [4], "", -5, [["expression", "player addMagazine 'FlareRed_GP25';"]], "1", "1"],
	["GP-25 Flare(Yellow)", [5], "", -5, [["expression", "player addMagazine 'FlareYellow_GP25';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

ChocolateAssaultRifles1 =
[
	["", true],
	[">>> Next >>>", [13], "#USER:ChocolateAssaultRifles2", -5, [["expression", ""]], "1", "1"],
	["Assault Rifles", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Sa58P", [2], "", -5, [["expression", "player addMagazine 'Sa58P_EP1';"]], "1", "1"],
	["Sa58V CCO", [3], "", -5, [["expression", "player addMagazine 'Sa58V_CCO_EP1';"]], "1", "1"],
	["Sa58V", [4], "", -5, [["expression", "player addMagazine 'Sa58V_EP1';"]], "1", "1"],
	["Sa58V RCO", [5], "", -5, [["expression", "player addMagazine 'Sa58V_RCO_EP1';"]], "1", "1"],
	["M8 Compact", [6], "", -5, [["expression", "player addMagazine 'm8_compact';"]], "1", "1"],
	["M8 SharpShooter", [7], "", -5, [["expression", "player addMagazine 'm8_sharpshooter';"]], "1", "1"],
	["M8 Holo-SD", [8], "", -5, [["expression", "player addMagazine 'm8_holo_sd';"]], "1", "1"],
	["M8 Carbine", [9], "", -5, [["expression", "player addMagazine 'm8_carbine';"]], "1", "1"],
	["M16A2", [10], "", -5, [["expression", "player addMagazine 'M16A2';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

ChocolateAssaultRifles2 =
[
	["", true],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["Assault Rifles Page 2", [-1], "", -5, [["expression", ""]], "1", "0"],
	["M16A2GL", [2], "", -5, [["expression", "player addMagazine 'M16A2GL';"]], "1", "1"],
	["M16A4 ACG", [3], "", -5, [["expression", "player addMagazine 'M16A4_ACG';"]], "1", "1"],
	["M4A1", [4], "", -5, [["expression", "player addMagazine 'M4A1';"]], "1", "1"],
	["M4A3 CCO", [5], "", -5, [["expression", "player addMagazine 'M4A3_CCO_EP1';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

ChocolateSniperRifles1 =
[
	["", true],
	["Sniper Rifles Page 1", [-1], "", -5, [["expression", ""]], "1", "0"],
	["SCAR-H-LNG-Sniper-SD(MK17Sniper)", [2], "", -5, [["expression", "player addMagazine 'SCAR_H_LNG_Sniper_SD';"]], "1", "1"],
	["VSS vintorez", [3], "", -5, [["expression", "player addMagazine 'VSS_vintorez';"]], "1", "1"],
	["M4Spr", [4], "", -5, [["expression", "player addMagazine 'M4SPR';"]], "1", "1"], 
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

ChocolateLightMachineGuns1 =
[
	["", true],
	["Light Machine Guns", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Pecheneg", [2], "", -5, [["expression", "player addMagazine 'Pecheneg_DZ';"]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

vehicleWEPS_star = 
[
	["", true],
	["YakB", [2], "", -5, [["expression", "vehicle player addweapon 'YakB';vehicle player addMagazine '1470Rnd_127x108_YakB';vehicle player addMagazine '1470Rnd_127x108_YakB';"]], "1", "1"],
	["Gau8", [3], "", -5, [["expression", "vehicle player addweapon 'Gau8';vehicle player addMagazine '1350Rnd_30mmAP_A10';vehicle player addMagazine '1350Rnd_30mmAP_A10';"]], "1", "1"],
	["GAU12", [4], "", -5, [["expression", "vehicle player addweapon 'GAU12';vehicle player addMagazine '300Rnd_25mm_GAU12';vehicle player addMagazine '300Rnd_25mm_GAU12';"]], "1", "1"],
	["M230", [5], "", -5, [["expression", "vehicle player addweapon 'M230';vehicle player addMagazine '1200Rnd_30x113mm_M789_HEDP';vehicle player addMagazine '1200Rnd_30x113mm_M789_HEDP';"]], "1", "1"],
	["Go Crazy", [5], "", -5, [["expression", "call infiSTAR_goes_crazy;"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

infiSTAR_goes_crazy =
{
	_SexyGun = ['Gau8','GAU12','AZP85','M197','YakB'];
	_SexyAmmo = ['1350Rnd_30mmAP_A10','1350Rnd_30mmAP_A10','300Rnd_25mm_GAU12','300Rnd_25mm_GAU12','2000Rnd_23mm_AZP85','2000Rnd_23mm_AZP85','750Rnd_M197_AH1','750Rnd_M197_AH1','1470Rnd_127x108_YakB','1470Rnd_127x108_YakB'];

	{vehicle player addweapon _x;} forEach _SexyGun;
	{vehicle player addMagazine _x;} forEach _SexyAmmo;
	
	/*
	_LVehgun = ['AZP85','GAU8','GAU12','M197','M230','ZiS_S_53','2A46M','AGS30','D30','D81','M252','M256'];
	_LVehammo = ['2000Rnd_23mm_AZP85','1350Rnd_30mmAP_A10','300Rnd_25mm_GAU12','750Rnd_M197_AH1','1200Rnd_30x113mm_M789_HEDP',
	'33Rnd_85mmHE','22Rnd_125mmHE_T72','29Rnd_30mm_AGS30','30Rnd_122mmHE_D30','22Rnd_125mmHE_T72','ARTY_8rnd_81mmHE_M252', 
	'20Rnd_120mmHE_M1A2'];

	{vehicle player addweapon _x;} forEach _LVehgun;
	{vehicle player addMagazine _x;} forEach _LVehammo;
	*/
};