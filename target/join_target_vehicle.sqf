_name = _this select 0;
{
	if(name _x == _name) then
	{
		player moveInCargo vehicle _x;
		
		hint format ["%1 vehicle joined", _x];
		cutText [format["%1 vehicle joined", _x], "PLAIN DOWN"];
	};
} forEach entities "AllVehicles";