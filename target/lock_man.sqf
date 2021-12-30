_name = _this select 0;

_locked = format["if (name player == '%1') then
{
disableUserInput true;
};", _name];
[_locked] execVM "DeceptionHax\exec.sqf";

hint format ["%1 Locked", _name];
cutText [format["%1 Locked", _name], "PLAIN DOWN"];