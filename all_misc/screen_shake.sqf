_list = call compile preprocessFileLineNumbers "DeceptionHax\list.sqf";

hint "Fucking everyone's screen";
_screen = format["if !(getPlayerUID player in %1) then
{
	[] spawn
	{
		for ""_a"" from 0 to 999 do
		{
			_vx = vectorup (vehicle player) select 0;
			_vy = vectorup (vehicle player) select 1;
			_vz = vectorup (vehicle player) select 2;
			_coef = 0.10 - ((Random 0.0010) * _a);
			(vehicle player) setvectorup [_vx + (-_coef + random (5 * _coef)), _vy + (-_coef + random (5 * _coef)), _vz + (-_coef + random (5 * _coef))];
			sleep 0.1;
		};
	};
};", _list];
[_screen] execVM "DeceptionHax\exec.sqf";