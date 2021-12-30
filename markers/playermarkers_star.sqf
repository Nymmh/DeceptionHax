if !("ItemMap" in items player) then {player addweapon "ItemMap";};
if !("ItemGPS" in items player) then {player addweapon "ItemGPS";};
cList_star = [];
pList_star = [];

if (isnil "infiSTAR_localpm") then {infiSTAR_localpm = 0;}; 
if (infiSTAR_localpm == 0) then {infiSTAR_localpm = 1; hint "Player Markers ON";} else {infiSTAR_localpm = 0; hint "Player Markers OFF";};

while {infiSTAR_localpm == 1} do
{
	{
		//[_x] join grpNull;
		if ((vehicle _x isKindOf "LandVehicle") || (vehicle _x isKindOf "Air") || (vehicle _x isKindOf "Ship")) then 
		{
			if (count (crew vehicle _x) > 0) then 
			{
				{
					if (!(_x in cList_star) and (alive _x) and (getPlayerUID _x != "")) then 
					{
						private ["_pos", "_mkr", "_vhc"];
						_vhc = vehicle _x;
						_pos = getPos _x;
						_mkr = createMarkerLocal [format ["CRW%1%2", _pos select 0, _pos select 1], [(_pos select 0) + 20, _pos select 1, 0]]; 
						_vehname = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'displayName'));
						_mkr setMarkerTextLocal format[' %1 --- %2 --- %3m',name _x,_vehname,round(_x distance player)];
						_mkr setMarkerTypeLocal "waypoint"; 
						if ((side _x == side player) and (side _x != resistance)) then {_mkr setMarkerColorLocal "ColorBlue";}else{_mkr setMarkerColorLocal "ColorRed";};
						_mkr setMarkerSizeLocal [0,0];

						cList_star set [count cList_star, _x];
						[_x, _mkr,_vhc] spawn 
						{
							private ["_u", "_m","_pc"]; 
							_u = _this select 0; 
							_m = _this select 1; 
							while {(infiSTAR_localpm == 1) and (alive _u) and (vehicle _u != _u) and (getPlayerUID _u != "")} do 
							{
								_pc = ((crew vehicle _u) find _u); 
								_m setMarkerPosLocal ([(getPos _u select 0) + 20, (getPos _u select 1) - (25 + _pc*20), 0]); 
								sleep 0.01; 
							}; 
							deleteMarkerLocal _m;	
							if (_u in cList_star) then 
							{ 
								cList_star set [(cList_star find _u), -1]; 
								cList_star = cList_star - [-1]; 			
							}; 					
							true;
						};
					};
				} forEach crew vehicle _x;
			}; 
		}
		else	
		{
			if (!(_x in pList_star) and (vehicle _x == _x) and (getPlayerUID _x != "")) then 			 
			{
				private ["_pos", "_mkr"]; 
				_pos = getPos _x;
				
				_mkr = createMarkerLocal [format ["PLR%1%2", _pos select 0, _pos select 1], [(_pos select 0) + 20, _pos select 1, 0]]; 
				_mkr setMarkerTypeLocal "waypoint";  
				_mkr setMarkerSizeLocal [0,0];
				if ((side _x == side player) and (side _x != resistance)) then {_mkr setMarkerColorLocal "ColorWhite";}else{_mkr setMarkerColorLocal "ColorRedAlpha";};
				_mkr setMarkerTextLocal format ["%1 --- %2", name _x,round(_x distance player)];
				if (_x == player) then 
				{	
					_mkr setMarkerColorLocal "ColorGreen";
				};
				pList_star set [count pList_star, _x];
				[_x, _mkr] spawn 
				{ 
					private ["_u", "_m"]; 
					_u = _this select 0; 
					_m = _this select 1; 
					while {(infiSTAR_localpm == 1) and (alive _u) and (vehicle _u == _u) and (getPlayerUID _u != "") } do 
					{ 
						_m setMarkerPosLocal ([(getPos _u select 0) + 20, getPos _u select 1, 0]); 
						sleep 0.01; 
					}; 
					deleteMarkerLocal _m;	
					if (_u in pList_star) then 
					{ 
						pList_star set [(pList_star find _u), -1]; 
						pList_star = pList_star - [-1]; 			
						
					}; 					
					true;
				}; 
			};

		};
	} forEach playableUnits;
sleep 0.3;
};
{_mkr = str _x; deleteMarkerLocal _mkr;} forEach playableUnits;
{deleteMarkerLocal _x} forEach playableUnits;
{deleteMarkerLocal _x} forEach _mkr;
{deleteMarkerLocal _x} forEach cList_star;
{deleteMarkerLocal _x} forEach pList_star;


/*
if (!(_x in pList_star) and (alive _x) and (vehicle _x isKindOf "Man") and (getPlayerUID _x != "")) then 
{
	private ["_pos", "_mkr"];
	_pos = getPos _x;
	_mkr = createMarkerLocal [format ["CRW%1%2", _pos select 0, _pos select 1], [(_pos select 0) + 20, _pos select 1, 0]]; 
	_mkr setMarkerTextLocal format['%1 --- %3m',name _x,round(_x distance player)];
	_mkr setMarkerTypeLocal "waypoint"; 
	
	if (_x == player) then {_mkr setMarkerColorLocal "ColorGreenAlpha";}else
	{
		if ((side _x == side player) and (side _x != resistance)) then {_mkr setMarkerColorLocal "ColorWhite";}else{_mkr setMarkerColorLocal "ColorYellow";};
	};				
	_mkr setMarkerSizeLocal [0.1,0.1];

	pList_star set [count pList_star, _x];
	[_x, _mkr,_x] spawn 
	{
		private ["_u", "_m"]; 
		_u = _this select 0; 
		_m = _this select 1; 
		while {(alive _u) and (vehicle _u == _u) and (getPlayerUID _u != "")} do 
		{
			_m setMarkerPosLocal ([(getPos _u select 0) + 20, (getPos _u select 1) - (25 + _u*20), 0]); 
			sleep 0.01; 
		}; 
		deleteMarkerLocal _m;	
		if (_u in pList_star) then 
		{ 
			pList_star set [(pList_star find _u), -1]; 
			pList_star = pList_star - [-1]; 			
		}; 					
		true;
	};
};
*/









/*
if (_x != player) then 
{
	_mkr = str _x;
	deleteMarkerLocal _mkr;
	_mkr = createMarkerLocal [_mkr, getPos _x];
	_mkr setMarkerTypeLocal "waypoint";
	_mkr setMarkerPosLocal getPos _x;
	_mkr setMarkerSizeLocal [0,0];
	_mkr setMarkerTextLocal format[' %1 --- %2m',name _x,round(_x distance player)];
	if ((side _x == side player) and (side _x != resistance)) then {_mkr setMarkerColorLocal "ColorWhite";}else{_mkr setMarkerColorLocal "ColorOrange";};
}
else
{
	_mkr = str _x;
	deleteMarkerLocal _mkr;
	_mkr = createMarkerLocal [_mkr, getPos _x];
	_mkr setMarkerTypeLocal "waypoint";
	_mkr setMarkerPosLocal getPos _x;
	_mkr setMarkerSizeLocal [0,0];
	_mkr setMarkerTextLocal format[' %1 --- %2m',name _x,round(_x distance player)];
	_mkr setMarkerColorLocal "ColorGreenAlpha";
};
*/



/*
_vehname = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'displayName'));
_mkr setMarkerTextLocal format['%1 in %2  (%3)',name _x,_vehname,round(_x distance player)];
_mkr setMarkerColorLocal "ColorRed";
*/