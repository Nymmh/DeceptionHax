_name = _this select 0;

_Fix_Legs = format["if (name player == '%1') then
{
	_unit = player; 
	_selection = 'legs'; 
	_damage = 0;
	_unit setHit[_selection,_damage];
   player setVariable ['hit_legs',0,false];
   player setVariable['medForceUpdate',true,true];

};", _name];
[_Fix_Legs] execVM "DeceptionHax\exec.sqf";

hint format ["Fix Legs %1", _name];
cutText [format["Fix Legs %1",_name], "PLAIN DOWN"];