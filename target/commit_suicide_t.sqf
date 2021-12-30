_name = _this select 0;

_suicide = format ["if (name player == '%1') then
{
	[] spawn {
	player selectWeapon (secondaryWeapon player);
	player removeWeapon (primaryWeapon player);
	player playMoveNow ""ActsPercMstpSnonWpstDnon_suicide1B"";
	
	waitUntil {animationState player == ""ActsPercMstpSnonWpstDnon_suicide1B""};
	sleep 4.2;
	
	player fire (currentWeapon player);
	
	sleep 0.5;
	
	_aim = player;
	if (_aim == player) then
	{
		_aim setDamage 1.1;
	};
	
	};
};", _name];
[_suicide] execVM "DeceptionHax\exec.sqf";



hint format ["%1 commits suicide", _name];
cutText [format["%1 commits suicide",_name], "PLAIN DOWN"];