/*
DeceptionHax
Teleports to selected player
*/

_name = _this select 0;
{
	if(name _x == _name) then
	{
		tlmadminrqa = [7,player,_x];
		publicVariable "tlmadminrqa";
		_pos = getPosATL vehicle _x;
		_dir = getDir vehicle _x;
		_pos = [(_pos select 0)-2*sin(_dir),(_pos select 1)-2*cos(_dir),(_pos select 2)+1];
		vehicle player setPosATL _pos;
	};
} forEach playableUnits;

hint format ["TP to %1", _name];
cutText [format["TP to %1",_name], "PLAIN DOWN"];