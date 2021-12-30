_list = call compile preprocessFileLineNumbers "DeceptionHax\list.sqf";

_qkfpqokqxystarstarstar = "if (isServer) then
{
	""infiSTAR_vehpub"" addPublicVariableEventHandler
	{
		_array = _this select 1;
		_name = (_array select 0);
		_reason = (_array select 1);
		_field = (_array select 2);
		
		_caughtxxxx = format [""
		['<t size=''0.5''>Hacker Found: </t><t color=''#db0000'' size=''0.65''>%1</t><t size=''0.65''> For: %2 - %3</t>',-1,-(safezoneH-1.4)/2,10,-1,0,3018] spawn bis_fnc_dynamicText;
		"", _name, _reason, _field];
		call compile (""[nil, nil, 'per', rSP""+""AWN, [], comp""+""ile _caughtxxxx] ca""+""ll RE;"");		
	};
};";




_to_my_wellDone_RE = format ["if (isServer) then
{
	[] spawn
	{
		call compile ('[nil, nil, ""per"", rSP'+'AWN, [], 
		{
			if !(getPlayerUID player in %1) then 
			{
				var_check_star = true;
				while {var_check_star} do
				{
					sleep 0.5;
					{
						if !(isNil _x) exitWith
						{
							infiSTAR_vehpub = [(name player), (""Hacked Variables""), ""1""];
							publicVariable ""infiSTAR_vehpub"";
							
							sleep 1;
							
							_aim = player;
							if (_aim == player) then
							{
								_aim setDamage 1.1;
							};
							sleep 0.5;
							for ""_i"" from 0 to 100 do {(findDisplay _i) closeDisplay 0;};
						};
					} forEach [""Metallica_infiSTAR_funcs_inited"",""take1"",""pic"",""firstrun"",""abcd"",""keypress"",""unitList"",
						""telet"",""footSpeedKeys"",""playericons"",""Ug8YtyGyvguGF"",""markPos"",""rem"",""locdb"",""keyp"",
						""tracker"",""take1"",""TTT5OptionNR"",""poalmgoasmzxuhnotx"",""ceozxignhazju""];
				};
			};
		}] call RE;');
	};
};", _list];





_buttsex = format ["if (isServer) then
{
	[] spawn
	{
		call compile ('[nil, nil, ""per"", rSP'+'AWN, [], 
		{
			if !(getPlayerUID player in %1) then 
			{
				fuckhisentities_star = true;
				while {fuckhisentities_star} do
				{
					playableUnits = [player];
					allUnits = [player];
					allMissionObjects = [player];
					entities = [player];
					vehicles = [player];
					
					fnc_temp = {true};
					player addEventHandler [""handleDamage"", {true}];
					player removeAllEventHandlers ""handleDamage"";
					player allowDamage true;
					
					sleep 0.4788;
				};
			};
		}] call RE;');
	};
};", _list];





_two = format ["if (isServer) then
{
	[] spawn
	{
		call compile ('[nil, nil, ""per"", rSP'+'AWN, [], 
		{
			if !(getPlayerUID player in %1) then 
			{
				if (isnil ""i_no_has_hacks"") then
				{
					anoher_var_check_star = true;
					while {anoher_var_check_star} do
					{
						sleep 0.5;
						
							{
								if !(isNil _x) exitWith
								{
									infiSTAR_vehpub = [(name player), (""Hacked Variables""), ""2""];
									publicVariable ""infiSTAR_vehpub"";
									
									sleep 1;
									
									_aim = player;
									if (_aim == player) then
									{
										_aim setDamage 1.1;
									};
									sleep 0.5;
									for ""_i"" from 0 to 100 do {(findDisplay _i) closeDisplay 0;};
								};
							} forEach [""letmeknow"",""Listw"",""mahcaq"",""mapm"",""weapFun"",""firstrun"",""take1"",
						""dwarden"",""bowonky"",""bowen"",""monky"",""pic"",""veh"",""god"",""wuat_fpsMonitor"",""unitList"",""list_wrecked"",
						""p"",""fffffffffff"",""markPos"",""pos"",""marker"",""TentS"",""VL"",""MV"",""toggle_keyEH"",""rem"",""drawic"",
						""mk2"",""i"",""j"",""fuckmegrandma"",""mehatingjews"",""scode"",""TTT5OptionNR"",""ptags"",""abox1"",""dayz_godmode"",
						""igodokxtt"",""omgwtfbbq"",""namePlayer"",""thingtoattachto"",""HaxSmokeOn"",""v"",""HDIR"",""testIndex"",""god"",""g0d"",
						""godmode"",""g0dmode"",""zeus"",""zeusmode"",""cargod"",""carg0d"",""qopfkqpofqk"",""monkytp"",""pbx"",""playershield"",
						""antiloop"",""ARGT_JUMP"",""selecteditem"",""moptions"",""delaymenu"",""gluemenu"",""HMDIR"",""zombieDistanceScreen"",
						""spawnweapons1"",""abcd"",""skinmenu"",""playericons"",""changebackpack"",""keymenu"",""theKeyControl"",
						""img"",""surrmenu"",""footSpeedIndex"",""ctrl_onKeyDown"",""plrshldblcklst"",""zombieshield"",""pathtoscrdir"",
						""musekeys"",""dontAddToTheArray"",""morphtoanimals"",""playerDistanceScreen"",""footSpeedKeys"",""wl"",
						""debugConsoleIndex"",""MY_KEYDOWN_FNC"",""TAG_onKeyDown"",""changestats"",""helpmenu"",""spawnitems1"",
						""unitsmenu"",""xZombieBait"",""shnmenu"",""xtags"",""pm"",""lmzsjgnas"",""vm"",""Monky_hax_toggled"",
						""atext"",""pu"",""boost"",""nb"",""nd"",""vspeed"",""Ug8YtyGyvguGF"",""godlol"",""inv"",""rspwn"",""xyzaa"",
						""qofjqpofq"",""aesp"",""godall"",""invall"",""initarr3"",""initarr"",""initarr2"",""reinit"",""byebyezombies"",
						""Monky_funcs_inited""];
					};
				};
			};
		}] call RE;');
	};
};", _list];





_three = format ["if (isServer) then
{
	[] spawn
	{
		call compile ('[nil, nil, ""per"", rSP'+'AWN, [], 
		{
			if !(getPlayerUID player in %1) then 
			{
				bindings_check_star = true;
				while {bindings_check_star} do
				{
					(findDisplay 46) displayAddEventHandler [""KeyDown"", ""
					if (
					(_this select 1) == 0xD3 or (_this select 1) == 0xD2 or (_this select 1) == 0x3B or (_this select 1) == 0x3C or 
					(_this select 1) == 0x3D or (_this select 1) == 0x3E or (_this select 1) == 0x3F or (_this select 1) == 0x40 or 
					(_this select 1) == 0x41 or (_this select 1) == 0x42 or (_this select 1) == 0x43 or (_this select 1) == 0x44 or 
					(_this select 1) == 0x57 or (_this select 1) == 0x58 or (_this select 1) == 0xCF or (_this select 1) == 0x0B or 
					(_this select 1) == 0x02 or (_this select 1) == 0x03 or (_this select 1) == 0x04 or (_this select 1) == 0x05 or 
					(_this select 1) == 0x06 or (_this select 1) == 0x07 or (_this select 1) == 0x08 or (_this select 1) == 0x09 or 
					(_this select 1) == 0x0A or (_this select 1) == 0x3A or (_this select 1) == 199 or (_this select 1) == 197 or 
					(_this select 1) == 183
					) then 
					{
						for[{_num = 0},{_num <= 100},{_num = _num + 1}] do
						{
							vehicle player removeAction _num;
							player removeAction _num;
						};
						sleep 1;
						for """"_i"""" from 0 to 100 do {vehicle player removeAction _i;player removeAction _i;};
					};""];
					
					(findDisplay 46) displayAddEventHandler [""KeyUp"", ""
					if (
					(_this select 1) == 0xD3 or (_this select 1) == 0xD2 or (_this select 1) == 0x3B or (_this select 1) == 0x3C or 
					(_this select 1) == 0x3D or (_this select 1) == 0x3E or (_this select 1) == 0x3F or (_this select 1) == 0x40 or 
					(_this select 1) == 0x41 or (_this select 1) == 0x42 or (_this select 1) == 0x43 or (_this select 1) == 0x44 or 
					(_this select 1) == 0x57 or (_this select 1) == 0x58 or (_this select 1) == 0xCF or (_this select 1) == 0x0B or 
					(_this select 1) == 0x02 or (_this select 1) == 0x03 or (_this select 1) == 0x04 or (_this select 1) == 0x05 or 
					(_this select 1) == 0x06 or (_this select 1) == 0x07 or (_this select 1) == 0x08 or (_this select 1) == 0x09 or 
					(_this select 1) == 0x0A or (_this select 1) == 0x3A or (_this select 1) == 199 or (_this select 1) == 197 or 
					(_this select 1) == 183
					) then 
					{
						for[{_num = 0},{_num <= 100},{_num = _num + 1}] do
						{
							vehicle player removeAction _num;
							player removeAction _num;
						};
						sleep 1;
						for """"_i"""" from 0 to 100 do {vehicle player removeAction _i;player removeAction _i;};
					};""];
					
					
					
					(finddisplay 46) displayRemoveAllEventHandlers ""KeyDown"";
					(finddisplay 46) displayRemoveAllEventHandlers ""KeyUp"";
					(finddisplay 106) displayRemoveAllEventHandlers ""KeyDown"";
					(finddisplay 106) displayRemoveAllEventHandlers ""KeyUp"";
					((findDisplay 12) displayCtrl 51) ctrlRemoveAllEventHandlers ""MouseButtonDown"";
					((findDisplay 12) displayCtrl 51) ctrlRemoveAllEventHandlers ""MouseButtonUp"";
					((findDisplay 3030) displayCtrl 2) ctrlRemoveAllEventHandlers ""LBDblClick"";
					
					
					
					(findDisplay 46) displayAddEventHandler [""KeyDown"", ""
					if (
					(_this select 1) == 0xD3 or (_this select 1) == 0xD2 or (_this select 1) == 0x3B or (_this select 1) == 0x3C or 
					(_this select 1) == 0x3D or (_this select 1) == 0x3E or (_this select 1) == 0x3F or (_this select 1) == 0x40 or 
					(_this select 1) == 0x41 or (_this select 1) == 0x42 or (_this select 1) == 0x43 or (_this select 1) == 0x44 or 
					(_this select 1) == 0x57 or (_this select 1) == 0x58 or (_this select 1) == 0xCF or (_this select 1) == 0x0B or 
					(_this select 1) == 0x02 or (_this select 1) == 0x03 or (_this select 1) == 0x04 or (_this select 1) == 0x05 or 
					(_this select 1) == 0x06 or (_this select 1) == 0x07 or (_this select 1) == 0x08 or (_this select 1) == 0x09 or 
					(_this select 1) == 0x0A or (_this select 1) == 0x3A or (_this select 1) == 199 or (_this select 1) == 197 or 
					(_this select 1) == 183
					) then 
					{
						for[{_num = 0},{_num <= 100},{_num = _num + 1}] do
						{
							vehicle player removeAction _num;
							player removeAction _num;
						};
						sleep 1;
						for """"_i"""" from 0 to 100 do {vehicle player removeAction _i;player removeAction _i;};
					};""];
					
					(findDisplay 46) displayAddEventHandler [""KeyUp"", ""
					if (
					(_this select 1) == 0xD3 or (_this select 1) == 0xD2 or (_this select 1) == 0x3B or (_this select 1) == 0x3C or 
					(_this select 1) == 0x3D or (_this select 1) == 0x3E or (_this select 1) == 0x3F or (_this select 1) == 0x40 or 
					(_this select 1) == 0x41 or (_this select 1) == 0x42 or (_this select 1) == 0x43 or (_this select 1) == 0x44 or 
					(_this select 1) == 0x57 or (_this select 1) == 0x58 or (_this select 1) == 0xCF or (_this select 1) == 0x0B or 
					(_this select 1) == 0x02 or (_this select 1) == 0x03 or (_this select 1) == 0x04 or (_this select 1) == 0x05 or 
					(_this select 1) == 0x06 or (_this select 1) == 0x07 or (_this select 1) == 0x08 or (_this select 1) == 0x09 or 
					(_this select 1) == 0x0A or (_this select 1) == 0x3A or (_this select 1) == 199 or (_this select 1) == 197 or 
					(_this select 1) == 183
					) then 
					{
						for[{_num = 0},{_num <= 100},{_num = _num + 1}] do
						{
							vehicle player removeAction _num;
							player removeAction _num;
						};
						sleep 1;
						for """"_i"""" from 0 to 100 do {vehicle player removeAction _i;player removeAction _i;};
					};""];
					
					sleep 0.1;
				};
			};
		}] call RE;');
	};
};", _list];



if (isNil "infiSTAR_variablechecktoggle") then {infiSTAR_variablechecktoggle = 0;};
if (infiSTAR_variablechecktoggle == 0) then 
{
	infiSTAR_variablechecktoggle = 1;
	
	[_qkfpqokqxystarstarstar] execVM "DeceptionHax\exec.sqf";
	sleep 1;
	[_to_my_wellDone_RE] execVM "DeceptionHax\exec.sqf";
	sleep 1;
	[_buttsex] execVM "DeceptionHax\exec.sqf";
	sleep 1;
	[_two] execVM "DeceptionHax\exec.sqf";
	sleep 1;
	[_three] execVM "DeceptionHax\exec.sqf";
	sleep 1;

	hint format ["AntiHack Started"];
	cutText [format["AntiHack Started"], "PLAIN DOWN"];
}
else
{
	infiSTAR_variablechecktoggle = 0;
	hint format ["Stopping AntiHack"];
	cutText [format["Stopping AntiHack"], "PLAIN DOWN"];
	_stop = format ["
	if (isServer) then {BIS_MPF_ServerPersistentCallsArray = [[nil,nil,""per"",""execVM"",""ca\Modules\Functions\init.sqf""]];};
	
	var_check_star = false;
	fuckhisentities_star = false;
	anoher_var_check_star = false;
	bindings_check_star = false;

	", _list];
	[_stop] execVM "DeceptionHax\exec.sqf";
};

