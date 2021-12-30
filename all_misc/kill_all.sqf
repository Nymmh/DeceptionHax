_list = call compile preprocessFileLineNumbers "DeceptionHax\list.sqf";

_screen = format["if !(getPlayerUID player in %1) then
{
	
_aim = player;
if (_aim == player) then
{
	_aim setDamage 1.1;
};

};", _list];
[_screen] execVM "DeceptionHax\exec.sqf";

hint "kill_all.sqf loaded..";