_loot_box = "TKSpecialWeapons_EP1";
_dir = getdir player;
_pos = getposATL player;
_pos = [(_pos select 0)+1*sin(_dir),(_pos select 1)+1*cos(_dir), (_pos select 2)];
_spaz = createVehicle [_loot_box, _pos, [], 0, "CAN_COLLIDE"];
_spaz setDir _dir;
_spaz setposATL _pos;

_buildingstuff = [
"PartPlankPack"
];

titleText [format["Just-A-Box spawned nearby."],"PLAIN DOWN"]; titleFadeOut 4;

{_spaz addWeaponCargoGlobal [_x, 20];} forEach _buildingstuff;

delaymenu = 
[
	["",true],
	["Select delay", [-1], "", -5, [["expression", ""]], "1", "0"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["1 min", [2], "", -5, [["expression", "SelectDelay=60;DelaySelected=true;"]], "1", "1"],
	["2 min", [3], "", -5, [["expression", "SelectDelay=120;DelaySelected=true;"]], "1", "1"],
	["3 min", [4], "", -5, [["expression", "SelectDelay=180;DelaySelected=true;"]], "1", "1"],
	["4 min", [5], "", -5, [["expression", "SelectDelay=240;DelaySelected=true;"]], "1", "1"],
	["5 min", [6], "", -5, [["expression", "SelectDelay=300;DelaySelected=true;"]], "1", "1"],
	["10 min", [7], "", -5, [["expression", "SelectDelay=600;DelaySelected=true;"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["No timer", [11], "", -5, [["expression", "DelaySelected=false;"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:delaymenu";

WaitUntil{DelaySelected};
DelaySelected=false;

sleep 3;
titleText [format["Just-A-Box will disappear in %1 seconds.",SelectDelay],"PLAIN DOWN"]; titleFadeOut 4;

sleep SelectDelay;

deletevehicle _spaz;

titleText [format["Just-A-Box disappeared."],"PLAIN DOWN"]; titleFadeOut 4;