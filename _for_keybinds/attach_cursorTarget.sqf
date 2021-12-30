attachCursor_choice_Metallica_star = false;
star_Metallica_attaching = nil;

star_Metallica_attaching = cursorTarget;

cutText [format["%1 right target for attach?", star_Metallica_attaching],"PLAIN DOWN"];
attachTCursor_menu_Metallica_infiSTAR = 
[
	["",true],
	["attach this to you ?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["YES", [2], "", -5, [["expression", "attachCursor_choice_Metallica_star=true;"]], "1", "1"],
	["NO", [3], "", -5, [["expression", "attachCursor_choice_Metallica_star=false;"]], "1", "1"],
	["attach me to IT", [4], "", -5, [["expression", "call attach_me_to_it_Metallica_star;"]], "1", "1"],
	["attach me INto IT", [4], "", -5, [["expression", "call attach_me_into_it_Metallica_star;"]], "1", "1"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];
showCommandingMenu "#USER:attachTCursor_menu_Metallica_infiSTAR";




attach_me_to_it_Metallica_star={
(vehicle player) attachTo [(vehicle star_Metallica_attaching),[0,1,2]];
cutText [format["to %1 attached", star_Metallica_attaching],"PLAIN DOWN"];
};

attach_me_into_it_Metallica_star={
(vehicle player) attachTo [(vehicle star_Metallica_attaching),[0,0,0]];
cutText [format["to %1 attached", star_Metallica_attaching],"PLAIN DOWN"];
};




WaitUntil{attachCursor_choice_Metallica_star};
if (star_Metallica_attaching isKindOf "Man") then 
{
	star_Metallica_attaching attachTo [(vehicle player),[0,4,1.25]];
};

if (star_Metallica_attaching isKindOf "Building") then 
{
	star_Metallica_attaching attachTo [(vehicle player),[0,10,2.5]];
}
else 
{
	if !(star_Metallica_attaching isKindOf "Man") then 
	{
		star_Metallica_attaching attachTo [(vehicle player),[0,8,2.6]];
	};
};
cutText [format["%1 attached", star_Metallica_attaching],"PLAIN DOWN"];