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
thfile = thfile + ["                SPAWN MISC","","0","1","0","0",[]];
thfile = thfile + ["------- Troll Vehicle -------","","0","1","0","0",[]];
thfile = thfile + ["    Battleship Tank",format[_execx, "spawn\battleship_tank.sqf"],"0","0","0","0",[]];
thfile = thfile + ["    Monster Tank",format[_execx, "spawn\monster_tank.sqf"],"0","0","0","0",[]];
thfile = thfile + ["    Monster Tank Remove",format[_execx, "spawn\monster_tank_remove.sqf"],"0","0","0","0",[]];
thfile = thfile + ["------- A.I. -------","","0","1","0","0",[]];
if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {
thfile = thfile + ["    Zombie Attack A.I. (in your group)",format[_execx, "spawn\bot.sqf"],"0","0","0","0",[]];

thfile = thfile + ["------- AWESOME -------","","0","1","0","0",[]];
thfile = thfile + ["    Thunderdome",format[_execx, "spawn\thunderdome.sqf"],"0","0","0","0",[]];

}else{
thfile = thfile + ["    A.I. Bot (in your group)",format[_execx, "spawn\bot.sqf"],"0","0","0","0",[]];
thfile = thfile + ["    A.I. Squad (own group - your side)",format[_execx, "spawn\spawn_ai_grp.sqf"],"0","0","0","0",[]];

thfile = thfile + ["------- AWESOME -------","","0","1","0","0",[]];
thfile = thfile + ["    Nice Advertising On The Map",format[_execx, "spawn\advertising_bob.sqf"],"0","0","0","0",[]];
thfile = thfile + ["    KSK Base by Bob*AWESOME",format[_execx, "spawn\ksk_bob.sqf"],"0","0","0","0",[]];
thfile = thfile + ["    Cod4 Battledome",format[_execx, "spawn\battledome_cod4.sqf"],"0","0","0","0",[]];
thfile = thfile + ["    Admin Base *Chernarus",format[_execx, "spawn\admin_base.sqf"],"0","0","0","0",[]];
thfile = thfile + ["    Battledome Base *Chernarus",format[_execx, "spawn\battledome_base.sqf"],"0","0","0","0",[]];
};
