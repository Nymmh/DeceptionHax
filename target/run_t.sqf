_name = _this select 0;

_toRe = format["if (name player == '%1') then
{

	player playMove ""AsigPercMstpSlowWrflDnon_AmovPercMrunSlowWrflDnon_GoGo"";
	
};", _name];
[_toRe] execVM "DeceptionHax\exec.sqf";

hint format ["%1 Run", _name];
cutText [format["%1 Run",_name], "PLAIN DOWN"];