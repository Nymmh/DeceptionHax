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
thfile = thfile + ["                SPAWN OBJECT","","0","1","0","0",[]];

_cfgobjects = configFile >> "cfgVehicles";
for "_i" from 0 to (count _cfgobjects)-1 do
{
        _object = _cfgobjects select _i;
        if (isClass _object) then
        {
                _veh_type = configName _object;
                if ((getNumber (_object >> "scope") == 2) && (getText (_object >> "picture") != "") && !((_veh_type isKindOf "ParachuteBase") && (_veh_type isKindOf "BIS_Steerable_Parachute")) && (_veh_type isKindOf "Building")) then
                {
                        thfile = thfile + [_veh_type,format[_execx,_veh_type],"0","0","0","0",[]];
                };
        };
};

//if ((getNumber (_object >> "scope") == 2) && (getText (_object >> "picture") != "") && !((_veh_type isKindOf "ParachuteBase") or (_veh_type isKindOf "BIS_Steerable_Parachute")) && (_veh_type isKindOf "Building")) then