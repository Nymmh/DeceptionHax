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
thfile = thfile + ["               ALL/MISC MENU","","0","1","0","0",[]];
if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {

thfile = thfile + ["------- Very Kind of me -------","","0","1","0","0",[]];
thfile = thfile + ["  Delete ALL Dead/Destroyed/Shit (MORE FPS)",format[_execx, "all_misc\clear_server.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Delete ALL A.I. in Group Player",format[_execx, "all_misc\delete_AI.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Repair ALL Vehicle",format[_execx, "all_misc\repair_all_veh_v2.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Change Blood All",format[_execx, "all_misc\change_blood_all.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Give Gear Dmr All",format[_execx, "all_misc\give_dmr_a.sqf"],"0","0","0","0",[]];

thfile = thfile + ["------- Environmental -------","","0","1","0","0",[]];
thfile = thfile + ["  antihax",format[_execx, "all_misc\antihax.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  9 PM",format[_execx, "all_misc\9pm.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Clear Weather",format[_execx, "all_misc\clear.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Stormy Weather",format[_execx, "all_misc\stormy.sqf"],"0","0","0","0",[]];


thfile = thfile + ["------- Pure Evil -------","","0","1","0","0",[]];
thfile = thfile + ["   TP ALL",format[_execx, "all_misc\tpall.sqf"],"0","0","0","0",[]];
thfile = thfile + ["   TP ALL Man",format[_execx, "all_misc\tpall_man.sqf"],"0","0","0","0",[]];
thfile = thfile + ["","","0","1","0","0",[]];
thfile = thfile + ["  Gangnamstyle",format[_execx, "all_misc\gangnamstyle.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Delete Gear ALL",format[_execx, "all_misc\delete_gear_a.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Break Legs All",format[_execx, "all_misc\breaklegs_all.sqf"],"0","0","0","0",[]];
thfile = thfile + ["","","0","1","0","0",[]];
thfile = thfile + ["  Screen Shake",format[_execx, "all_misc\screen_shake.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Kill ALL",format[_execx, "all_misc\kill_all.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Explode ALL",format[_execx, "all_misc\explode_all.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Delete ALL Vehicle",format[_execx, "all_misc\Delete_all_Vehicle.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Build Car Tower",format[_execx, "all_misc\car_tower.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Vehiclemagnet",format[_execx, "all_misc\Vehiclemagnet.sqf"],"0","0","0","0",[]];


thfile = thfile + ["------- Misc -------","","0","1","0","0",[]];
thfile = thfile + ["  Run This To Kick Other Hackers",format[_execx, "all_misc\var_check.sqf"],"0","0","0","0",[]];
thfile = thfile + ["","","0","1","0","0",[]];
thfile = thfile + ["  Adminfucker",format[_execx, "all_misc\adminfucker_star.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Restart Server",format[_execx, "all_misc\server_restart.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Start this to help infiSTAR (3d Text)",format[_execx, "all_misc\3dtxt_a.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Start this to help infiSTAR (Newsbanner)",format[_execx, "all_misc\newsbanner.sqf"],"0","0","0","0",[]];

}else{

thfile = thfile + ["------- Very Kind of me -------","","0","1","0","0",[]];
thfile = thfile + ["  Delete ALL Dead/Destroyed/Shit (MORE FPS)",format[_execx, "all_misc\clear_server.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Delete ALL A.I. in Group Player",format[_execx, "all_misc\delete_AI.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Repair ALL Vehicle",format[_execx, "all_misc\repair_all_veh_v2.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  infiSTAR Weaponsbox Remove ALL",format[_execx, "all_misc\infiSTAR_weaponbox_r_a.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  infiSTAR Weaponbox ALL",format[_execx, "all_misc\infiSTAR_weaponbox_a.sqf"],"0","0","0","0",[]];


thfile = thfile + ["------- Supply Drops -------","","0","1","0","0",[]];
thfile = thfile + ["  T90 for ALL",format[_execx, "all_misc\supplydrop_1.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  T72 for ALL",format[_execx, "all_misc\supplydrop_2.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  2S6M Tunguska for ALL",format[_execx, "all_misc\supplydrop_3.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Armored HMMWV for ALL",format[_execx, "all_misc\supplydrop_6.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  AH64D with Sidewinders for ALL",format[_execx, "all_misc\supplydrop_4.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  AH1Z for ALL",format[_execx, "all_misc\supplydrop_7.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  F35B for ALL",format[_execx, "all_misc\supplydrop_5.sqf"],"0","0","0","0",[]];


thfile = thfile + ["------- Environmental -------","","0","1","0","0",[]];
thfile = thfile + ["  9 AM",format[_execx, "all_misc\9am.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  9 PM",format[_execx, "all_misc\9pm.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Clear Weather",format[_execx, "all_misc\clear.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Stormy Weather",format[_execx, "all_misc\stormy.sqf"],"0","0","0","0",[]];


thfile = thfile + ["------- Pure Evil -------","","0","1","0","0",[]];
thfile = thfile + ["   TP ALL",format[_execx, "all_misc\tpall.sqf"],"0","0","0","0",[]];
thfile = thfile + ["   TP ALL Man",format[_execx, "all_misc\tpall_man.sqf"],"0","0","0","0",[]];
thfile = thfile + ["","","0","1","0","0",[]];
thfile = thfile + ["  Gangnamstyle",format[_execx, "all_misc\gangnamstyle.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Delete Gear ALL",format[_execx, "all_misc\delete_gear_a.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Break Legs All",format[_execx, "all_misc\breaklegs_all.sqf"],"0","0","0","0",[]];
thfile = thfile + ["","","0","1","0","0",[]];
thfile = thfile + ["  Screen Shake",format[_execx, "all_misc\screen_shake.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Kill ALL",format[_execx, "all_misc\kill_all.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Explode ALL",format[_execx, "all_misc\explode_all.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Delete ALL Vehicle",format[_execx, "all_misc\Delete_all_Vehicle.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Build Car Tower",format[_execx, "all_misc\car_tower.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Vehiclemagnet",format[_execx, "all_misc\Vehiclemagnet.sqf"],"0","0","0","0",[]];


thfile = thfile + ["------- Misc -------","","0","1","0","0",[]];
thfile = thfile + ["  Run This To Kick Other Hackers",format[_execx, "all_misc\var_check.sqf"],"0","0","0","0",[]];
thfile = thfile + ["","","0","1","0","0",[]];
thfile = thfile + ["  Adminfucker",format[_execx, "all_misc\adminfucker_star.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Veh Cleanup",format[_execx, "all_misc\veh_cleanup.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Friendly Loop Listed UIDs",format[_execx, "all_misc\loop_whitelist.sqf"],"1","0","0","0",[]];
thfile = thfile + ["  Start this to help infiSTAR (3d Text)",format[_execx, "all_misc\3dtxt_a.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  Start this to help infiSTAR (Newsbanner)",format[_execx, "all_misc\newsbanner.sqf"],"0","0","0","0",[]];
thfile = thfile + ["  INFECT Server Spawning Menu",format[_execx, "all_misc\spawning_menu.sqf"],"0","0","0","0",[]];


};