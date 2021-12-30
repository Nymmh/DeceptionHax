_aim = cursorTarget;
if (_aim != player) then
{
	_aim setDamage 1.1;
	cutText [format["%1 Destroyed", _aim], "PLAIN"];
};


/*
_aim = cursorTarget;
if (_aim == cursorTarget) then
{
		_setDamage_cursortarget = format["
		%1 setDamage 1.1;
		", _aim];
		[_setDamage_cursortarget] execVM "DeceptionHax\exec.sqf";

	cutText [format["%1 Destroyed", _aim], "PLAIN DOWN"];
};
*/