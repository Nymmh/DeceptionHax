_name = _this select 0;

hint format ["Delete Gear %1", _name];
cutText [format["Delete Gear %1",_name], "PLAIN DOWN"];

_kill = format["if (name player == '%1') then
{
removeAllWeapons player;
removeAllItems player;
removeBackpack player;
};", _name];
[_kill] execVM "DeceptionHax\exec.sqf";