_name = _this select 0;

_unlocked = format["if (name player == '%1') then
{
disableUserInput false;
};", _name];
[_unlocked] execVM "DeceptionHax\exec.sqf";

hint format ["%1 Unlocked", _name];
cutText [format["%1 Unlocked", _name], "PLAIN DOWN"];