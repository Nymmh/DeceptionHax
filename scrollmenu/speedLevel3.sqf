if (isnil("speedhaxx0r_star")) then {speedhaxx0r_star = 0;};
if (speedhaxx0r_star == 0) then 
{ 
	speedhaxx0r_star = 1;
	hint "Speehack 3";
	cutText [format["Speehack 3"], "PLAIN DOWN"];

	waituntil {!isnull (finddisplay 46)};

	fuckthis_speedhaxxx0000rrrr_Metallica_xd = (findDisplay 46) displayAddEventHandler ["KeyDown","_this select 1 call MY_KEYDOWN_FNC;false;"];

	MY_KEYDOWN_FNC = 
	{
		_vehicle_player = vehicle player;
		if(_vehicle_player == player)exitwith{};
		_nos = _vehicle_player getvariable "boost_shiftl";
		_supgrade = _vehicle_player getvariable "boost_e";

		if(isEngineOn _vehicle_player) then 
		{
			switch (_this) do 
			{
				case 18: /* KEY E */
				{
					if(isEngineOn _vehicle_player and !isnil "_supgrade") then 
					{
						_vehicle_player SetVelocity [(velocity _vehicle_player select 0) * 1.20, (velocity _vehicle_player select 1) *1.20, (velocity _vehicle_player select 2) * 0.99];
					} 
					else 
					{
						_vehicle_player setvariable ["boost_e", 1, true];
					};
				};
				case 42: /* KEY SHIFTL */
				{
					if(isEngineOn _vehicle_player and !isnil "_nos") then
					{
						_vehicle_player setVelocity [(velocity _vehicle_player select 0) * 1.10, (velocity _vehicle_player select 1) * 1.10, (velocity _vehicle_player select 2) * 1.10];
					} 
					else 
					{
						_vehicle_player setvariable ["boost_shiftl", 1, true];
					};
				};
			};
		};
	};
}
else
{	speedhaxx0r_star = 0;
	hint "Speehack 0";
	cutText [format["Speehack 0"], "PLAIN DOWN"];
	
	(findDisplay 46) displayRemoveEventHandler ["KeyDown", fuckthis_speedhaxxx0000rrrr_Metallica_xd];
	_nos = nil;
	_vehicle_player = nil;
};