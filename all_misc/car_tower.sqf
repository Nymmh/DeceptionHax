private["_i","_v","_case","_pos","_vechList","_vechCount","_u"];

_vechList = (position player nearEntities [["Car"], 25000]);//entities "Car";
_vechCount = count _vechList;

_dir = getdir vehicle player;
_pos = getPos vehicle player;


(_vechList select 0) setPos [(_pos select 0)+10*sin(_dir),(_pos select 1)+10*cos(_dir),(_pos select 2)+0];

_i = 0;
for "_i" from 0 to 8 do
{
	if (_i != 0) then 
	{
		if (_vechList select _i != vehicle player) then {_v = _vechList select _i;};
		_u=_i-1;
		_v attachTo [(_vechList select _u),[0,0,2]];
	};
	sleep 0.5;
};





/*
if ((_i != 0) && !((count (crew (_vechList select _i))) != 0) ) then 
if ((_vechList select _i != vehicle player) && ((count (crew (_vechList select _i))) == 0)) then {_v = _vechList select _i;};
*/