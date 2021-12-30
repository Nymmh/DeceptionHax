/*
DeceptionHax
*/
_plr = _this select 0;

private["_pList", "j", "i", "_pArray", "v"];

_pList = playableUnits;
j = count _pList;
i = 0;
_pArray = [];

for "i" from 0 to j do
{
	v= _pList select i;
	if(format[name v] == _plr) then 
	{
		_unit = v;
		_unit = (vehicle _unit);

		_object = "HelicopterExploSmall" createvehiclelocal (getPos _unit);

		cutText [format["Exploded %1", name _unit], "PLAIN DOWN"];
	};

};