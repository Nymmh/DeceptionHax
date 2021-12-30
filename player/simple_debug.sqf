if (isNil "debug_Metallica_simple") then {debug_Metallica_simple = true;} else {debug_Metallica_simple = !debug_Metallica_simple;};

while {debug_Metallica_simple} do 
{
	hintSilent parseText format ["
	
	<t size='1.2'font='Bitstream'align='left'>Player Online:</t><t size='1.2' font='Bitstream'align='right'>%2</t><br/>
	<t size='1.2'font='Bitstream'align='left'>Player in 500m:</t><t size='1.2' font='Bitstream'align='right'>%4</t><br/>
	<t size='1.2'font='Bitstream'align='left'>FPS:</t><t size='1.2' font='Bitstream'align='right'>%1</t><br/>
	<t size='1.2'font='Bitstream'align='left'>Viewdistance:</t><t size='1.2' font='Bitstream'align='right'>%7</t><br/>
	<br/>
	<t size='1.2'font='Bitstream'align='left'>Vehicles:</t><t size='1.2' font='Bitstream'align='right'>%3(%8)</t><br/>
	<t size='1.2'font='Bitstream'align='left'>Air:</t><t size='1.2' font='Bitstream'align='right'>%6</t><br/>
	<t size='1.2'font='Bitstream'align='left'>Tank:</t><t size='1.2' font='Bitstream'align='right'>%5</t><br/>
	<t size='1.2'font='Bitstream'align='left'>Car:</t><t size='1.2' font='Bitstream'align='right'>%9</t>
	",
	round diag_fps,
	
	(count playableUnits),
	(count([6800, 9200, 0] nearEntities [["StaticWeapon","Car","Motorcycle","Tank","Air","Ship"],25000])),
	(({isPlayer _x} count (getPos vehicle player nearEntities [["AllVehicles"], 500]))-1),
	(count([6800, 9200, 0] nearEntities [["Tank"],25000])),
	(count([6800, 9200, 0] nearEntities [["Air"],25000])),
	viewdistance,
	count vehicles,
	(count([6800, 9200, 0] nearEntities [["Car"],25000]))
	];
sleep 1;
};

if (!debug_Metallica_simple) then {hintSilent parseText format ["<t size='1'font='Bitstream'align='center'>DEBUG OFF</t>"];};