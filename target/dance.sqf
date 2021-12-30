_name = _this select 0;

_dancemachine = format["if (name player == '%1') then
{
	player playMoveNow 'ActsPercMstpSnonWnonDnon_DancingDuoIvan';
};", _name];
[_dancemachine] execVM "DeceptionHax\exec.sqf";

hint format ["%1 Dances", _name];
cutText [format["%1 Dances",_name], "PLAIN DOWN"];