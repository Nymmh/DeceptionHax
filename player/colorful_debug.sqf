if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {

if (isNil "debug_star_colorful") then {debug_star_colorful = true;} else {debug_star_colorful = !debug_star_colorful;};
while {debug_star_colorful} do 
{
	hintSilent parseText format["
	<t size='1.4'font='Bitstream'align='left' color='#14fb06'>Player Online:</t><t size='1.4'font='Bitstream'align='right'color='#14fb06'>%5</t><br/>
	<t size='1.4'font='Bitstream'align='left' color='#13ee67'>Player in 500m:</t><t size='1.4'font='Bitstream'align='right'color='#13ee67'>%6</t><br/>
	<t size='1.4'font='Bitstream'align='left' color='#13ee67'>Viewdistance:</t><t size='1.4'font='Bitstream'align='right'color='#13ee67'>%12</t><br/>
	
	<br/>
	<t size='1.4'font='Bitstream'align='left'color='#13eedb'>Vehicles:</t><t size='1.4' font='Bitstream'align='right'color='#13eedb'>%8(%10)</t><br/>
	<t size='1.4'font='Bitstream'align='left'color='#13b4ee'>Air:</t><t size='1.4' font='Bitstream'align='right'color='#13b4ee'>%9</t><br/>
	<t size='1.4'font='Bitstream'align='left'color='#1367ee'>Tank:</t><t size='1.4' font='Bitstream'align='right'color='#1367ee'>%7</t><br/>
	<t size='1.4'font='Bitstream'align='left'color='#6d13ee'>Car:</t><t size='1.4' font='Bitstream'align='right'color='#6d13ee'>%11</t><br/>
	<br/>

	<t font='Bitstream' align='Center' size='1.3' color='#FFBF00'>[%3]</t><br/>
	
	<img size='5' image='%4'/><br/>

	<t size='1.4'font='Bitstream'align='left' color='#3fa77d'>Humanity:</t><t color='#3fa77d' size='1.4'font='Bitstream'align='right'>%12</t><br/>
	<t size='1.4'font='Bitstream'align='left' color='#3fa77d'>Blood:</t><t color='#3fa77d' size='1.4'font='Bitstream'align='right'>%13</t><br/>
	<t size='1.4'font='Bitstream'align='left' color='#3fa77d'>Name:</t><t color='#3fa77d' size='1.4'font='Bitstream'align='right'>%1</t><br/>
	

	<t size='1.4'font='Bitstream'align='center'color='#2ECCFA'>Fps: %2</t><br/>",

	(player getVariable['bodyName', name player]),
	(round diag_fps),
	(gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'displayName')),
	(gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'picture')),//"test.paa"
	(count playableUnits),
	(({isPlayer _x} count (getPos vehicle player nearEntities [["AllVehicles"], 500]))-1),
	(count([6800, 9200, 0] nearEntities [["Tank"],25000])),
	(count([6800, 9200, 0] nearEntities [["StaticWeapon","Car","Motorcycle","Tank","Air","Ship"],25000])),
	(count([6800, 9200, 0] nearEntities [["Air"],25000])),
	count vehicles,
	(count([6800, 9200, 0] nearEntities [["Car"],25000])),
	viewdistance,
	r_player_blood,
	round _humanity
	];
	
	sleep 1;
};
if (!debug_star_colorful) then {hintSilent parseText format ["<t size='1'font='Bitstream'align='center'>DEBUG OFF</t>"];};


}else{


if (isNil "debug_star_colorful") then {debug_star_colorful = true;} else {debug_star_colorful = !debug_star_colorful;};
while {debug_star_colorful} do 
{
	hintSilent parseText format["
	<t size='1.4'font='Bitstream'align='left' color='#14fb06'>Player Online:</t><t size='1.4'font='Bitstream'align='right'color='#14fb06'>%5</t><br/>
	<t size='1.4'font='Bitstream'align='left' color='#13ee67'>Player in 500m:</t><t size='1.4'font='Bitstream'align='right'color='#13ee67'>%6</t><br/>
	<t size='1.4'font='Bitstream'align='left' color='#13ee67'>Viewdistance:</t><t size='1.4'font='Bitstream'align='right'color='#13ee67'>%12</t><br/>
	
	<br/>
	<t size='1.4'font='Bitstream'align='left'color='#13eedb'>Vehicles:</t><t size='1.4' font='Bitstream'align='right'color='#13eedb'>%8(%10)</t><br/>
	<t size='1.4'font='Bitstream'align='left'color='#13b4ee'>Air:</t><t size='1.4' font='Bitstream'align='right'color='#13b4ee'>%9</t><br/>
	<t size='1.4'font='Bitstream'align='left'color='#1367ee'>Tank:</t><t size='1.4' font='Bitstream'align='right'color='#1367ee'>%7</t><br/>
	<t size='1.4'font='Bitstream'align='left'color='#6d13ee'>Car:</t><t size='1.4' font='Bitstream'align='right'color='#6d13ee'>%11</t><br/>
	<br/>

	<t font='Bitstream' align='Center' size='1.3' color='#FFBF00'>[%3]</t><br/>
	
	<img size='5' image='%4'/><br/>

	<t size='1.4'font='Bitstream'align='left' color='#3fa77d'>Name:</t><t color='#3fa77d' size='1.4'font='Bitstream'align='right'>%1</t><br/>
	

	<t size='1.4'font='Bitstream'align='center'color='#2ECCFA'>Fps: %2</t><br/>",

	(player getVariable['bodyName', name player]),
	(round diag_fps),
	(gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'displayName')),
	(gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'picture')),//"test.paa"
	(count playableUnits),
	(({isPlayer _x} count (getPos vehicle player nearEntities [["AllVehicles"], 500]))-1),
	(count([6800, 9200, 0] nearEntities [["Tank"],25000])),
	(count([6800, 9200, 0] nearEntities [["StaticWeapon","Car","Motorcycle","Tank","Air","Ship"],25000])),
	(count([6800, 9200, 0] nearEntities [["Air"],25000])),
	count vehicles,
	(count([6800, 9200, 0] nearEntities [["Car"],25000])),
	viewdistance
	];
	
	sleep 1;
};
if (!debug_star_colorful) then {hintSilent parseText format ["<t size='1'font='Bitstream'align='center'>DEBUG OFF</t>"];};

};