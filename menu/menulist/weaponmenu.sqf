thfile = thfile + ["            +MAIN","BACK","0","0","1","0",[]];
thfile = thfile + ["            +Specific","Specific","0","0","1","0",[]];
thfile = thfile + ["            +ALL/MISC","ALL_MISC","0","0","1","0",[]];
if !(!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {
thfile = thfile + ["            +Cash Menu","cash","0","0","1","0",[]];
};
thfile = thfile + ["            +Massive Destruction","MassiveD","0","0","1","0",[]];
thfile = thfile + ["            +Visual Filter","VFilter","0","0","1","0",[]];
thfile = thfile + ["            +Morphing Menu","Morphy","0","0","1","0",[]];
thfile = thfile + ["            +Air","Vehicles","0","0","1","0",[]];
thfile = thfile + ["            +Land","LandVehicles","0","0","1","0",[]];
thfile = thfile + ["            +Ship","ShipVehicles","0","0","1","0",[]];
thfile = thfile + ["            +Object","Objects","0","0","1","0",[]];
thfile = thfile + ["            +Weapon","Weaponz","0","0","1","0",[]];
thfile = thfile + ["            +Spawn Misc (Look In!)","Spwn_misc","0","0","1","0",[]];
thfile = thfile + ["--------------------------------------------------------------------------------","","0","1","0","0",[]];
thfile = thfile + ["                SPAWN WEAPON","","0","1","0","0",[]];
thfile = thfile + ["----------------- Works on Specific Target too -----------------","","0","1","0","0",[]];

_cfgweapons = configFile >> "cfgWeapons";

for "_i" from 0 to (count _cfgweapons)-1 do
{
	_weapon = _cfgweapons select _i;
	if (isClass _weapon) then {
		_wpn_type = configName(_weapon);
		if ((getNumber (_weapon >> "scope") == 2) && (getText (_weapon >> "picture") != "")) then {
			thfile = thfile + [_wpn_type,format[_execx,_wpn_type],"0","0","0","0",[]];
		};
	};
};