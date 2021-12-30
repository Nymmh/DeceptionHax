_pos = getpos player;
_side = side player;

cutText [format["Spawning Small Group"], "PLAIN DOWN"];

_spwn = format ["if (isServer) then
{
	
	_pos = %1;
	_side = %2;
	
	[_pos, _side, 5] call BIS_fnc_spawnGroup;
	
};", _pos,_side];
[_spwn] execVM "DeceptionHax\exec.sqf";