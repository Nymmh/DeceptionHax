hint format ["Deleted AI Group Player"];
cutText [format ["Deleted AI Group Player"], "PLAIN DOWN"];

{
	if (_x != player) then 
	{
		deleteVehicle vehicle _x;
		deleteVehicle _x;
	};
} forEach (units group player);


{
	if (_x != player) then 
	{
		deleteVehicle _x;
	};
} forEach (allMissionObjects "EvMoney");

{deleteVehicle _x;} forEach allmissionobjects "ParachuteBase";


ratingloooooooop_Metallica_infistar = false;
ratingloop_star = false;