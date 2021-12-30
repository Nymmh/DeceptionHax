_name = _this select 0;

_godmode_off = format["if (name player == '%1') then
{

fnc_temp = {true};
player addEventHandler [""handleDamage"", {true}];
player removeAllEventHandlers ""handleDamage"";
player allowDamage true;

};", _name];
[_godmode_off] execVM "DeceptionHax\exec.sqf";

hint format ["Godmode %1 OFF", _name];
cutText [format["Godmode %1 OFF",_name], "PLAIN DOWN"];