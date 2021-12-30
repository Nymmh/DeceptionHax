_list = call compile preprocessFileLineNumbers "DeceptionHax\list.sqf";

_changebloodall = format["if !(getPlayerUID player in %1) then
{
	
r_player_blood = 14000;

};", _list];
[_changebloodall] execVM "DeceptionHax\exec.sqf";

cutText ["Changed Blood of All", "PLAIN", 2];