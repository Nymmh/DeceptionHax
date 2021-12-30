{
	if ((_x == vehicle _x) && (_x != player)) then
	{
		_pos = getPosATL vehicle player;
		_dir = getDir vehicle player;
		_pos = [(_pos select 0)+(2+random 10)*sin(_dir),(_pos select 1)+(2+random 10)*cos(_dir),(_pos select 2)];
		_x setPosATL _pos;
	};
} forEach playableUnits;

hint format ["TP all Man"];
cutText [format["TP all Man"], "PLAIN DOWN"];