if (isnil ("xZombieBait")) then 
{
	xZombieBait = false;
};

if (!xZombieBait) then
{
	hint "antiZombie ON";
	cutText [format["antiZombie ON"], "PLAIN DOWN"];
	player_zombieCheck = {};
	xZombieBait = true;

}
else
{
	hint "antiZombie OFF";
	cutText [format["antiZombie OFF"], "PLAIN DOWN"];
	player_zombieCheck = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieCheck.sqf";
	xZombieBait = false;

};