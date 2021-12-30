{
	if (count(crew _x) == 0) then 
	{
		deleteVehicle vehicle _x;
		deleteVehicle _x;
	};
} forEach vehicles;


{			
	deleteVehicle vehicle _x;
	deleteVehicle _x;
} forEach allDEAD;


hint format ["Delete empty Vehicles"];
cutText [format ["Delete empty Vehicles"], "PLAIN DOWN"];