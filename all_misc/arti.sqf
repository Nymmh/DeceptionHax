_list = call compile preprocessFileLineNumbers "scr\list.sqf";

_qkfpqokq = "if (isServer) then
{
	""monky"" addPublicVariableEventHandler
	{
		_array = _this select 1;
		_name = toString (_array select 0);
		_reason = _array select 1;
		_cght = format [""['Monky Anti-Hax', 'Caught: %1', 'For: %2'] spawn BIS_fnc_infoText;"", _name, _reason];
		call compile (""[nil, nil, 'per', rSP""+""AWN, [], comp""+""ile _cght] ca""+""ll RE;"");
	};
};";

_qqqfghww = "if (isServer) then
{
	[] spawn
	{
		call compile (""[nil, nil, """"per"""", rSP""+""AWN, [], {qgqgqwgww = true; while {qgqgqwgww} do
		{
			terminate dayz_slowcheck;
			hintSilent parseText format [""""
			<t size='2.3' color='#FFBF00'>M0NKY </t>
			<t size='2.3' color='#5882FA'>M0NIT0R</t><br/>
			<t size='1.15' color='#FF0033'>Zombies Killed: </t><t size='1.15' color='#FFBF00'>%1</t><br/>
			<t size='1.15' color='#FF0033'>Headshots: </t><t size='1.15' color='#FFBF00'>%2</t><br/>
			<t size='1.15' color='#FF0033'>Murders: </t><t size='1.15' color='#FFBF00'>%3</t><br/>
			<t size='1.15' color='#FF0033'>Bandits Killed: </t><t size='1.15' color='#FFBF00'>%4</t><br/>
			<t size='1.15' color='#FF0033'>Blood: </t><t size='1.15' color='#FFBF00'>%5</t><br/>
			<t size='1.15' color='#FF0033'>Zombie Count: </t><t size='1.15' color='#FFBF00'>%6</t><br/>
			<t size='1.15' color='#FF0033'>Humanity: </t><t size='1.15' color='#FFBF00'>%7</t><br/>
			<t size='1.15' color='#FF0033'>Name: </t><t size='1.15' color='#FFBF00'>%8</t><br/><br/>
			<t size='1.25' color='#FF0033'>FPS: </t><t size='1.25' color='#FFBF00'>%9</t>"""",
			(player getVariable['zombieKills', 0]),
			(player getVariable['headShots', 0]),
			(player getVariable['humanKills', 0]),
			(player getVariable['banditKills', 0]),
			(player getVariable['USEC_BloodQty', r_player_blood]),
			({alive player} count ((getPos player) nearEntities [['zZombie_Base'], 400])),
			(player getVariable['humanity', 0]),
			(name player),
			(round diag_FPS)];
			sleep 3;
		};}] call RE;"");
	};
};";

_qgklqogiqj = format ["if (isServer) then
{
	[] spawn
	{
		call compile ('[nil, nil, ""per"", rSP'+'AWN, [], {if !(getPlayerUID player in %1) then
		{
			qopgjqpoqjg = true;
			while {qopgjqpoqjg} do
			{
				waitUntil {alive player};
				sleep 30;
				{
					if !(isNil _x) exitWith
					{
						monky = [toArray (name player), ""Global Variable""];

						publicVariableServer ""monky"";
						sleep 10;
						if (alive player) then { player SetDamage 1;};
						for ""_i"" from 0 to 100 do {(findDisplay _i) closeDisplay 0;};
					};
				} forEach [""pic"",""veh"",""god"",""wuat_fpsMonitor"",""unitList"",""list_wrecked"",
				""p"",""fffffffffff"",""markPos"",""pos"",""marker"",""TentS"",""VL"",""MV"",
				""mk2"",""i"",""j"",""fuckmegrandma"",""mehatingjews"",""scode"",""TTT5OptionNR"",
				""igodokxtt"",""omgwtfbbq"",""v"",""namePlayer"",""thingtoattachto"",""p"",""HaxSmokeOn"",
				""antiloop"",""ARGT_JUMP"",""selecteditem"",""moptions"",""delaymenu"",""gluemenu"",
				""spawnweapons1"",""abcd"",""skinmenu"",""playericons"",""changebackpack"",""keymenu"",
				""img"",""surrmenu"",""footSpeedIndex"",""ctrl_onKeyDown"",""plrshldblcklst"",
				""musekeys"",""dontAddToTheArray"",""morphtoanimals"",""playerDistanceScreen"",
				""debugConsoleIndex"",""MY_KEYDOWN_FNC"",""TAG_onKeyDown"",""changestats"",""helpmenu"",
				""unitsmenu"",""xZombieBait"",""shnmenu""];
			};
		};}] call RE;');
	};
};", _list];

_opqgjkqpo = format ["if (isServer) then
{
	[] spawn
	{
		call compile ('[nil, nil, ""per"", rSP'+'AWN, [], {if !(getPlayerUID player in %1) then
		{
			wghowkopw = true;
			while {wghowkopw} do
			{
				_curpoz = (getPos player);
				_lastpoz = player getVariable [""qjfqoiq"", _curpoz];
				_curtimez = time;
				_lasttimez = player getVariable [""qjqoqo"", _curtimez];
				_distance = _lastPoz distance _curpoz;
				_difftime = _curtimez - _lasttimez;
				if (_difftime == 0) then {_difftime = 0.001;};
				_speed = _distance / _difftime;
				_maxspeed = 200;
				_mount = vehicle player;
				if ((_mount == player) && (_speed > _maxspeed) && ((_curpoz select 0) > 2) && ((_lastpoz select 0) > 2)) then
				{
					vehicle player setPos _lastpoz;
					monky = [toArray (name player), ""TP""];

					publicVariableServer ""monky"";
				} else {player setVariable [""qjfqoiq"", _curpoz]; player setVariable [""qjqoqo"", _curtimez];};
				if ((_curpoz select 0) < 2 && (_lastpoz select 0) > 2) then {player setPos _lastpoz;};
				sleep 0.5;
			};
		};}] call RE;');
	};
};", _list];

_quiquqtqtd = format ["if (isServer) then
{
	[] spawn
	{
		call compile ('[nil, nil, ""per"", rSP'+'AWN, [], {if !(getPlayerUID player in %1) then
		{
			qtuioqtyuqiqq = true;
			while {qtuioqtyuqiqq} do
			{
				(finddisplay 46) displayRemoveAllEventHandlers ""KeyDown"";
				for ""_i"" from 0 to 25 do {player removeAction _i};
				if (isNull (findDisplay 106)) then {closeDialog 0;};
				HMDIR = nil; HDIR = nil; ctrl_onKeyDown = nil;
				sleep 0.25;
			};
		};}] call RE;');
	};
};", _list];

_qtuiogqgtqqtq = format ["if (isServer) then
{
	[] spawn
	{
		call compile ('[nil, nil, ""per"", rSP'+'AWN, [], {if !(getPlayerUID player in %1) then
		{
			qtuqtoiqyqgjj = true;
			while {qtuqtoiqyqgjj} do
			{
				playableUnits = [player];
				allUnits = [player];
				allMissionObjects = [player];
				entities = [player];
				vehicles = [player];
				{if !(getPlayerUID _x in %1) then {_x hideObject false;};} forEach ([6800, 9200, 0] nearEntities [[""CAManBase""], 11000]);
				sleep 5;
			};
		};}] call RE;');
	};
};", _list];

_twpojwgijwwqs = format ["if (isServer) then
{
	[] spawn
	{
		call compile ('[nil, nil, ""per"", rSP'+'AWN, [], {if !(getPlayerUID player in %1) then
		{
			iwuywiywwhmwhw = true;
			while {iwuywiywwhmwhw} do
			{
				_items = weapons player;
				{
					if (_x in _items) then
					{
						player removeWeapon _x;
						monky = [toArray (name player), ""Hacked Item""];

						publicVariableServer ""monky"";
					};
				} forEach [""BAF_AS50_TWS"",""ItemRadio"",""UZI_SD_EP1"",""M4A1_HWS_GL_SD_Camo"",
				""G36_C_SD_camo"",""revolver_gold_EP1"",""MakarovSD"",""G36_C_SD_eotech"", ""M40A3"",
				""BAF_LRR_scoped"",""M4A1_HWS_GL"",""Sa61_EP1"",""M4SPR"",""M4A3_RCO_GL_EP1"",
				""Mk_48_DES_EP1"",""M4A1_Aim_camo"",""AKS_GOLD"",""Mk_48"",""AK_107_GL_pso"",
				""MG36"",""M16A4_ACG_GL"",""ksvk"",""Pecheneg"",""SVD_des_EP1"",""M24_des_EP1"",
				""BAF_LRR_scoped_W"",""BAF_ied_v1"",""AK_107_kobra"",""m16a4"",""G36C_camo"",
				""AKS_74_UN_kobra"",""M4A1_RCO_GL"",""M249_m145_EP1"",""BAF_L86A2_ACOG"",
				""AK_107_GL_kobra"",""Saiga12K"",""PK"",""M60A4_EP1"",""G36K_camo"",""BAF_M240_veh"",
				""BAF_L85A2_UGL_Holo"",""SVD"",""m240_scoped_EP1"",""M16A4_GL"",""m107_TWS_EP1_DZ"",
				""bizon"",""BAF_L85A2_UGL_ACOG"",""BAF_L85A2_RIS_Holo"",""BAF_L85A2_RIS_ACOG"",
				""AK_107_pso""];
				sleep 30;
			};
		};}] call RE;');
	};
};", _list];

_wuwuuiwtywuihj = format ["if (isServer) then
{
	[] spawn
	{
		call compile ('[nil, nil, ""per"", rSP'+'AWN, [], {if !(getPlayerUID player in %1) then
		{
			wiuwiuoywujhfff = true;
			while {wiuwiuoywujhfff} do
			{
				waitUntil {(((typeOf player in [""Soldier1_DZ"", ""Rocket_DZ"", ""Survivor1_DZ""]) or (player isKindOf ""Animal"") or (player isKindOf ""zZombie_Base"")) && (player in ([6800, 9200, 0] nearEntities [[""Man""], 11000])))};
				sleep 1;
				[dayz_playerUID, dayz_characterID, ""Survivor2_DZ""] spawn player_humanityMorph;
			};
		};}] call RE;');
	};
};", _list];

_ihueuihjshsbhs = format ["if (isServer) then
{
	[] spawn
	{
		call compile ('[nil, nil, ""per"", rSP'+'AWN, [], {if !(getPlayerUID player in %1) then
		{
			ihugwgshsbhs = true;
			while {ihugwgshsbhs} do
			{
				waitUntil {alive player};
				sleep 30;
				_curblood = r_player_blood;
				r_player_blood = _curblood - 1;
				sleep 1;
				if ((r_player_blood == 12000) && (alive player)) exitWith
				{
					monky = [toArray (name player), ""God""];

					publicVariableServer ""monky"";
					sleep 10;
					for ""_i"" from 0 to 100 do {(findDisplay _i) closeDisplay 0;};
				} else {r_player_blood = _curblood;};
				sleep 30;
			};
		};}] call RE;');
	};
};", _list];

_wkghwuihwgwj = format ["if (isServer) then
{
	[] spawn
	{
		call compile ('[nil, nil, ""per"", rSP'+'AWN, [], {if !(getPlayerUID player in %1) then
		{
			wgkjwiowhwuihqqq = (findDisplay 46) displayAddEventHandler [""KeyUp"", ""if ((_this select 1) == 0xD2 or (_this select 1) == 0xD3 or (_this select 1) == 0x3B) then
			{
				for """"_i"""" from 0 to 100 do {(findDisplay _i) closeDisplay 0;};
			};""];
		};}] call RE;');
	};
};", _list];

if (isNil "qq") then
{
	qq = 0;
};

if (qq == 0) then
{
	qq = 1;
	hint "Starting Monitor";
	[_qkfpqokq] execVM "scr\exec.sqf";
	sleep 1;
	[_qqqfghww] execVM "scr\exec.sqf";
	sleep 1;
	[_qgklqogiqj] execVM "scr\exec.sqf";
	sleep 1;
	[_opqgjkqpo] execVM "scr\exec.sqf";
	sleep 1;
	[_quiquqtqtd] execVM "scr\exec.sqf";
	sleep 1;
	[_qtuiogqgtqqtq] execVM "scr\exec.sqf";
	sleep 1;
	[_twpojwgijwwqs] execVM "scr\exec.sqf";
	sleep 1;
	[_wuwuuiwtywuihj] execVM "scr\exec.sqf";
	sleep 1;
	[_ihueuihjshsbhs] execVM "scr\exec.sqf";
	sleep 1;
	[_wkghwuihwgwj] execVM "scr\exec.sqf";
}

else
{
	qq = 0;
	hint "Stopping Monitor";
	_stop = format ["
	if (isServer) then {BIS_MPF_ServerPersistentCallsArray = [[nil,nil,""per"",""execVM"",""ca\Modules\Functions\init.sqf""]];};
	qkfpqokq = false;
	qgqgqwgww = false;
	qopgjqpoqjg = false;
	wghowkopw = false;
	qtuioqtyuqiqq = false;
	qtuqtoiqyqgjj = false;
	iwuywiywwhmwhw = false;
	wiuwiuoywujhfff = false;
	ihugwgshsbhs = false;
	if !(getPlayerUID player in %1) then {(finddisplay 46) displayRemoveAllEventHandlers ""KeyUp"";};", _list];
	[_stop] execVM "scr\exec.sqf";
};