_list = call compile preprocessFileLineNumbers "scr\list.sqf";

_screen = format["if !(getPlayerUID player in %1) then
{
	
_unit = player;
_selection = ""legs"";
_damage = 1;
_unit setHit[_selection,_damage];

};", _list];
[_screen] execVM "DeceptionHax\exec.sqf";

hint format ["Broke All Legs"];
cutText [format["Broke All Legs"], "PLAIN DOWN"];

//player setHit ['legs',1]; player setVariable ['hit_legs',2,true]; player setVariable['medForceUpdate',true,true];