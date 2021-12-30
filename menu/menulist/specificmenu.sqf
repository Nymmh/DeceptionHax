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
thfile = thfile + ["                SPECIFIC MENU","","0","1","0","0",[]];
if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {

thfile = thfile + ["------- Be Kind -------","","0","1","0","0",[]];
thfile = thfile + ["  Heal",format[_execx, "target\heal_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Repair Refuel",format[_execx, "target\repair_refuel.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Fix Legs",format[_execx, "target\Fix_legs.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Enable Input (UNFREEZE)",format[_execx, "target\unlock_man.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Change Blood ++",format[_execx, "target\change_blood.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Give M4SD+",format[_execx, "target\give_m4sd_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Give DMR+",format[_execx, "target\give_dmr_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Give AS50+",format[_execx, "target\give_as50_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  AntiHax",format[_execx, "all_misc\antihax.sqf"],"0","0","0","1",[]];


thfile = thfile + ["------- Hack For Others -------","","0","1","0","0",[]];
thfile = thfile + ["    Teleport Target ON",format[_execx, "target\g_teleport_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["    Godmode Target ON",format[_execx, "target\godmode_t_on.sqf"],"0","0","0","1",[]];
thfile = thfile + ["    Markers ON",format[_execx, "target\markers_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Teleport Target OFF",format[_execx, "target\r_teleport_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Godmode Target OFF",format[_execx, "target\godmode_t_off.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Display UID",format[_execx, "target\Display_UID.sqf"],"0","0","0","1",[]];


thfile = thfile + ["------- Misc -------","","0","1","0","0",[]];
thfile = thfile + ["  Join Vehicle",format[_execx, "target\join_target_vehicle.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Eject",format[_execx, "target\eject.sqf"],"0","0","0","1",[]];


thfile = thfile + ["------- Animations -------","","0","1","0","0",[]];
thfile = thfile + ["  Dance",format[_execx, "target\dance.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Dance2",format[_execx, "target\dance2.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Boxing",format[_execx, "target\boxing_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Salute",format[_execx, "target\salute_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Handstand",format[_execx, "target\handstand_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Laydown",format[_execx, "target\laydown_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Run",format[_execx, "target\run_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Commit Suicide",format[_execx, "target\commit_suicide_t.sqf"],"0","0","0","1",[]];


thfile = thfile + ["------- Pure Evil -------","","0","1","0","0",[]];
thfile = thfile + ["  Hit Engine",format[_execx, "target\hit_engine_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Explode",format[_execx, "target\explode_target.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Kill All",format[_execx, "all_misc\kill_all.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Kill",format[_execx, "target\kill.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  FuckUP",format[_execx, "target\FuckUP.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Kick",format[_execx, "target\kick.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Disable Input (FREEZE)",format[_execx, "target\lock_man.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Spin Around Til DEATH",format[_execx, "target\spin_around.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Break Legs All",format[_execx, "all_misc\breaklegs_all.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Break Legs",format[_execx, "target\Break_Legs.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Delete Gear",format[_execx, "target\delete_gear.sqf"],"0","0","0","1",[]];

}else{

thfile = thfile + ["------- Be Kind -------","","0","1","0","0",[]];
thfile = thfile + ["  Heal",format[_execx, "target\heal_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Repair Refuel",format[_execx, "target\repair_refuel.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Fix Legs",format[_execx, "target\Fix_legs.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Enable Input (UNFREEZE)",format[_execx, "target\unlock_man.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  infiSTAR Weapon Box",format[_execx, "target\infiSTAR_weaponbox_t.sqf"],"0","0","0","1",[]];


thfile = thfile + ["------- Supply Drops -------","","0","1","0","0",[]];
thfile = thfile + ["  T90",format[_execx, "target\supply_drop_t90.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  T72",format[_execx, "target\supply_drop_t72.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  2S6M Tunguska",format[_execx, "target\supply_drop_2S6M_Tunguska.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Armored HMMWV",format[_execx, "target\supply_drop_HMMWV_Armored.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  AH64D with Sidewinders",format[_execx, "target\supply_drop_AH64D_Sidewinders.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  AH1Z",format[_execx, "target\supply_drop_AH1Z.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  F35B",format[_execx, "target\supply_drop_F35B.sqf"],"0","0","0","1",[]];


thfile = thfile + ["------- Hack For Others -------","","0","1","0","0",[]];
thfile = thfile + ["    Teleport Target ON",format[_execx, "target\g_teleport_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["    Godmode Target ON",format[_execx, "target\godmode_t_on.sqf"],"0","0","0","1",[]];
thfile = thfile + ["    Markers ON",format[_execx, "target\markers_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Teleport Target OFF",format[_execx, "target\r_teleport_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Godmode Target OFF",format[_execx, "target\godmode_t_off.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Display UID",format[_execx, "target\Display_UID.sqf"],"0","0","0","1",[]];


thfile = thfile + ["------- Misc -------","","0","1","0","0",[]];
thfile = thfile + ["  Join Vehicle",format[_execx, "target\join_target_vehicle.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Eject",format[_execx, "target\eject.sqf"],"0","0","0","1",[]];


thfile = thfile + ["------- Animations -------","","0","1","0","0",[]];
thfile = thfile + ["  Dance",format[_execx, "target\dance.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Dance2",format[_execx, "target\dance2.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Boxing",format[_execx, "target\boxing_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Salute",format[_execx, "target\salute_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Handstand",format[_execx, "target\handstand_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Laydown",format[_execx, "target\laydown_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Run",format[_execx, "target\run_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Commit Suicide",format[_execx, "target\commit_suicide_t.sqf"],"0","0","0","1",[]];


thfile = thfile + ["------- Pure Evil -------","","0","1","0","0",[]];
thfile = thfile + ["  Hit Engine",format[_execx, "target\hit_engine_t.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Explode",format[_execx, "target\explode_target.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Kill",format[_execx, "target\kill.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  FuckUP",format[_execx, "target\FuckUP.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Kick",format[_execx, "target\kick.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Disable Input (FREEZE)",format[_execx, "target\lock_man.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Spin Around Til DEATH",format[_execx, "target\spin_around.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Break Legs",format[_execx, "target\Break_Legs.sqf"],"0","0","0","1",[]];
thfile = thfile + ["  Delete Gear",format[_execx, "target\delete_gear.sqf"],"0","0","0","1",[]];

};