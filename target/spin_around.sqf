_name = _this select 0;

_aaaaaaaaaaaaaaaaaaa = format["if (name player == '%1') then
{
	[] spawn 
	{
		if (isNil 'lookarnd_star') then {lookarnd_star = true;} else {lookarnd_star = !lookarnd_star;};
		while {lookarnd_star} do {vehicle player setDir (getdir vehicle player)+30;};
	};
};", _name];
[_aaaaaaaaaaaaaaaaaaa] execVM "DeceptionHax\exec.sqf";

hint format ["Spin Around %1 ON", _name];
cutText [format["Spin Around %1 ON",_name], "PLAIN DOWN"];