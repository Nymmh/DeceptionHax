thfile = thfile + ["               ==== MENUS ====","","0","1","0","0",[]];
thfile = thfile + ["            == MAIN","BACK","0","0","1","0",[]];
thfile = thfile + ["            == Specific","Specific","0","0","1","0",[]];
thfile = thfile + ["            == ALL/MISC","ALL_MISC","0","0","1","0",[]];
if !(!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {
thfile = thfile + ["            == Cash Menu","cash","0","0","1","0",[]];
};
thfile = thfile + ["            == Massive Destruction","MassiveD","0","0","1","0",[]];
thfile = thfile + ["            == Visual Filter","VFilter","0","0","1","0",[]];
thfile = thfile + ["            == Morphing Menu","Morphy","0","0","1","0",[]];
thfile = thfile + ["            == Air","Vehicles","0","0","1","0",[]];
thfile = thfile + ["            == Land","LandVehicles","0","0","1","0",[]];
thfile = thfile + ["            == Ship","ShipVehicles","0","0","1","0",[]];
thfile = thfile + ["            == Object","Objects","0","0","1","0",[]];
thfile = thfile + ["            == Weapon","Weaponz","0","0","1","0",[]];
thfile = thfile + ["            == Spawn Misc (Look In!)","Spwn_misc","0","0","1","0",[]];
thfile = thfile + ["            == Show PLR Details ==",format[_execx, "menu\menulist\show_plr_details.sqf"],"1","0","0","0",[]];
thfile = thfile + ["============================================","","0","1","0","0",[]];

thfile = thfile + ["             Teleport Select To Me",format[_execx, "target\tpother.sqf"],"0","0","0","1",[]];
thfile = thfile + ["             Teleport To Selected",format[_execx, "target\tp_to_other.sqf"],"0","0","0","1",[]];
thfile = thfile + ["             Spectate Selected",format[_execx, "target\targetspec.sqf"],"0","0","0","1",[]];