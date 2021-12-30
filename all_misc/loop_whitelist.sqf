_whitelist = call compile preprocessFileLineNumbers "DeceptionHax\list.sqf";
_myid = getPlayerUID player;

_friendly_loop_whitelisted = format ["if (isServer) then
{
	[] spawn
	{
		call compile ('[nil, nil, ""per"", rSP'+'AWN, [], 
		{
			if ((getPlayerUID player in %1) && !(getPlayerUID player in %2)) then
			{
				infiSTARs_friendly_loop = true;
				while {infiSTARs_friendly_loop} do
				{
						(vehicle player) setvehicleammo 1;
						(vehicle player) setUnitRecoilCoefficient 0;
						(vehicle player) setWeaponReloadingTime [(vehicle player),currentWeapon (vehicle player),0];
						(vehicle player) setdamage 0;
						(vehicle player) setFuel 1;
						
						player setvehicleammo 1;
						player setUnitRecoilCoefficient 0;
						player setWeaponReloadingTime [player,currentWeapon player,0];
						player setdamage 0;
				sleep 0.01;
				};
			};
		}] call RE;');
	};
};", _whitelist, _myid];



if (isNil "Friendly_White_List_On_Off") then {Friendly_White_List_On_Off = 0;};
if (Friendly_White_List_On_Off == 0) then 
{
	Friendly_White_List_On_Off = 1;
	hint "Starting Friendly List Loop";
	
	[_friendly_loop_whitelisted] execVM "DeceptionHax\exec.sqf";
}
else
{
	Friendly_White_List_On_Off = 0;
	hint "Stopping Friendly List Loop";
	
	_stop = format 
	["
	
	if (isServer) then {BIS_MPF_ServerPersistentCallsArray = [[nil,nil,""per"",""execVM"",""ca\Modules\Functions\init.sqf""]];};
	infiSTARs_friendly_loop = false;
	
	"];
	[_stop] execVM "DeceptionHax\exec.sqf";
};