thfile = thfile + ["            +MAIN","BACK","0","0","1","0",[]];
thfile = thfile + ["            +Specific","Specific","0","0","1","0",[]];
thfile = thfile + ["            +ALL/MISC","ALL_MISC","0","0","1","0",[]];
if !(!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {
thfile = thfile + ["            +Cash Menu","cash","0","0","1","0",[]];
};
thfile = thfile + ["            +Massive Destruction","MassiveD","0","0","1","0",[]];
thfile = thfile + ["            +Visual Filter","VFilter","0","0","1","0",[]];
thfile = thfile + ["            +Morphing Menu","Morphy","0","0","1","0",[]];
thfile = thfile + ["            +Air","Vehicles","0","0","1","0",[]];
thfile = thfile + ["            +Land","LandVehicles","0","0","1","0",[]];
thfile = thfile + ["            +Ship","ShipVehicles","0","0","1","0",[]];
thfile = thfile + ["            +Object","Objects","0","0","1","0",[]];
thfile = thfile + ["            +Weapon","Weaponz","0","0","1","0",[]];
thfile = thfile + ["            +Spawn Misc (Look In!)","Spwn_misc","0","0","1","0",[]];
thfile = thfile + ["--------------------------------------------------------------------------------","","0","1","0","0",[]];
thfile = thfile + ["                  Morph MENU","","0","1","0","0",[]];

if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {

thfile = thfile + ["------- Reactivate Godmode And Similar After Morph","","0","1","0","0",[]];
thfile = thfile + ["   Female Survivor",format[_execx,"SurvivorW2_DZ"],"0","0","0","0",[]];
thfile = thfile + ["   Female Bandit",format[_execx,"BanditW1_DZ"],"0","0","0","0",[]];
thfile = thfile + ["   Male Survivor",format[_execx,"Survivor2_DZ"],"0","0","0","0",[]];
thfile = thfile + ["   Male Bandit",format[_execx,"Bandit1_DZ"],"0","0","0","0",[]];
thfile = thfile + ["   Male Hero",format[_execx,"Survivor3_DZ"],"0","0","0","0",[]];
thfile = thfile + ["   Camo",format[_execx,"Camo1_DZ"],"0","0","0","0",[]];
thfile = thfile + ["   Ghillie",format[_execx,"Sniper1_DZ"],"0","0","0","0",[]];
thfile = thfile + ["   Rocket",format[_execx,"Rocket_DZ"],"0","0","0","0",[]];
thfile = thfile + ["   Soldier",format[_execx,"Soldier1_DZ"],"0","0","0","0",[]];
thfile = thfile + ["   Invisible Skin",format[_execx,"Survivor1_DZ"],"0","0","0","0",[]];

thfile = thfile + ["------- More -------","","0","1","0","0",[]];
thfile = thfile + ["   Ins_Soldier_1",format[_execx,"Ins_Soldier_1"],"0","0","0","0",[]];
thfile = thfile + ["   CDF_Soldier",format[_execx,"CDF_Soldier"],"0","0","0","0",[]];
thfile = thfile + ["   CDF_Soldier_Militia",format[_execx,"CDF_Soldier_Militia"],"0","0","0","0",[]];
thfile = thfile + ["   CDF_Soldier_AR",format[_execx,"CDF_Soldier_AR"],"0","0","0","0",[]];
thfile = thfile + ["   Citizen3",format[_execx,"Citizen3"],"0","0","0","0",[]];
thfile = thfile + ["   Worker1",format[_execx,"Worker1"],"0","0","0","0",[]];
thfile = thfile + ["   Villager1",format[_execx,"Villager1"],"0","0","0","0",[]];
thfile = thfile + ["   TK_CIV_Takistani01_EP1",format[_execx,"TK_CIV_Takistani01_EP1"],"0","0","0","0",[]];
thfile = thfile + ["   TK_CIV_Takistani05_EP1",format[_execx,"TK_CIV_Takistani05_EP1"],"0","0","0","0",[]];
thfile = thfile + ["   TK_INS_Soldier_EP1",format[_execx,"TK_INS_Soldier_EP1"],"0","0","0","0",[]];
thfile = thfile + ["   CZ_Soldier_DES_EP1",format[_execx,"CZ_Soldier_DES_EP1"],"0","0","0","0",[]];
thfile = thfile + ["   US_Soldier_EP1",format[_execx,"US_Soldier_EP1"],"0","0","0","0",[]];
thfile = thfile + ["   BAF_Soldier_MTP",format[_execx,"BAF_Soldier_MTP"],"0","0","0","0",[]];
thfile = thfile + ["   BAF_Soldier_DDPM",format[_execx,"BAF_Soldier_DDPM"],"0","0","0","0",[]];
thfile = thfile + ["   BAF_Soldier_L_MTP",format[_execx,"BAF_Soldier_L_MTP"],"0","0","0","0",[]];
thfile = thfile + ["   BAF_Soldier_L_DDPM",format[_execx,"BAF_Soldier_L_DDPM"],"0","0","0","0",[]];
thfile = thfile + ["   BAF_Soldier_Sniper_MTP",format[_execx,"BAF_Soldier_Sniper_MTP"],"0","0","0","0",[]];
thfile = thfile + ["   BAF_Soldier_SniperH_MTP",format[_execx,"BAF_Soldier_SniperH_MTP"],"0","0","0","0",[]];
thfile = thfile + ["   BAF_Soldier_SniperN_MTP",format[_execx,"BAF_Soldier_SniperN_MTP"],"0","0","0","0",[]];
thfile = thfile + ["   Soldier_Crew_PMC",format[_execx,"Soldier_Crew_PMC"],"0","0","0","0",[]];
thfile = thfile + ["   USMC_Soldier_Officer",format[_execx,"USMC_Soldier_Officer"],"0","0","0","0",[]];
thfile = thfile + ["   US_Soldier_Officer_EP1",format[_execx,"US_Soldier_Officer_EP1"],"0","0","0","0",[]];
thfile = thfile + ["   DZ_Pastor",format[_execx,"DZ_Pastor"],"0","0","0","0",[]];
thfile = thfile + ["   CDF_Commander",format[_execx,"CDF_Commander"],"0","0","0","0",[]];
thfile = thfile + ["   GER_Soldier_Medic",format[_execx,"GER_Soldier_Medic"],"0","0","0","0",[]];


thfile = thfile + ["------- Namalsk -------","","0","1","0","0",[]];
thfile = thfile + ["   Bloodsucker",format[_execx,"ns_bloodsucker"],"0","0","0","0",[]];
thfile = thfile + ["   White Ghilli",format[_execx,"Sniper1W_DZN"],"0","0","0","0",[]];
thfile = thfile + ["   WarmClothing Yellow",format[_execx,"CamoWinter_DZN"],"0","0","0","0",[]];
thfile = thfile + ["   WarmClothing White",format[_execx,"CamoWinterW_DZN"],"0","0","0","0",[]];

thfile = thfile + ["------- Animals -------","","0","1","0","0",[]];
thfile = thfile + ["   Cow04",format[_execx,"Cow04"],"0","0","0","0",[]];
thfile = thfile + ["   Cow01",format[_execx,"Cow01"],"0","0","0","0",[]];
thfile = thfile + ["   WildBoar",format[_execx,"WildBoar"],"0","0","0","0",[]];
thfile = thfile + ["   Hen",format[_execx,"Hen"],"0","0","0","0",[]];
thfile = thfile + ["   Goat",format[_execx,"Goat"],"0","0","0","0",[]];
thfile = thfile + ["   Fin",format[_execx,"Fin"],"0","0","0","0",[]];
thfile = thfile + ["   Pastor",format[_execx,"Pastor"],"0","0","0","0",[]];
thfile = thfile + ["   Rabbit",format[_execx,"Rabbit"],"0","0","0","0",[]];
thfile = thfile + ["   Sheep",format[_execx,"Sheep"],"0","0","0","0",[]];

thfile = thfile + ["------- Morphing Might Change Your Side","","0","1","0","0",[]];
thfile = thfile + ["------- Reactivate Godmode And Similar After Morph","","0","1","0","0",[]];
thfile = thfile + ["  GUE_Soldier_Scout",format[_execx,"GUE_Soldier_Scout"],"0","0","0","1",[]];
thfile = thfile + ["  GUE_Soldier_1",format[_execx,"GUE_Soldier_1"],"0","0","0","1",[]];
thfile = thfile + ["  GER_Soldier_EP1",format[_execx,"GER_Soldier_EP1"],"0","0","0","1",[]];
thfile = thfile + ["  CDF_Soldier",format[_execx,"CDF_Soldier"],"0","0","0","1",[]];
thfile = thfile + ["  USMC_Soldier_Pilot",format[_execx,"USMC_Soldier_Pilot"],"0","0","0","1",[]];
thfile = thfile + ["  USMC_SoldierS_Sniper",format[_execx,"USMC_SoldierS_Sniper"],"0","0","0","1",[]];
thfile = thfile + ["  US_Delta_Force_EP1",format[_execx,"US_Delta_Force_EP1"],"0","0","0","1",[]];
thfile = thfile + ["  US_Delta_Force_Assault_EP1",format[_execx,"US_Delta_Force_Assault_EP1"],"0","0","0","1",[]];
thfile = thfile + ["  CZ_Special_Forces_TL_DES_EP1",format[_execx,"CZ_Special_Forces_TL_DES_EP1"],"0","0","0","1",[]];
thfile = thfile + ["  Doctor",format[_execx,"Doctor"],"0","0","0","1",[]];
thfile = thfile + ["  Priest",format[_execx,"Priest"],"0","0","0","1",[]];
thfile = thfile + ["  Citizen4",format[_execx,"Citizen4"],"0","0","0","1",[]];
thfile = thfile + ["  Functionary1",format[_execx,"Functionary1"],"0","0","0","1",[]];
thfile = thfile + ["------- Girls can't handle Guns -------","","0","1","0","0",[]];
thfile = thfile + ["  Farmwife1",format[_execx,"Farmwife1"],"0","0","0","1",[]];
thfile = thfile + ["  Hooker1",format[_execx,"Hooker1"],"0","0","0","1",[]];
thfile = thfile + ["  TK_CIV_Woman01_EP1",format[_execx,"TK_CIV_Woman01_EP1"],"0","0","0","1",[]];

};