if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {

private["_spawnAIS", "_plrGroup"];
_pos = getPos vehicle player;
CIVILIAN setFriend [WEST,0];
WEST setFriend [CIVILIAN,0];

/*player addRating 50000;
{_x addRating -200000;} forEach entities "zZombie_Base";
{_x addRating 200000;} forEach playableUnits;*/
{_x addRating -200000;} forEach entities "zZombie_Base";

_plrGroup = (group player);
_plrGroup allowFleeing 0;
_plrGroup setFormation "LINE";
_plrGroup enableAttack true;

_spawnAIS = (_plrGroup) createunit ["Soldier1_DZ", [_pos select 0, _pos select 1,  50], [], 0, "FORM"];



_spawnAIS enableAI "TARGET";
_spawnAIS enableAI "AUTOTARGET";
_spawnAIS enableAI "MOVE";
_spawnAIS enableAI "ANIM";
_spawnAIS enableAI "FSM";

_spawnAIS allowDammage true;

_spawnAIS setCombatMode "RED";
_spawnAIS setBehaviour "COMBAT";

_spawnAIS addweapon "M4A1_AIM_SD_camo";
_spawnAIS addMagazine "30Rnd_556x45_StanagSD";
_spawnAIS addMagazine "30Rnd_556x45_StanagSD";
_spawnAIS addMagazine "30Rnd_556x45_StanagSD";
_spawnAIS addMagazine "30Rnd_556x45_StanagSD";
_spawnAIS addMagazine "30Rnd_556x45_StanagSD";
_spawnAIS addMagazine "30Rnd_556x45_StanagSD";
_spawnAIS addMagazine "30Rnd_556x45_StanagSD";
_spawnAIS selectWeapon "M4A1_AIM_SD_camo";

_spawnAIS setSkill ["aimingAccuracy",1];
_spawnAIS setSkill ["aimingShake",1];
_spawnAIS setSkill ["aimingSpeed",1];
_spawnAIS setSkill ["endurance",1];
_spawnAIS setSkill ["spotDistance",1];
_spawnAIS setSkill ["spotTime",1];
_spawnAIS setSkill ["courage",1];
_spawnAIS setSkill ["reloadSpeed",1];
_spawnAIS setSkill ["commanding",1];
_spawnAIS setSkill ["general",1];

[_spawnAIS] join _plrGroup;
_plrGroup enableAttack true;

_spawnAIS addEventHandler ["Fired", {_this call player_fired;}];

cutText [format["ANTI ZED spawned"], "PLAIN DOWN"];

ratingloop_star = true;
sleep 0.5;
while {ratingloop_star} do 
{
	{_x addRating -200000;} forEach entities "zZombie_Base";
	
	{
		if (_x iskindof "Soldier1_DZ") then 
		{
			removeAllWeapons _x;
		};
	} forEach allDEAD;
	
	_spawnAIS setVehicleAmmo 1;
	_spawnAIS setUnitRecoilCoefficient 0;
	_spawnAIS setWeaponReloadingTime [_spawnAIS,currentWeapon _spawnAIS,0];
	_spawnAIS setDamage 0;
	
	sleep 0.1;
};

}else{

TitleText [format["DeceptionHax has your back son"], "PLAIN DOWN"];

private["_spawnAIS", "_plrGroup"];

CIVILIAN setFriend [WEST,0];
WEST setFriend [CIVILIAN,0];

	player addRating 9999999;
	
	{_x addRating 9999999;} forEach (units group player);
	
	{
		_x addRating -100000;
		
		{
			_x addRating 9999999;
		} forEach (units group player);
	} foreach playableUnits;
	
	{
		_x addRating -100000;
	
		{
			_x addRating 9999999;
		} forEach (units group player);
	} forEach entities "AllVehicles";

_plrGroup = (group player);
_plrGroup allowFleeing 0;
_plrGroup setFormation "LINE";

"USMC_SoldierS_Sniper" createUnit [[(getpos player select 0), (getpos player select 1), 50], _plrGroup, "_spawnAIS = this;"];

_spawnAIS enableAI "TARGET";
_spawnAIS enableAI "AUTOTARGET";
_spawnAIS enableAI "MOVE";
_spawnAIS enableAI "ANIM";
_spawnAIS enableAI "FSM";

_spawnAIS allowDammage true;

_spawnAIS setCombatMode "RED";
_spawnAIS setBehaviour "COMBAT";

_spawnAIS addweapon "G36_C_SD_camo";
_spawnAIS addMagazine "30Rnd_556x45_StanagSD";
_spawnAIS addMagazine "30Rnd_556x45_StanagSD";
_spawnAIS addMagazine "30Rnd_556x45_StanagSD";
_spawnAIS addMagazine "30Rnd_556x45_StanagSD";
_spawnAIS addMagazine "30Rnd_556x45_StanagSD";
_spawnAIS addMagazine "30Rnd_556x45_StanagSD";
_spawnAIS addMagazine "30Rnd_556x45_StanagSD";
_spawnAIS selectWeapon "G36_C_SD_camo";

_spawnAIS setSkill ["aimingAccuracy",1];
_spawnAIS setSkill ["aimingShake",1];
_spawnAIS setSkill ["aimingSpeed",1];
_spawnAIS setSkill ["endurance",1];
_spawnAIS setSkill ["spotDistance",1];
_spawnAIS setSkill ["spotTime",1];
_spawnAIS setSkill ["courage",1];
_spawnAIS setSkill ["reloadSpeed",1];
_spawnAIS setSkill ["commanding",1];
_spawnAIS setSkill ["general",1];

[_spawnAIS] join _plrGroup;

_spawnAIS addEventHandler ["Fired", {_this call player_fired;}];

ratingloooooooop_Metallica_infistar = true;
while {ratingloooooooop_Metallica_infistar} do 
{
	player addRating 9999999;
	
	{_x addRating 9999999;} forEach (units group player);
	
	{
		_x addRating -100000;
		
		{
			_x addRating 9999999;
		} forEach (units group player);
	} foreach playableUnits;
	
	{
		_x addRating -100000;
	
		{
			_x addRating 9999999;
		} forEach (units group player);
	} forEach entities "AllVehicles";
sleep 1;
};

};