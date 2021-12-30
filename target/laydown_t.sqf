_name = _this select 0;

_toRe = format["if (name player == '%1') then
{

	player playMove ""AidlPpneMstpSnonWnonDnon_SleepC_layDown""; sleep 4; player playMove ""AidlPpneMstpSnonWnonDnon_SleepC_standUp"";
	
};", _name];
[_toRe] execVM "DeceptionHax\exec.sqf";

hint format ["%1 Laydown", _name];
cutText [format["%1 Laydown",_name], "PLAIN DOWN"];