{
	_dir = getdir vehicle player;
	_pos = getPosASL vehicle player;
	_x setPosASL [(_pos select 0)+random 20*sin(_dir),(_pos select 1)+random 20*cos(_dir),(_pos select 2)+0];
} forEach vehicles;


/*
private["i","v","_case","_pos","_vechList","_vechCount"];

_vechList = vehicles;
_vechCount = count _vechList;

i = 0;
for "i" from 0 to _vechCount do
{
    v = _vechList select i;
	
	
_dir = getdir vehicle player;
_pos = getPosASL vehicle player;
	
    v setPosASL [(_pos select 0)+random 75*sin(_dir),(_pos select 1)+random 75*cos(_dir),(_pos select 2)+0];
	
};
*/