_name = _this select 0;
_dist = 1000;

if (isNil "initarr3") then {initarr3 = true; enamearr = [];};
if !(_name in enamearr) then
{
	hint format ["ESP on %1 Activated", _name]; enamearr = enamearr + [_name];
} else {hint format ["ESP on %1 Deactivated", _name]; enamearr = enamearr - [_name];};

_espfnc = format ["if (name player == ""%1"") then
{
	[] spawn
	{
		if !(isNil ""espfnc"") exitWith {ptags = false; espfnc = nil;};
		espfnc =
		{
			disableSerialization;
			if (isNil ""BIS_fnc_3dCredits_n"") then {BIS_fnc_3dCredits_n = 2733;};
			BIS_fnc_3dCredits_n cutRsc [""rscDynamicText"", ""PLAIN""];
			BIS_fnc_3dCredits_n = BIS_fnc_3dCredits_n + 1;
			_ctrl = ((uiNamespace getvariable ""BIS_dynamicText"") displayctrl 9999);
			_ctrl ctrlShow true; _ctrl ctrlEnable true; _ctrl ctrlSetFade 0;
			_unit = _this select 0;
			while {(alive _unit) && ((player distance _unit) < %2)} do
			{
				if !(ptags) exitWith {};
				_pos = [(getPosATL _unit) select 0, (getPosATL _unit) select 1, ((getPosATL _unit) select 2) + 2];
				_pos2D = worldToScreen _pos;
				if (count _pos2D > 0) then
				{
					_ctrl ctrlSetPosition [(_pos2D select 0) - (safezoneW / 2), (_pos2D select 1), safezoneW, safezoneH];
					_text = parseText (""<t size='0.35' color='#FF1AAA'>""+(name _unit)+""(""+(str(round (player distance _unit)))+""m)</t>"");
					_ctrl ctrlSetStructuredText _text;
					_ctrl ctrlCommit 0;
				};
			};
			_ctrl ctrlShow false;
			_ctrl ctrlEnable false;
		};
	};
};", _name, _dist];
[_espfnc] execVM "scr\exec.sqf";
sleep 3;
_esprun = format ["if (name player == ""%1"") then
{
	[] spawn
	{
		_a = [];
		if !(isNil ""ptags"") exitWith {ptags = nil;};
		ptags = true;
		while {ptags} do
		{
			_count = count ((position player) nearEntities [[""CAManBase""], %2]);
			{
				if (((_x in _a) && !(alive _x)) or ((_x in _a) && ((player distance _x) > %2))) then {_a = _a - [_x];};
				if ((_x != player) && (getPlayerUID _x != """") && (name _x != """") && !(_x in _a) && ((player distance _x) < %2)) then
				{
					_a = _a + [_x];
					[_x] spawn espfnc;
					sleep 1;
				};
			} forEach playableUnits;
			waitUntil {_count != count ((position player) nearEntities [[""CAManBase""], %2])};
		};
	};
};", _name, _dist];
[_esprun] execVM "scr\exec.sqf";