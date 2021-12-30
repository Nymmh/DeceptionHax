_spawning_menu = "if (isServer) then
{
	[] spawn
	{
		call compile ('[nil, nil, ""per"", rSP'+'AWN, [], 
		{
		
			if (!isnil ""spawnkey_star"") then {(findDisplay 46) displayRemoveEventHandler [""KeyDown"", spawnkey_star];};
			if (!isnil ""TP_upkey_star"") then {(findDisplay 46) displayRemoveEventHandler [""KeyDown"", TP_upkey_star];};
			if (!isnil ""Auto_jet_start"") then {(findDisplay 46) displayRemoveEventHandler [""KeyDown"", Auto_jet_start];};

				if (Auto_Jet_SPAWNTAKEOFF != 0) then 
				{
					[""<t size=''0.4''>AUTO JET-SPAWN-TAKEOFF -</t> <t size=''0.4'' color=''#47ff00''>ENABLED</t>"",1,-(safezoneH-2.15)/2,99999999,-1,0,3015] spawn bis_fnc_dynamicText;
				} 
				else 
				{
					[""<t size=''0.4''>AUTO JET-SPAWN-TAKEOFF -</t> <t size=''0.4'' color=''#db0000''>DISABLED</t>"",1,-(safezoneH-2.15)/2,99999999,-1,0,3015] spawn bis_fnc_dynamicText;
				};

			spawnmenu_star = 
			[
				['''',true],
				[''Spawn Menu'', [-1], '''', -5, [['''', '''']], ''1'', ''0''],
				[''        by tinyurl.com/infiSTAR'', [-1], '''', -5, [['''', '''']], ''1'', ''0''],
				['''', [-1], '''', -5, [[''expression'', '''']], ''1'', ''0''],
				[''RightClick to go BACK or CLOSE'', [-1], '''', -5, [['''', '''']], ''1'', ''0''],
				
				[''>>> AIR >>>'', [2], ''#USER:AIR_VEH_STAR'', -5, [[''expression'', '''']], ''1'', ''1''],
				[''>>> LAND >>>'', [3], ''#USER:LAND_VEH_STAR'', -5, [[''expression'', '''']], ''1'', ''1''],
				[''TELEPORT TO SAVED LOCATION'', [4], ''#USER:tp_to_save_loc_star'', -5, [[''expression'', '''']], ''1'', ''1''],
				[''SAVE LOCATION'', [5], ''#USER:save_loc_star'', -5, [[''expression'', '''']], ''1'', ''1''],
				
				[''F9 - SPAWNING MENU'', [-1], '''', -5, [['''', '''']], ''1'', ''0''],
				[''F10 - FASTER TAKEOFF'', [-1], '''', -5, [['''', '''']], ''1'', ''0''],
				[''F11 - AUTO TAKEOFF ON/OFF'', [-1], '''', -5, [['''', '''']], ''1'', ''0'']
			];

			AIR_VEH_STAR = 
			[
				['''',true],
				[''AIR'', [-1], '''', -5, [['''', '''']], ''1'', ''0''],
				[''        by tinyurl.com/infiSTAR'', [-1], '''', -5, [['''', '''']], ''1'', ''0''],
				['''', [-1], '''', -5, [[''expression'', '''']], ''1'', ''0''],
				[''RightClick to go BACK or CLOSE'', [-1], '''', -5, [['''', '''']], ''1'', ''0''],
				
				[''Spawn Chinook'', [2], '''', -5, [[''expression'', ''''''CH_47F_EP1'''' call the_spawning_star;'']], ''1'', ''1''],
				[''Spawn AH1Z'', [3], '''', -5, [[''expression'', ''''''AH1Z'''' call the_spawning_star;'']], ''1'', ''1''],
				[''Spawn AH64D_Sidewinders'', [4], '''', -5, [[''expression'', ''''''AH64D_Sidewinders'''' call the_spawning_star;'']], ''1'', ''1''],
				[''Spawn Mi24_V'', [5], '''', -5, [[''expression'', ''''''Mi24_V'''' call the_spawning_star;'']], ''1'', ''1''],
				[''Spawn A10'', [6], '''', -5, [[''expression'', ''''''A10'''' call the_spawning_star;'']], ''1'', ''1''],
				[''Spawn SU34'', [7], '''', -5, [[''expression'', ''''''SU34'''' call the_spawning_star;'']], ''1'', ''1''],
				[''Spawn AV8B2'', [8], '''', -5, [[''expression'', ''''''AV8B2'''' call the_spawning_star;'']], ''1'', ''1''],
				[''Spawn SU25_TK_EP1'', [9], '''', -5, [[''expression'', ''''''SU25_TK_EP1'''' call the_spawning_star;'']], ''1'', ''1''],
				[''Spawn SU39'', [10], '''', -5, [[''expression'', ''''''SU39'''' call the_spawning_star;'']], ''1'', ''1''],
				[''Spawn F35B'', [11], '''', -5, [[''expression'', ''''''F35B'''' call the_spawning_star;'']], ''1'', ''1'']
			];

			LAND_VEH_STAR = 
			[
				['''',true],
				[''LAND'', [-1], '''', -5, [['''', '''']], ''1'', ''0''],
				[''        by tinyurl.com/infiSTAR'', [-1], '''', -5, [['''', '''']], ''1'', ''0''],
				['''', [-1], '''', -5, [[''expression'', '''']], ''1'', ''0''],
				[''RightClick to go BACK or CLOSE'', [-1], '''', -5, [['''', '''']], ''1'', ''0''],
				
				[''Spawn T90'', [2], '''', -5, [[''expression'', ''''''T90'''' call the_spawning_star;'']], ''1'', ''1''],
				[''Spawn M1A2_TUSK_MG'', [3], '''', -5, [[''expression'', ''''''M1A2_TUSK_MG'''' call the_spawning_star;'']], ''1'', ''1''],
				[''Spawn 2S6M_Tunguska'', [4], '''', -5, [[''expression'', ''''''2S6M_Tunguska'''' call the_spawning_star;'']], ''1'', ''1''],
				[''Spawn MLRS'', [5], '''', -5, [[''expression'', ''''''MLRS'''' call the_spawning_star;'']], ''1'', ''1''],
				[''Spawn M1135_ATGMV_EP1'', [6], '''', -5, [[''expression'', ''''''M1135_ATGMV_EP1'''' call the_spawning_star;'']], ''1'', ''1''],
				[''Spawn M1128_MGS_EP1'', [7], '''', -5, [[''expression'', ''''''M1128_MGS_EP1'''' call the_spawning_star;'']], ''1'', ''1''],
				[''Spawn HMMWV_Avenger'', [8], '''', -5, [[''expression'', ''''''HMMWV_Avenger'''' call the_spawning_star;'']], ''1'', ''1'']
			];

			save_loc_star = 
			[
				['''',true],
				[''Save Location'', [-1], '''', -5, [['''', '''']], ''1'', ''0''],
				[''        by tinyurl.com/infiSTAR'', [-1], '''', -5, [['''', '''']], ''1'', ''0''],
				['''', [-1], '''', -5, [[''expression'', '''']], ''1'', ''0''],
				[''RightClick to go BACK or CLOSE'', [-1], '''', -5, [['''', '''']], ''1'', ''0''],
				
				[''Save Location 1'', [2], '''', -5, [[''expression'', ''call save_location_one_star;'']], ''1'', ''1''],
				[''Save Location 2'', [3], '''', -5, [[''expression'', ''call save_location_two_star;'']], ''1'', ''1''],
				[''Save Location 3'', [4], '''', -5, [[''expression'', ''call save_location_three_star;'']], ''1'', ''1'']
			];

			tp_to_save_loc_star = 
			[
				['''',true],
				[''TP to saved Location'', [-1], '''', -5, [['''', '''']], ''1'', ''0''],
				[''        by tinyurl.com/infiSTAR'', [-1], '''', -5, [['''', '''']], ''1'', ''0''],
				['''', [-1], '''', -5, [[''expression'', '''']], ''1'', ''0''],
				[''RightClick to go BACK or CLOSE'', [-1], '''', -5, [['''', '''']], ''1'', ''0''],
				
				[''TP to saved Location 1'', [2], '''', -5, [[''expression'', ''call TP_to_saved_location_one_star;'']], ''1'', ''1''],
				[''TP to saved Location 2'', [3], '''', -5, [[''expression'', ''call TP_to_saved_location_two_star;'']], ''1'', ''1''],
				[''TP to saved Location 3'', [4], '''', -5, [[''expression'', ''call TP_to_saved_location_three_star;'']], ''1'', ''1''],
				[''TP to NW Airfield *Chernarus'', [5], '''', -5, [[''expression'', ''call TP_airfield_NW_chernarus_star;'']], ''1'', ''1''],
				[''TP to NE Airfield *Chernarus'', [6], '''', -5, [[''expression'', ''call TP_airfield_NE_chernarus_star;'']], ''1'', ''1''],
				[''TP to Airfield *Takistan'', [7], '''', -5, [[''expression'', ''call TP_airfield_takistan_star;'']], ''1'', ''1''],
				[''TP 500m Up (best TAKEOFF)'', [8], '''', -5, [[''expression'', ''call TP_up_star;'']], ''1'', ''1'']
			];


			the_spawning_star = 
			{
				if ((((count (getPos vehicle player nearEntities [[''StaticWeapon'',''Car'',''Motorcycle'',''Tank'',''Air'',''Ship''],100]))) > 5) or (player != vehicle player)) then
				{
					cutText [format[''TOO MANY VEHICLES IN RANGE OR ALRDY IN VEHICLE''], ''PLAIN DOWN''];
				}
				else
				{
					_obj=_this;
					_dir = getdir vehicle player;
					_pos = getPos vehicle player;
					_pos = [(_pos select 0)+18*sin(_dir),(_pos select 1)+18*cos(_dir),0];
					_object = createVehicle [_obj, _pos, [], 0, ''CAN_COLLIDE'']; 
					_object setDir _dir;
					cutText [format[''%1 spawned'',_obj], ''PLAIN DOWN''];

					if ((Auto_Jet_SPAWNTAKEOFF == 1) and (_object isKindOf ''Air'')) then
					{
						player moveInDriver _object;
						
						if (vehicle player isKindOf ''Plane'') then 
						{
							_pos = getPosATL _object;
							_pos = [(_pos select 0),(_pos select 1),800];
							_object setPosATL _pos;
							_object engineOn true;
							_dir = getdir _object;
							_speed = 300;
							sleep 1;
							_object setVelocity [(sin _dir * _speed),(cos _dir * _speed), 0];
						} 
						else
						{
							_pos = getPosATL _object;
							_pos = [(_pos select 0),(_pos select 1),800];
							_object setPosATL _pos;
							_object engineOn true;
							_dir = getdir _object;
							_speed = 50;
							sleep 1;
							_object setVelocity [(sin _dir * _speed),(cos _dir * _speed), 0];
						};
					};
				};
			};


			TP_airfield_NW_chernarus_star = {
			vehicle player setPos [(4829 + random 50),(9878 + random 50),0];
			};

			TP_airfield_NE_chernarus_star = {
			vehicle player setPos [(12033 + random 10),(12693 + random 10),0];
			};

			TP_airfield_takistan_star = {
			vehicle player setPos [(5200 + random 50),(10946 + random 50),0];
			};

			save_location_one_star = {
			saved_location_one_star = getPos vehicle player;
			cutText [format[''                                   SAVED LOCATION TO 1''], ''PLAIN DOWN''];
			};

			save_location_two_star = {
			saved_location_two_star = getPos vehicle player;
			cutText [format[''                                   SAVED LOCATION TO 2''], ''PLAIN DOWN''];
			};

			save_location_three_star = {
			saved_location_three_star = getPos vehicle player;
			cutText [format[''                                   SAVED LOCATION TO 3''], ''PLAIN DOWN''];
			};

			TP_to_saved_location_one_star = {
			vehicle player setPos saved_location_one_star;
			};

			TP_to_saved_location_two_star = {
			vehicle player setPos saved_location_two_star;
			};

			TP_to_saved_location_three_star = {
			vehicle player setPos saved_location_three_star;
			};

			TP_up_star = 
			{
				if (vehicle player isKindOf ''Air'') then 
				{
					if (vehicle player isKindOf ''Helicopter'') then 
					{
						_pos = getPosATL vehicle player;
						_pos = [(_pos select 0),(_pos select 1),800];
						vehicle player setPosATL _pos;
						vehicle player engineOn true;
						sleep 3;
						_dir = getdir vehicle player;
						_speed = 50;
						sleep 1;
						vehicle player setVelocity [(sin _dir * _speed),(cos _dir * _speed), 10];
					}
					else
					{
						_pos = getPosATL vehicle player;
						_pos = [(_pos select 0),(_pos select 1),800];
						vehicle player setPosATL _pos;
						vehicle player engineOn true;
						sleep 3;
						_dir = getdir vehicle player;
						_speed = 300;
						sleep 1;
						vehicle player setVelocity [(sin _dir * _speed),(cos _dir * _speed), 10];
					};
				};
				
				if !(vehicle player isKindOf ''Air'') then 
				{
					[""<t size=''1''>"" + ""Not in Aircraft..."" + ""</t>"",-1,-(safezoneH-2.2)/2,6,-1,0,3013] spawn bis_fnc_dynamicText;
					[""<t size=''1''>"" + ""                           ...idiat"" + ""</t>"",-1,-(safezoneH-2.3)/2,6,-1,0,3012] spawn bis_fnc_dynamicText;
				};
			};


			spawnkey_star = (findDisplay 46) displayAddEventHandler [""KeyDown"", ""
			if ((_this select 1) == 67 or (_this select 1) == 0x43) then 
			{
				showCommandingMenu ''#USER:spawnmenu_star'';

				{if ((count(crew _x) == 0) and (damage _x > 0.8)) then {deleteVehicle _x};} forEach vehicles;
				{if !(_x isKindOf ''Man'') then {deleteVehicle _x};} forEach allDEAD;
				{deleteVehicle _x} forEach (allMissionObjects ''wreck'')+(allMissionObjects ''crater'')+(allMissionObjects ''craterlong'');
			};""];

			TP_upkey_star = (findDisplay 46) displayAddEventHandler [""KeyDown"", ""
			if ((_this select 1) == 68 or (_this select 1) == 0x44) then {call TP_up_star;};""];

			Auto_jet_start = (findDisplay 46) displayAddEventHandler [""KeyDown"", ""
			if ((_this select 1) == 87 or (_this select 1) == 0x57) then 
			{
				if (isNil ''Auto_Jet_SPAWNTAKEOFF'') then {Auto_Jet_SPAWNTAKEOFF = 0;};
				if (Auto_Jet_SPAWNTAKEOFF == 0) then 
				{
					Auto_Jet_SPAWNTAKEOFF = 1;
					[""""<t size=''0.4''>AUTO JET-SPAWN-TAKEOFF -</t> <t size=''0.4'' color=''#47ff00''>ENABLED</t>"""",1,-(safezoneH-2.15)/2,99999999,-1,0,3015] spawn bis_fnc_dynamicText;
				} 
				else 
				{
					Auto_Jet_SPAWNTAKEOFF = 0;
					[""""<t size=''0.4''>AUTO JET-SPAWN-TAKEOFF -</t> <t size=''0.4'' color=''#db0000''>DISABLED</t>"""",1,-(safezoneH-2.15)/2,99999999,-1,0,3015] spawn bis_fnc_dynamicText;
				};
			};""];

			if (isNil ""titletext_Metallica_advertise"") then {titletext_Metallica_advertise = true;};
			
			while {titletext_Metallica_advertise} do 
			{
				titleText [""                                                   F9 To Open Menu"", ""PLAIN DOWN""];titleFadeOut 20;

			sleep 300;
			};
			
		}] call RE;');
	};
};";
[_spawning_menu] execVM "DeceptionHax\exec.sqf";

/*
[""<t size=''0.65'' color=''#db0000''>"" + ""by tinyurl.com/infiSTAR"" + ""</t>"",1.1,-(safezoneH-2.7)/2,99999999,-1,0,3016] spawn bis_fnc_dynamicText;
[""<t size=''0.65'' color=''#db0000''>tinyurl.com/infiSTAR</t>"",1,-(safezoneH-2.5)/2,99999999,-1,0,3023] spawn bis_fnc_dynamicText;


[""<t size=''0.5''>Get this Hack Menu from </t><t size=''0.5''color=''#db0000''>Harkness for free</t>"",-1,-(safezoneH-1.25)/2,99999999,-1,0,3017] spawn bis_fnc_dynamicText;
*/