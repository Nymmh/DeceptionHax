tphigh_choice_infistar=false;
tphigh_target_infiSTAR= objNull;
tphigh_target_infiSTAR= nil;

tphigh_target_infiSTAR = cursorTarget;
cutText [format["Teleport Higher %1 ?", tphigh_target_infiSTAR],"PLAIN DOWN"];

tphigh_menu_Metallica_menu = 
[
	["",true],
	["Teleport Up ?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["YES", [2], "", -5, [["expression", "tphigh_choice_infistar=true;"]], "1", "1"],
	["NO", [3], "", -5, [["expression", "tphigh_choice_infistar=false;"]], "1", "1"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];
showCommandingMenu "#USER:tphigh_menu_Metallica_menu";
WaitUntil{tphigh_choice_infistar};

_pos = position tphigh_target_infiSTAR;
tphigh_target_infiSTAR setPos [_pos select 0, _pos select 1,(_pos select 2)+450];

cutText [format["%1 Teleported Higher", tphigh_target_infiSTAR],"PLAIN DOWN"];