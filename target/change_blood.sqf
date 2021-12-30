_name = _this select 0;


hint format ["Change Blood of %1 to 14000", _name];

_kill = format["if (name player == '%1') then
{

r_player_blood = 14000;

};", _name];
[_kill] execVM "DeceptionHax\exec.sqf";