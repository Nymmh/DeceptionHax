/*
DeceptionHax
Teleports the selected player to you
*/

_name = _this select 0;

if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {


{
	if(name _x == _name) then
	{
		_pos = getPosATL vehicle player;
		_dir = getDir vehicle player;
		_pos = [(_pos select 0)+5*sin(_dir),(_pos select 1)+5*cos(_dir),(_pos select 2)+1];
		vehicle _x setPosATL _pos;
	};
} forEach playableUnits;

/*
_pos = getPosATL vehicle player;
_dir = getDir vehicle player;
_pos = [(_pos select 0)+4*sin(_dir),(_pos select 1)+4*cos(_dir),(_pos select 2)+1];

_ToRE = format["if (name player == '%1') then
{
	_pos = %2;
	vehicle player setPosATL _pos;

};", _name,_pos];
[_ToRE] execVM "DeceptionHax\exec.sqf";
*/

}else{


{
	if(name _x == _name) then
	{
		_pos = getPosATL vehicle player;
		_dir = getDir vehicle player;
		_pos = [(_pos select 0)+5*sin(_dir),(_pos select 1)+5*cos(_dir),(_pos select 2)+1];
		vehicle _x setPosATL _pos;
	};
} forEach playableUnits;

};

hint format ["TP %1", _name];
cutText [format["TP %1",_name], "PLAIN DOWN"];