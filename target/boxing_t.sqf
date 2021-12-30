_name = _this select 0;

_toRe = format["if (name player == '%1') then
{

	player playMoveNow ""AmovPercMstpSnonWnonDnon_idle68boxing"";
	
};", _name];
[_toRe] execVM "DeceptionHax\exec.sqf";

hint format ["%1 Boxing", _name];
cutText [format["%1 Boxing",_name], "PLAIN DOWN"];