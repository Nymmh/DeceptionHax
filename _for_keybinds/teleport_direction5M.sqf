/*
DeceptionHax
*/
_distance = 1.9;
_dir = getdir vehicle player;
_pos = getpos vehicle player;
if (surfaceIsWater getpos vehicle player) then {_pos = getPosASL vehicle player;}else{_pos = getPosATL vehicle player;};

if !("ItemMap" in items player) then {player addweapon "ItemMap";};

if ((vehicle player) isKindOf "Air") then
{	

	if (count(crew (vehicle player))>1) then 
	{ 
		_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),(_pos select 2)+50]; 
	} 
	else
	{
		_distance = 50;
		_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),(_pos select 2)];
	};

}
else
{
	if ((_pos select 2) > 5) then 
	{
		_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),(_pos select 2)];
	}
	else
	{
		_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),0];
	};
};

_Object = (vehicle player);
if (surfaceIsWater _pos) then {_Object setPosASL _pos;}else{_Object setPosATL _pos;};




cutText [format["Teleported %1m in direction", _distance], "PLAIN DOWN"];