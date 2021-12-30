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
thfile = thfile + ["             Teleport Select To Me",format[_execx, "target\tpother.sqf"],"0","0","0","1",[]];
thfile = thfile + ["             Teleport To Selected",format[_execx, "target\tp_to_other.sqf"],"0","0","0","1",[]];
thfile = thfile + ["             Spectate Selected",format[_execx, "target\targetspec.sqf"],"0","0","0","1",[]];
thfile = thfile + ["             Show PLR Details",format[_execx, "menu\menulist\show_plr_details.sqf"],"1","0","0","0",[]];
thfile = thfile + ["--------------------------------------------------------------------------------","","0","1","0","0",[]];
thfile = thfile + ["                  MAIN MENU","","0","1","0","0",[]];

if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {

thfile = thfile + ["------- Markers -------","","0","1","0","0",[]];
thfile = thfile + ["  Icons",format[_execx, "markers\icons.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Group Icons (ESP + Player Markers)",format[_execx, "markers\groupicons.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Vehicle Markers",format[_execx, "markers\vehmarkers_star.sqf"],"1","0","0","0",[]];

thfile = thfile + ["------- Player -------","","0","1","0","0",[]];
thfile = thfile + ["  Unlimited Ammo & No Recoil",format[_execx, "player\LooP.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Lower Terrain",format[_execx, "player\terrain.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Enable Respawn, Logout & No Combat",format[_execx, "player\LooP3.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Godmode",format[_execx, "player\godmode.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Cargod",format[_execx, "player\cargod_v3.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Minimize Time Between Shots",format[_execx, "player\LooP2.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Colorful Debug",format[_execx, "player\colorful_debug.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Anti Zombie Aggro",format[_execx, "player\antiZombie.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Zombie Shield",format[_execx, "player\zshield.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Simple Debug",format[_execx, "player\simple_debug.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Big Fuckin Bullets",format[_execx, "player\Big_Fuckin_Bullets.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Invisibility",format[_execx, "player\invisibility.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Dare You (die and drop granades from the sky)",format[_execx, "player\dare_you.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Add Vehicle Weapons",format[_execx, "player\add_op_weapons.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Remove Vehicle Weapons",format[_execx, "player\remove_op_weapons.sqf"],"0","0","0","0",[]];

thfile = thfile + ["------- Spawn -------","","0","1","0","0",[]];
thfile = thfile + ["  infiSTARs Weapon Box",format[_execx, "spawn\infiSTAR_box.sqf"],"1","0","0","0",[]];

}else{

thfile = thfile + ["------- Markers -------","","0","1","0","0",[]];
thfile = thfile + ["  Esp (use with Markers)",format[_execx, "markers\esp.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Markers (use with Esp)",format[_execx, "markers\playermarkers_star.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Icons",format[_execx, "markers\icons.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Group Icons (use instead of Markers and Esp)",format[_execx, "markers\groupicons.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Run This With Group Icons (if they bug)",format[_execx, "markers\destroy_groups.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Vehicle Markers ",format[_execx, "markers\vehmarkers_star.sqf"],"1","0","0","0",[]];

thfile = thfile + ["------- Player -------","","0","1","0","0",[]];
thfile = thfile + ["  Unlimited Ammo & No Recoil",format[_execx, "player\LooP.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Lower Terrain",format[_execx, "player\terrain.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Godmode",format[_execx, "player\godmode.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Cargod",format[_execx, "player\cargod_v3.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Minimize Time Between Shots",format[_execx, "player\LooP2.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Colorful Debug",format[_execx, "player\colorful_debug.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Simple Debug",format[_execx, "player\simple_debug.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Big Fuckin Bullets",format[_execx, "player\Big_Fuckin_Bullets.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Invisibility",format[_execx, "player\invisibility.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Dare You (die and drop granades from the sky)",format[_execx, "player\dare_you.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Add Vehicle Weapons",format[_execx, "player\add_op_weapons.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Remove Vehicle Weapons",format[_execx, "player\remove_op_weapons.sqf"],"0","0","0","0",[]];

thfile = thfile + ["------- Spawn -------","","0","1","0","0",[]];
thfile = thfile + ["  infiSTARs Weapon Box",format[_execx, "spawn\infiSTAR_box.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Spawn Airborne on/off",format[_execx, "menu\menulist\airborne_spawn_infiSTAR.sqf"],"1","0","0","0",[]];

};

thfile = thfile + ["=============== Keybindings =================","","0","1","0","0",[]];
thfile = thfile + ["1: Commands A.I. To Attack CursorTarget","","0","1","0","0",[]];
thfile = thfile + ["2: Teleport CursorTarget Up In The Air","","0","1","0","0",[]];
thfile = thfile + ["3: To Spawn Explosion On CursorTarget","","0","1","0","0",[]];
thfile = thfile + ["4: To Go UP","","0","1","0","0",[]];
thfile = thfile + ["5: Teleports You Forward","","0","1","0","0",[]];
thfile = thfile + ["6: Teleports You 1.9M(Tab it if your in Epoch)Forward","","0","1","0","0",[]];
thfile = thfile + ["7: Eject CursorTarget From Vehicle","","0","1","0","0",[]];
thfile = thfile + ["8: Open The ScollMenu","","0","1","0","0",[]];
thfile = thfile + ["9: Spawn A.I. Pilot + Random Jet","","0","1","0","0",[]];
thfile = thfile + ["0: Clears Binds And Scrollmenu","","0","1","0","0",[]];
thfile = thfile + ["","","0","1","0","0",[]];
thfile = thfile + ["F1: Attach Menu CursorTarget (glueMenu)","","0","1","0","0",[]];
thfile = thfile + ["F2: Attach Nearest Landvehicle to yours (glue)","","0","1","0","0",[]];
thfile = thfile + ["F3: Attach CursorTarget (glue)","","0","1","0","0",[]];
thfile = thfile + ["F4: Detach CursorTarget (un-glue)","","0","1","0","0",[]];
thfile = thfile + ["F5: Detach All Near (un-glue 100m)","","0","1","0","0",[]];
thfile = thfile + ["F6: Heal/Repair Self (Restore)","","0","1","0","0",[]];
thfile = thfile + ["F7: Heal Self + Near","","0","1","0","0",[]];
thfile = thfile + ["F8: Heal/Repair Self + Near (Restore)","","0","1","0","0",[]];
thfile = thfile + ["F12: Toggle God Mode","","0","1","0","0",[]];