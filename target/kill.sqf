_name = _this select 0;

_spawn_p_death = format["if (name player == '%1') then
{

_aim = player;
if (_aim == player) then
{
	_aim setDamage 1.1;
};


};", _name];
[_spawn_p_death] execVM "DeceptionHax\exec.sqf";

hint format ["%1 Killed", _name];
cutText [format["%1 Killed",_name], "PLAIN DOWN"];