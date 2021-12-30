if !("ItemMap" in items player) then {player addweapon "ItemMap";};
if !("ItemGPS" in items player) then {player addweapon "ItemGPS";};
setGroupIconsVisible [true, true];
_color_green = [0,1,0,1];
_color_white = [1, 1, 1, 1];
_color_orange = [1,0.3,0,1];
_color_red = [1,0,0,1];
_color_blue = [0, 0, 1, 1];

if (isnil "wpm_infiSTAR") then {wpm_infiSTAR = 0;};
if (wpm_infiSTAR == 0) then {wpm_infiSTAR = 1;hint "Player Markers ON";} else {wpm_infiSTAR = 0;hint "Player Markers OFF";};

while {wpm_infiSTAR == 1} do
{
	_greenPlayer = call compile preprocessFileLineNumbers "DeceptionHax\list.sqf";
	
	{
		{
			if (getPlayerUID _x != "") then 
			{
				//{[_x] joinSilent grpNull;} forEach (units group _x);
				//[_x] joinSilent grpNull;
				//[_x] joinSilent group _x;
				//deleteGroup group _x;

				clearGroupIcons group _x;
				group _x addGroupIcon ["x_art"];
				
				//Not in Vehicle
				if !(vehicle _x != _x) then
				{
					if (getPlayerUID _x in _greenPlayer) then 
					{
						{group _x setGroupIconParams [_color_green, format ["%1 --- %2m",name _x,round(_x distance player)], 0.7, true];} forEach units group _x;
					}
					else
					{
						if ((side _x == side player) and (side _x != resistance)) then
						{
							{group _x setGroupIconParams [_color_white, format ["%1 --- %2m",name _x,round(_x distance player)], 0.7, true];} forEach units group _x;
						} 
						else 
						{
							{group _x setGroupIconParams [_color_orange, format ["%1 --- %2m",name _x,round(_x distance player)], 0.7, true];} forEach units group _x;
						};
					};
				};
				
				//in Vehicle
				if (vehicle _x != _x) then
				{
					if (getPlayerUID _x in _greenPlayer) then 
					{
						{
						group _x setGroupIconParams [_color_green, format ["%1%2%3%4%5%6%7 --- %8 --- %9m",
						(name (crew (vehicle _x) select 0)),
						(", "+(name (crew (vehicle _x) select 1))),
						(", "+(name (crew (vehicle _x) select 2))),
						(", "+(name (crew (vehicle _x) select 3))),
						(", "+(name (crew (vehicle _x) select 4))),
						(", "+(name (crew (vehicle _x) select 5))),
						(", "+(name (crew (vehicle _x) select 6))),
						(gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'displayName')),
						round(_x distance player)], 0.7, true];
						} forEach units group _x;
					}
					else
					{
						if ((side _x == side player) and (side _x != resistance)) then
						{
							{
							group _x setGroupIconParams [_color_blue, format ["%1%2%3%4%5%6%7 --- %8 --- %9m",
							(name (crew (vehicle _x) select 0)),
							(", "+(name (crew (vehicle _x) select 1))),
							(", "+(name (crew (vehicle _x) select 2))),
							(", "+(name (crew (vehicle _x) select 3))),
							(", "+(name (crew (vehicle _x) select 4))),
							(", "+(name (crew (vehicle _x) select 5))),
							(", "+(name (crew (vehicle _x) select 6))),
							(gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'displayName')),
							round(_x distance player)], 0.7, true];
							} forEach units group _x;
						}
						else
						{
							{
							group _x setGroupIconParams [_color_red, format ["%1%2%3%4%5%6%7 --- %8 --- %9m",
							(name (crew (vehicle _x) select 0)),
							(", "+(name (crew (vehicle _x) select 1))),
							(", "+(name (crew (vehicle _x) select 2))),
							(", "+(name (crew (vehicle _x) select 3))),
							(", "+(name (crew (vehicle _x) select 4))),
							(", "+(name (crew (vehicle _x) select 5))),
							(", "+(name (crew (vehicle _x) select 6))),
							(gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'displayName')),
							round(_x distance player)], 0.7, true];
							} forEach units group _x;
						};
					};
				};
			};
		} forEach (units group _x);
	} forEach playableUnits;
sleep 1;
};
{clearGroupIcons group _x;} forEach playableUnits;
{{clearGroupIcons group _x;} forEach units group _x;} forEach playableUnits;


//(side player != resistance)

/*
_vehname = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'displayName'))
_crew =		(name (crew (vehicle _x) select 0));
_crew2 =		(", "+(name (crew (vehicle _x) select 1)));
_crew3 =		", "+(name (crew (vehicle _x) select 2));
_crew4 =		", "+(name (crew (vehicle _x) select 3));
_crew5 =		", "+(name (crew (vehicle _x) select 4));
_crew6 =		", "+(name (crew (vehicle _x) select 5));
_crew7 =		", "+(name (crew (vehicle _x) select 6));
_crew8 =		", "+(name (crew (vehicle _x) select 7));
_crew9 =		", "+(name (crew (vehicle _x) select 8));
_crew10 =	", "+(name (crew (vehicle _x) select 9));
group _x setGroupIconParams [_color_red, format ["[%2]-[%3%4%5%6%7%8%9%10%11]-[%1m]",round(_x distance player),
_vehname,_crew,_crew2,_crew3,_crew4,_crew5,_crew6,_crew7,_crew8,_crew9,_crew10], 0.7, true];
*/