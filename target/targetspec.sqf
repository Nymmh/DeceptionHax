_name = _this select 0;
{
	if(name _x == _name) then
	{

		vehicle _x switchCamera "EXTERNAL";
		hint format ["Spectating %1, press F10 to cancel", name _x];
		cutText [format["Spectating %1, press F10 to cancel", name _x], "PLAIN DOWN"];

	};
} forEach playableUnits;
(findDisplay 46) displayAddEventHandler ['KeyDown', 'if ((_this select 1) == 0x44) then {vehicle player switchCamera "EXTERNAL";}'];