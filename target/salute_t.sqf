_name = _this select 0;

_toRe = format["if (name player == '%1') then
{

	player playMove ""AmovPercMstpSlowWrflDnon_Salute"";
	titleText ['SALUTE TO infiSTAR', 'PLAIN DOWN']; titlefadeout 4;
	
};", _name];
[_toRe] execVM "DeceptionHax\exec.sqf";

hint format ["%1 Salute", _name];
cutText [format["%1 Salute",_name], "PLAIN DOWN"];