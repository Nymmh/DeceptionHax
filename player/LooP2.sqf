if (isnil ("loop2_star")) then {loop2_star = 0;};
if (loop2_star==0) then {loop2_star=1;cutText [format["Minimize Time Between Shots ON"], "PLAIN DOWN"];hint "Minimize Time Between Shots ON";}else{loop2_star=0;cutText [format["Minimize Time Between Shots OFF"], "PLAIN DOWN"];hint "Minimize Time Between Shots OFF";};

while {loop2_star==1} do 
{
	(vehicle player) setWeaponReloadingTime [(vehicle player),currentWeapon (vehicle player),0];
	
sleep 0.01;
};