
if ((count((nearestObjects [vehicle player, ["AAV"], 100])+(nearestObjects [vehicle player, ["T90"], 100]))) < 6) then 
{
	hint format ["You have to be in 100 meter Range of the Vehicle to delete it!"];
	cutText [format["You have to be in 100 meter Range of the Vehicle to delete it!"], "PLAIN DOWN"];
}
else
{

	{
		deleteVehicle _x;
	} forEach (nearestObjects [vehicle player, ["AAV"], 150])+(nearestObjects [vehicle player, ["T90"], 150])+allDEAD;

	hint format ["Monster Tank Removed"];
	cutText [format["Monster Tank Removed"], "PLAIN DOWN"];
};