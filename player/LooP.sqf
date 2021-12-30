if (isnil ("loop1_star")) then {loop1_star = 0;};
if (loop1_star==0) then {loop1_star=1;cutText [format["Unlimited AMMO and No Recoil ON"], "PLAIN DOWN"];hint "Unlimited AMMO and No Recoil ON";}else{loop1_star=0;cutText [format["Unlimited AMMO and No Recoil OFF"], "PLAIN DOWN"];hint "Unlimited AMMO and No Recoil OFF";};

while {loop1_star==1} do 
{
	(vehicle player) setVehicleAmmo 1;
	(vehicle player) setUnitRecoilCoefficient 0;
	hungerLevel = 100;
	thirstLevel = 100;
	
sleep 0.01;
};