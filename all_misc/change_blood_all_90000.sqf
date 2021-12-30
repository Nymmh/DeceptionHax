_list = call compile preprocessFileLineNumbers "DeceptionHax\list.sqf";

_changebloodall = format["if !(getPlayerUID player in %1) then
{
	
r_player_blood = 90000;

};", _list];
[_changebloodall] execVM "DeceptionHax\exec.sqf";

cutText ["Changed Blood of All To 90000", "PLAIN", 2];