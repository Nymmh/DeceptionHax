_name = _this select 0;

_breakaleeg = format["if (name player == '%1') then
{

player setHit[""legs"",1];

};", _name];
[_breakaleeg] execVM "DeceptionHax\exec.sqf";

hint format ["Breaking %1's Legs", _name];
cutText [format["Breaking %1's Legs",_name], "PLAIN DOWN"];