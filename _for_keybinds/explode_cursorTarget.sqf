ExplodeTarget_choice_infistar=false;
spawn_explosion_target_infiSTAR= objNull;
spawn_explosion_target_infiSTAR= nil;

spawn_explosion_target_infiSTAR = cursorTarget;
cutText [format["Explode %1 ?", spawn_explosion_target_infiSTAR],"PLAIN DOWN"];

spawn_explosion_menu_Metallica_star = 
[
	["",true],
	["Explode ?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["YES", [2], "", -5, [["expression", "ExplodeTarget_choice_infistar=true;"]], "1", "1"],
	["NO", [3], "", -5, [["expression", "ExplodeTarget_choice_infistar=false;"]], "1", "1"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];
showCommandingMenu "#USER:spawn_explosion_menu_Metallica_star";
WaitUntil{ExplodeTarget_choice_infistar};


"HelicopterExplobig", "HelicopterExploSmall" createvehiclelocal (position spawn_explosion_target_infiSTAR);

cutText [format["%1 Exploded", spawn_explosion_target_infiSTAR],"PLAIN DOWN"];