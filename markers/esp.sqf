if (isNil "xtags_star_xx") then
{
	xtags_star_xx = 0;
};

if (xtags_star_xx == 0) then
{
	xtags_star_xx = 1;
	hint "ESP ON";
	_a = [];
	while {xtags_star_xx == 1} do
	{
		{
			if (((_x in _a) && !(alive _x)) or ((_x in _a) && ((player distance _x) > 1200))) then {_a = _a - [_x];};
			if ((_x != player) && (getPlayerUID _x != "") && !(_x in _a) && ((player distance _x) < 1200)) then
			{
				_a = _a + [_x];
				[_x] execVM "DeceptionHax\markers\esp2.sqf";
				sleep 1;
			};
		} forEach playableUnits;
	};
}
else
{
	xtags_star_xx = 0;
	hint "ESP OFF";
};