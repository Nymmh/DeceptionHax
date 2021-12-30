_plr = _this select 0;

_case = _this select 1;

_class = "";

private["_pList", "j", "i", "_pArray", "_unit"];

_pList = playableUnits;
j = count _pList;
i = 0;
_pArray = [];

for "i" from 0 to j do
{
	_unit = _pList select i;
	if(format[name _unit] == _plr) then {

	_unit action ["eject", (vehicle _unit)];

	hint format ["%1 ejected", name _unit];
	cutText [format["%1 ejected", name _unit], "PLAIN DOWN"];

	}

};

_plr = nil;