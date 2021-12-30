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
thfile = thfile + ["             MASSIVE DESTRUCTION","","0","1","0","0",[]];
thfile = thfile + ["  Explosions Cross",format[_execx, "all_misc\explosions_cross.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Think about this befor you do it",format[_execx, "all_misc\explosions_cross_Massive.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Big Bombardement",format[_execx, "all_misc\bombardement.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Arti",format[_execx, "all_misc\arti.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  A10 Kamikaze",format[_execx, "all_misc\a10_kamikaze.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Explode Fucking Everything",format[_execx, "all_misc\explode_all.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Explode Player's",format[_execx, "all_misc\explode_Players.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Explode Helli's",format[_execx, "all_misc\explode_Helli.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Explode Cars",format[_execx, "all_misc\explode_Cars.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Explode Motorcycle",format[_execx, "all_misc\explode_Motorcycle.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Explode Tank",format[_execx, "all_misc\explode_Tank.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Explode Ships",format[_execx, "all_misc\explode_Ship.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Explode Weapons",format[_execx, "all_misc\explode_Weapons.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Build Car Tower",format[_execx, "all_misc\car_tower.sqf"],"0","0","0","0",[]];

thfile = thfile + ["","","0","1","0","0",[]];

thfile = thfile + ["  Fusion Bomb (click target on map)",format[_execx, "all_misc\nukes\nuke.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Nuke (on your location)",format[_execx, "all_misc\nukes\nuke2.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Nuke Cherno",format[_execx, "all_misc\nukes\ChernoNuke.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Nuke Elektro",format[_execx, "all_misc\nukes\ElektroNuke.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Nuke NWAF",format[_execx, "all_misc\nukes\NWAFNuke.sqf"],"0","0","0","0",[]];