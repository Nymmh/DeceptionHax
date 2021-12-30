/*
DeceptionHax
*/

if (isnil "Metallica_vehicleg0dv3_infiSTAR" ) then {Metallica_vehicleg0dv3_infiSTAR=0};
if (Metallica_vehicleg0dv3_infiSTAR==0) then

{	
cutText [format["cargod ON"], "PLAIN DOWN"];
	Metallica_vehicleg0dv3_infiSTAR = 1;
	Metallica_vehiclegooov3ood_infiSTAR = true;
	while {Metallica_vehiclegooov3ood_infiSTAR} do
	{

	if ((fuel (vehicle player)) < 0.1) then {vehicle player setFuel 0.56;};
	if ((damage (vehicle player)) != 0) then {vehicle player setdammage 0;};

	sleep 0.01;
	};
}
else
{	
cutText [format["cargod OFF"], "PLAIN DOWN"];
	Metallica_vehiclegooov3ood_infiSTAR = false;
	Metallica_vehicleg0dv3_infiSTAR = 0;
};