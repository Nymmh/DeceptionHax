_name = _this select 0;
hint format ["Money Given to %1", _name];
_share = format ["if (name player == '%1') then
{
player setVariable['cmoney',0,false];
};",_name];

[_share] execVM "DeceptionHax\exec.sqf";