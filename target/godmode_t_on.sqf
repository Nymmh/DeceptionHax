_name = _this select 0;

_godmode_on = format["if (name player == '%1') then
{

fnc_temp = {false}; 
player removeAllEventHandlers ""handleDamage""; 
player addEventHandler [""handleDamage"", { r_player_blood = 12000 }];
player allowDamage false;

};", _name];
[_godmode_on] execVM "DeceptionHax\exec.sqf";

hint format ["Godmode %1 ON", _name];
cutText [format["Godmode %1 ON",_name], "PLAIN DOWN"];