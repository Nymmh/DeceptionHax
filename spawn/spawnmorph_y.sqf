//   Credit to the original creator, forgot your name though, so you know who you are.


//   * Marks a banned skin. 
//   Namlsk/Origins/Takistan/Chernarus/Animals/Zombies
//   Takistan Skins have not been working for me in the server I've tried.

player_zombieCheck = {};
morphtoplayers = 
[
    ["",true],
    ["General", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Invisible", [2], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Survivor1_DZ'] spawn player_humanityMorph;"]], "1", "1"],
    ["Survivor Girl Skin", [3], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'SurvivorW2_DZ'] spawn player_humanityMorph;"]], "1", "1"],
    ["Survivor Skin", [4], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Survivor2_DZ'] spawn player_humanityMorph;"]], "1", "1"],
    ["Hero Skin", [5], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Survivor3_DZ'] spawn player_humanityMorph;"]], "1", "1"],
    ["Camo Skin", [6], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Camo1_DZ'] spawn player_humanityMorph;"]], "1", "1"],
    ["Ghillie Skin", [7], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Sniper1_DZ'] spawn player_humanityMorph;"]], "1", "1"],
    ["Soldier Skin *", [8], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Soldier1_DZ'] spawn player_humanityMorph;"]], "1", "1"],
    ["", [-1], "", -5, [["expression", ""]], "1", "0"],
    ["Next", [11], "#USER:morphtoorigins", -5, [["expression", ""]], "1", "1"],
    ["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

morphtoorigins = 
[
    ["",true],
    ["DayZ Origins", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Eco Stalker", [2], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'gsc_eco_stalker_head_camo1'] spawn player_humanityMorph;"]], "1", "1"],
	["Eco Stalker 2", [3], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'gsc_eco_stalker_head_duty'] spawn player_humanityMorph;"]], "1", "1"],
   	["Eco Stalker 3", [4], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'gsc_eco_stalker_head_fred'] spawn player_humanityMorph;"]], "1", "1"],
    ["stalker mask camo", [5], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'gsc_eco_stalker_mask_camo'] spawn player_humanityMorph;"]], "1", "1"],
    ["Fred", [6], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'gsc_eco_stalker_mask_fred'] spawn player_humanityMorph;"]], "1", "1"],
    ["Hooded Girl", [7], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'gsc_cloth_loner_head'] spawn player_humanityMorph;"]], "1", "1"],
	["Stalker 2", [8], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'gsc_military_head_grey'] spawn player_humanityMorph;"]], "1", "1"],
	["Green Man -mask-", [9], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'gsc_military_helmet_wdl'] spawn player_humanityMorph;"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
    ["Back", [12], "", -4, [["expression", ""]], "1", "1"],    
    ["Next", [11], "#USER:morphtotaki", -5, [["expression", ""]], "1", "1"],
    ["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

morphtotaki = 
[
    ["",true],
    ["Takistan", [-1], "", -5, [["expression", ""]], "1", "0"],
    ["Team Leader ~BLUFOR", [2], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'US_Soldier_TL_EP1'] spawn player_humanityMorph;"]], "1", "1"],
	["Col. Aziz ~OPFOR, [3]", "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'TK_Aziz_EP1'] spawn player_humanityMorph;"]], "1", "1"],
   	["Takistani city woman", [4], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'TK_CIV_Woman01_EP1'] spawn player_humanityMorph;"]], "1", "1"],
    ["European Woman, [5]", "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'CIV_EuroWoman01_EP1'] spawn player_humanityMorph;"]], "1", "1"],
    ["European Woman", [6], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'CIV_EuroWoman02_EP1'] spawn player_humanityMorph;"]], "1", "1"],
    ["Functionary (brown suit)", [7], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Functionay2_EP1'] spawn player_humanityMorph;"]], "1", "1"],
	["Rita Ensler", [8], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Rita_Ensler_EP1'] spawn player_humanityMorph;"]], "1", "1"],
	["FAC Operator", [9], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'FR_AC'] spawn player_humanityMorph;"]], "1", "1"],
	["Hooker", [10], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Hooker1'] spawn player_humanityMorph;"]], "1", "1"],
	["Farm Wife", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Farmwife4'] spawn player_humanityMorph;"]], "1", "1"],
    ["", [-1], "", -5, [["expression", ""]], "1", "0"],
    ["Back", [12], "", -4, [["expression", ""]], "1", "1"],    
    ["Next", [11], "#USER:morphtonam", -5, [["expression", ""]], "1", "1"],
    ["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

morphtonam = 
[
    ["",true],
    ["Namalsk", [-1], "", -5, [["expression", ""]], "1", "0"],
    ["Bloodsucker [zombie]", [1], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'ns_bloodsucker'] spawn player_humanityMorph;"]], "1", "1"],
    ["NAC Soldier [Zombie]", [2], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'nac_soldier_1'] spawn player_humanityMorph;"]], "1", "1"],
    ["Tamika", [3], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'ns_tamika'] spawn player_humanityMorph;"]], "1", "1"],
    ["Peter", [4], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'ns_peter'] spawn player_humanityMorph;"]], "1", "1"],
    ["Max", [5], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'ns_max'] spawn player_humanityMorph;"]], "1", "1"],
    ["Winter Camo Skin", [6], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'CamoWinter_DZN'] spawn player_humanityMorph;"]], "1", "1"],
    ["Back", [12], "", -4, [["expression", ""]], "1", "1"],    
    ["Next", [11], "#USER:morphtoanimals", -5, [["expression", ""]], "1", "1"],
    ["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

morphtoanimals = 
[
    ["",true],
    ["", [-1], "", -5, [["expression", ""]], "1", "0"],
    ["Chicken", [2], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Hen'] spawn player_humanityMorph;"]], "1", "1"],
    ["Cow (Black & White)", [3], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Cow04'] spawn player_humanityMorph;"]], "1", "1"],
    ["Cow (Black)", [4], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Cow03'] spawn player_humanityMorph;"]], "1", "1"],
    ["Cow (Brown & White)", [5], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Cow01'] spawn player_humanityMorph;"]], "1", "1"],
    ["Cow (Brown)", [6], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Cow02'] spawn player_humanityMorph;"]], "1", "1"],
    ["Dog 01", [7], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Pastor'] spawn player_humanityMorph;"]], "1", "1"],
    ["Dog 02", [8], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Fin'] spawn player_humanityMorph;"]], "1", "1"],
    ["Goat", [9], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Goat'] spawn player_humanityMorph;"]], "1", "1"],
    ["Rabbit", [10], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Rabbit'] spawn player_humanityMorph;"]], "1", "1"],
    ["Sheep", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Sheep'] spawn player_humanityMorph;"]], "1", "1"],
    ["Wild Boar", [12], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'WildBoar'] spawn player_humanityMorph;"]], "1", "1"],
    ["", [-1], "", -5, [["expression", ""]], "1", "0"],
    ["Next", [11], "#USER:morphtozombies", -5, [["expression", ""]], "1", "1"],
    ["Back", [12], "", -4, [["expression", ""]], "1", "1"],    
    ["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

morphtozombies = 
[
    ["",true],
    ["", [-1], "", -5, [["expression", ""]], "1", "0"],
    ["Hunter", [2], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_hunter'] spawn player_humanityMorph;"]], "1", "1"],
    ["Policeman", [3], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_policeman'] spawn player_humanityMorph;"]], "1", "1"],
    ["Priest", [4], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_priest'] spawn player_humanityMorph;"]], "1", "1"],
    ["Soldier", [5], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_soldier'] spawn player_humanityMorph;"]], "1", "1"],
    ["Soldier Heavy", [6], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_soldier_heavy'] spawn player_humanityMorph;"]], "1", "1"],
    ["Soldier Pilot", [7], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_soldier_pilot'] spawn player_humanityMorph;"]], "1", "1"],
    ["Teacher", [8], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_teacher'] spawn player_humanityMorph;"]], "1", "1"],
    ["Villager (Blue check)", [9], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_villager1'] spawn player_humanityMorph;"]], "1", "1"],
    ["Worker (Blue)", [10], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_worker3'] spawn player_humanityMorph;"]], "1", "1"],
    ["", [-1], "", -5, [["expression", ""]], "1", "0"],
    ["Back", [12], "", -4, [["expression", ""]], "1", "1"],    
    ["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:morphtoplayers";