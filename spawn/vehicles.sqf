if (isnil "take1") then { take1 = 0;

hacks = []; // DO NOT EDIT THIS LINE
pic = []; // DO NOT EDIT THIS LINE
///////////////ADD HACK START//////////////////////

pic = pic + [""]; hacks = hacks + ["========  Air Vehicle Spawner   ========","wuat\scripts\VehicleOwn.sqf","SQF"];

hint "Generating Vehicle listings.";
		_kindOf = ["air"];
		_filter = ["BIS_Steerable_Parachute"];	
		_filter1 = ["ParachuteBase"];		
		_cfgvehicles = configFile >> "cfgVehicles";

		for "_i" from 0 to (count _cfgvehicles)-1 do {
			_vehicle = _cfgvehicles select _i;
			if (isClass _vehicle) then {
				_veh_type = configName(_vehicle);
				if ((getNumber(_vehicle >> "scope")==2)and(getText(_vehicle >> "picture")!="")and(KINDOF_ARRAY(_veh_type,_kindOf))and!(KINDOF_ARRAY(_veh_type,_filter))and!(KINDOF_ARRAY(_veh_type,_filter1))) then {
					  pic = pic + [format["%1",getText(_vehicle >> "picture")]];
					  hacks = hacks + [format["%1",_veh_type],"wuat\scripts\!spawnvehicle2.sqf","SQF"];


           
				};
			};
		};
		
		
		
		
pic = pic + [""]; hacks = hacks + ["========  Tank Vehicle Spawner   ========","wuat\scripts\VehicleOwn.sqf","SQF"];

hint "Generating Vehicle listings.";
		_kindOf = ["Tank"];
		_filter = ["BIS_Steerable_Parachute"];	
		_filter1 = ["ParachuteBase"];		
		_cfgvehicles = configFile >> "cfgVehicles";

		for "_i" from 0 to (count _cfgvehicles)-1 do {
			_vehicle = _cfgvehicles select _i;
			if (isClass _vehicle) then {
				_veh_type = configName(_vehicle);
				if ((getNumber(_vehicle >> "scope")==2)and(getText(_vehicle >> "picture")!="")and(KINDOF_ARRAY(_veh_type,_kindOf))and!(KINDOF_ARRAY(_veh_type,_filter))and!(KINDOF_ARRAY(_veh_type,_filter1))) then {
          
					 pic = pic + [format["%1",getText(_vehicle >> "picture")]];
					  hacks = hacks + [format["%1",_veh_type],"wuat\scripts\!spawnvehicle2.sqf","SQF"];

				};
			};
		};


        pic = pic + [""]; hacks = hacks + ["========  Static Weapon Spawner   ========","wuat\scripts\VehicleOwn.sqf","SQF"];
 
hint "Generating Weapon listings.";
                _kindOf = ["StaticWeapon"];
                _filter = ["BIS_Steerable_Parachute"]; 
                _filter1 = ["ParachuteBase"];          
                _cfgvehicles = configFile >> "cfgVehicles";
 
                for "_i" from 0 to (count _cfgvehicles)-1 do {
                        _vehicle = _cfgvehicles select _i;
                        if (isClass _vehicle) then {
                                _veh_type = configName(_vehicle);
                                if ((getNumber(_vehicle >> "scope")==2)and(getText(_vehicle >> "picture")!="")and(KINDOF_ARRAY(_veh_type,_kindOf))and!(KINDOF_ARRAY(_veh_type,_filter))and!(KINDOF_ARRAY(_veh_type,_filter1))) then {
         
                                        pic = pic + [format["%1",getText(_vehicle >> "picture")]];
                                         hacks = hacks + [format["%1",_veh_type],"wuat\scripts\!spawnvehicle2.sqf","SQF"];
 
                                };
                        };
                        };
			

progressLoadingScreen 0.2;

        pic = pic + [""]; hacks = hacks + ["========  Bike Spawner   ========","wuat\scripts\VehicleOwn.sqf","SQF"];
 
hint "Generating Motorcycle listings.";
                _kindOf = ["Motorcycle"];
                _filter = ["BIS_Steerable_Parachute"]; 
                _filter1 = ["ParachuteBase"];          
                _cfgvehicles = configFile >> "cfgVehicles";
 
                for "_i" from 0 to (count _cfgvehicles)-1 do {
                        _vehicle = _cfgvehicles select _i;
                        if (isClass _vehicle) then {
                                _veh_type = configName(_vehicle);
                                if ((getNumber(_vehicle >> "scope")==2)and(getText(_vehicle >> "picture")!="")and(KINDOF_ARRAY(_veh_type,_kindOf))and!(KINDOF_ARRAY(_veh_type,_filter))and!(KINDOF_ARRAY(_veh_type,_filter1))) then {
         
                                        pic = pic + [format["%1",getText(_vehicle >> "picture")]];
                                         hacks = hacks + [format["%1",_veh_type],"wuat\scripts\!spawnvehicle2.sqf","SQF"];
 
                                };
                        };
                        };

        pic = pic + [""]; hacks = hacks + ["========  Boat Spawner   ========","wuat\scripts\VehicleOwn.sqf","SQF"];
 
hint "Generating Boat listings.";
                _kindOf = ["Ship"];
                _filter = ["BIS_Steerable_Parachute"]; 
                _filter1 = ["ParachuteBase"];          
                _cfgvehicles = configFile >> "cfgVehicles";
 
                for "_i" from 0 to (count _cfgvehicles)-1 do {
                        _vehicle = _cfgvehicles select _i;
                        if (isClass _vehicle) then {
                                _veh_type = configName(_vehicle);
                                if ((getNumber(_vehicle >> "scope")==2)and(getText(_vehicle >> "picture")!="")and(KINDOF_ARRAY(_veh_type,_kindOf))and!(KINDOF_ARRAY(_veh_type,_filter))and!(KINDOF_ARRAY(_veh_type,_filter1))) then {
         
                                        pic = pic + [format["%1",getText(_vehicle >> "picture")]];
                                         hacks = hacks + [format["%1",_veh_type],"wuat\scripts\!spawnvehicle2.sqf","SQF"];
 
                                };
                        };
                        };


	pic = pic + [""]; hacks = hacks + ["========  Car Vehicle Spawner   ========","wuat\scripts\VehicleOwn.sqf","SQF"];

hint "Generating Vehicle listings.";
		_kindOf = ["Car"];
		_filter = ["BIS_Steerable_Parachute"];	
		_filter1 = ["ParachuteBase"];		
		_cfgvehicles = configFile >> "cfgVehicles";

		for "_i" from 0 to (count _cfgvehicles)-1 do {
			_vehicle = _cfgvehicles select _i;
			if (isClass _vehicle) then {
				_veh_type = configName(_vehicle);
				if ((getNumber(_vehicle >> "scope")==2)and(getText(_vehicle >> "picture")!="")and(KINDOF_ARRAY(_veh_type,_kindOf))and!(KINDOF_ARRAY(_veh_type,_filter))and!(KINDOF_ARRAY(_veh_type,_filter1))) then {
          
					pic = pic + [format["%1",getText(_vehicle >> "picture")]];
					 hacks = hacks + [format["%1",_veh_type],"wuat\scripts\!spawnvehicle2.sqf","SQF"];

				};
			};
			};




///////////////ADD HACK END//////////////////////




};

////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
//                   DO NOT EDIT BELOW THIS LINE
//            UNLESS YOU KNOW WHAT YOU ARE DOING
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////

disableSerialization;
//ctrlshow [1004,false];
//ctrlshow [1003,false];
ctrlshow [1005,false];
ctrlshow [1012,false];
//ctrlshow [102,false];
//ctrlshow [103,false];
ctrlshow [116,false];
ctrlshow [121,false];
ctrlshow [125,false];
ctrlshow [126,false];
ctrlshow [127,false];
ctrlshow [117,false];
ctrlshow [118,false];
ctrlshow [128,false];
ctrlshow [106,false];
ctrlshow [107,false];
ctrlshow [1,false];
ctrlshow [2,false];
//ctrlshow [1002,false];

ctrlSetText [1001," GANGSTA GEAR NIGS  "];
ctrlSetText [1002,"Status:"];

ctrlSetText [101,format["%1 - Team : %2",lifeState player , side player]]; 
ctrlSetText [103,format ["STOLEN BY WUAT - THISGAMESUX.NET: Task : %1",currentTask player ]];
ctrlSetText [102,format ["%1",worldName]];
ctrlSetText [102,format ["ARMA 2",worldName]];

ctrlSetText [104,"Execute"];
ctrlSetText [105,"EXIT"];
ctrlSetText [106,"NEXTMENU"];
ctrlSetText [107,"EXIT"];
ctrlSetText [108,"Menu"];
ctrlSetText [1006,"Player List:"];

//sleep 0.5;

_T=0;
_Dev=114;//109


_side = format["%1",side player];

lbAdd [_Dev,name player];

lbsetpicture [_Dev,_T,"ca\ui\data\flag_none_ca.paa"];

if (_side == "WEST") then { lbsetpicture [_Dev,_T,"\ca\ui\data\flag_bluefor_ca.paa"]; };
if (_side == "EAST") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_opfor_ca.paa"];};
if (_side == "GUERRILA") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_indep_ca.paa"];};
if (_side == "CIVILIAN") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_civil_ca.paa"];};

_T=_T+1;
hintsilent "";

_Dev=114;//109


_side = format["%1",side player];

lbAdd [_Dev,"ALL PLAYERS"];

lbsetpicture [_Dev,_T,"ca\ui\data\flag_none_ca.paa"];


if (_side == "WEST") then { lbsetpicture [_Dev,_T,"\ca\ui\data\flag_bluefor_ca.paa"]; };
if (_side == "EAST") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_opfor_ca.paa"];};
if (_side == "GUERRILA") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_indep_ca.paa"];};
if (_side == "CIVILIAN") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_civil_ca.paa"];};

_T=_T+1;
hintsilent "";

_Dev=114;//109


_side = format["%1",side player];

lbAdd [_Dev,"EVERYONE BUT ME"];

lbsetpicture [_Dev,_T,"ca\ui\data\flag_none_ca.paa"];


if (_side == "WEST") then { lbsetpicture [_Dev,_T,"\ca\ui\data\flag_bluefor_ca.paa"]; };
if (_side == "EAST") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_opfor_ca.paa"];};
if (_side == "GUERRILA") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_indep_ca.paa"];};
if (_side == "CIVILIAN") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_civil_ca.paa"];};

_T=_T+1;
hintsilent "";

_Dev=114;//109
{

_side = format["%1",side _x];
if (name _x != name player) then
{ 
lbAdd [_Dev,name _x];

lbsetpicture [_Dev,_T,"ca\ui\data\flag_none_ca.paa"];

if (_side == "WEST") then { lbsetpicture [_Dev,_T,"\ca\ui\data\flag_bluefor_ca.paa"]; };
if (_side == "EAST") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_opfor_ca.paa"];};
if (_side == "GUERRILA") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_indep_ca.paa"];};
if (_side == "CIVILIAN") then {lbsetpicture [_Dev,_T,"\ca\ui\data\flag_civil_ca.paa"];};

_T=_T+1;
};
hintsilent "";
} foreach playableunits;

lbSetCurSel [_Dev,0];

/////////////////////////

progressLoadingScreen 1.0;

/////////////////////////



_T = 0;
_P = 0;
	for [{_fx=0},{_fx<=count(hacks)-1},{_fx=_fx+3}] do
	{

	lbadd [109,format["%1",hacks select _fx]];
		lbsetcolor[109,(lbsize 109)-1,[1,1,.766,0.8]];
		//if (_T == 2) then {lbsetcolor[109,(lbsize 109)-1,[1,1,1,0.4]];};



lbsetpicture [109,(lbsize 109)-1,format["%1",pic select _P] ];

 
  //if (_T > 2 )  then { lbsetcolor[109,(lbsize 109)-1,[1,1,1,0.9]];  _T = 0; };
  		//_T = _T + 1;
_P = _P + 1;
	};


/////////////////////////

/////////////////////////


index = lbCurSel 109;
//hint format["%1",_hacks select index];

buttonSetAction [125,"hint '125';"];
buttonSetAction [126,"hint '126';"];
buttonSetAction [127,"hint '127';"];
buttonSetAction [104,"[lbtext[109,(lbCurSel 109)],lbtext[114,(lbCurSel 114)],format['%1',hacks select ((lbCurSel 109))*3+1],format['%1',hacks select ((lbCurSel 109))*3+2]] execVM 'wuat\RUN.sqf';"];
buttonSetAction [105,"closedialog 0;"];
buttonSetAction [106,"hint '106';"];
buttonSetAction [107,"closedialog 0;"];
endLoadingScreen;		
if (isnil "firstrun") then {firstrun = 1;hint "Instructions:\nClick a name then click on the action you want to perform on them. \nThen click execute \n( to do the action on all players click the name) \nALL PLAYERS. \nnote : \nThis message will not be displayed again until you reconnect.";};








