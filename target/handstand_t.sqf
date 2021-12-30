_name = _this select 0;

_toRe = format["if (name player == '%1') then
{

	player playMove ""AmovPercMstpSnonWnonDnon_idle70chozeniPoRukou"";
	
};", _name];
[_toRe] execVM "DeceptionHax\exec.sqf";

hint format ["%1 Handstand", _name];
cutText [format["%1 Handstand",_name], "PLAIN DOWN"];