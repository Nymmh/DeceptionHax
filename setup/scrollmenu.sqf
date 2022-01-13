pathtoscrdir = "\DeceptionHax\scrollmenu\"; //WRITE YOUR OWN PATH TO LOADER SCRIPTFOLDER
exstr = 'player execVM "'+pathtoscrdir+'%1"';

if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {


inventory = 
[
	["",true],
	["PAGE 1", [-1], "", -5, [["expression", ""]], "1", "0"],	
	[">>> NEXT PAGE >>>", [], "#USER:startmenu_star", -5, [["expression", ""]], "1", "1"],
     ["--Epoch", [2],  "", -5, [["expression", format[exstr,"EpochShit.sqf"]]], "1", "1"],
	  ["--Weapon", [3],  "", -5, [["expression", format[exstr,"addweapon.sqf"]]], "1", "1"],
		["--Skins", [4],  "", -5, [["expression", format[exstr,"skins.sqf"]]], "1", "1"],
		["--Food and Drinks", [5],  "", -5, [["expression", format[exstr,"fooddrinks.sqf"]]], "1", "1"],
		["--Inventory", [6],  "", -5, [["expression", format[exstr,"inventory.sqf"]]], "1", "1"],
		["--Medical", [7],  "", -5, [["expression", format[exstr,"medicalitems.sqf"]]], "1", "1"],
		["--Backpack", [8],  "", -5, [["expression", format[exstr,"backpack_star.sqf"]]], "1", "1"],
		["--Changestats", [10],  "", -5, [["expression", format[exstr,"changestats.sqf"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

startmenu_star = 
[
	["",true],
	["PAGE 2", [-1], "", -5, [["expression", ""]], "1", "0"],
	[">>> NEXT PAGE >>>", [], "#USER:anotherpage", -5, [["expression", ""]], "1", "1"],
		["--Destroy Target", [2],  "", -5, [["expression", format[exstr,"aimkill.sqf"]]], "1", "1"],     
		["--Delete Target", [3],  "", -5, [["expression", format[exstr,"delete_cursor.sqf"]]], "1", "1"],
		["--Changestats", [4],  "", -5, [["expression", format[exstr,"changestats.sqf"]]], "1", "1"],
		["Environment", [5],  "", -5, [["expression", format[exstr,"Environment.sqf"]]], "1", "1"],
		["--Delete Dead", [6],  "", -5, [["expression", "{deleteVehicle _x;} forEach allDEAD;"]], "1", "1"],
		["--Reload Bindings", [7], "", -5, [["expression", "execVM '\DeceptionHax\setup\bindings.sqf'"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

anotherpage = 
[
	["",true],
	["PAGE 3", [-1], "", -5, [["expression", ""]], "1", "0"],
	  ["--SPEED H4X Level 1", [2],  "", -5, [["expression", format[exstr,"speedLevel1.sqf"]]], "1", "1"],
        ["--SPEED H4X Level 2", [3],  "", -5, [["expression", format[exstr,"speed.sqf"]]], "1", "1"],
		["--SPEED H4X Level 3", [4],  "", -5, [["expression", format[exstr,"speedLevel3.sqf"]]], "1", "1"],
		["--VehSpawner", [5],  "", -5, [["expression", format[exstr,"vehspawn.sqf"]]], "1", "1"],
		["--Drive selected Veh", [6],  "", -5, [["expression", format[exstr,"driver_selected_vehicle.sqf"]]], "1", "1"],	
		["--TP selected Veh", [7],  "", -5, [["expression", format[exstr,"teleport_selected_vehicle_v2.sqf"]]], "1", "1"],
		["--fly", [8],  "", -5, [["expression", format[exstr,"fly.sqf"]]], "1", "1"],
		["--Alpmaker Survcam", [9],  "", -5, [["expression", format[exstr,"AlPmaker_survcam.sqf"]]], "1", "1"],
		["--ZombieShield", [10],  "", -5, [["expression", format[exstr,"ZombieShield.sqf"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
showCommandingMenu "#USER:inventory";


}else{

inventory = 
[
	["",true],
	["PAGE 1", [-1], "", -5, [["expression", ""]], "1", "0"],	
	[">>> NEXT PAGE >>>", [], "#USER:anotherpage", -5, [["expression", ""]], "1", "1"],
     ["--Epoch", [2],  "", -5, [["expression", format[exstr,"EpochShit.sqf"]]], "1", "1"],
	  ["--Weapon", [3],  "", -5, [["expression", format[exstr,"addweapon.sqf"]]], "1", "1"],
		["--Skins", [4],  "", -5, [["expression", format[exstr,"skins.sqf"]]], "1", "1"],
		["--Food and Drinks", [5],  "", -5, [["expression", format[exstr,"fooddrinks.sqf"]]], "1", "1"],
		["--Inventory", [6],  "", -5, [["expression", format[exstr,"inventory.sqf"]]], "1", "1"],
		["--Medical", [7],  "", -5, [["expression", format[exstr,"medicalitems.sqf"]]], "1", "1"],
		["--Backpack", [8],  "", -5, [["expression", format[exstr,"backpack_star.sqf"]]], "1", "1"],
		["--Changestats", [9],  "", -5, [["expression", format[exstr,"changestats.sqf"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];


anotherpage = 
[
	["",true],
	["PAGE 3", [-1], "", -5, [["expression", ""]], "1", "0"],
	  ["--SPEED H4X Level 1", [2],  "", -5, [["expression", format[exstr,"speedLevel1.sqf"]]], "1", "1"],
        ["--SPEED H4X Level 2", [3],  "", -5, [["expression", format[exstr,"speed.sqf"]]], "1", "1"],
		["--SPEED H4X Level 3", [4],  "", -5, [["expression", format[exstr,"speedLevel3.sqf"]]], "1", "1"],
		["--VehSpawner", [5],  "", -5, [["expression", format[exstr,"vehspawn.sqf"]]], "1", "1"],
		["--Drive selected Veh", [6],  "", -5, [["expression", format[exstr,"driver_selected_vehicle.sqf"]]], "1", "1"],	
		["--TP selected Veh", [7],  "", -5, [["expression", format[exstr,"teleport_selected_vehicle_v2.sqf"]]], "1", "1"],
		["--fly", [8],  "", -5, [["expression", format[exstr,"fly.sqf"]]], "1", "1"],
		["--Alpmaker Survcam", [9],  "", -5, [["expression", format[exstr,"AlPmaker_survcam.sqf"]]], "1", "1"],
		["--ZombieShield", [10],  "", -5, [["expression", format[exstr,"ZombieShield.sqf"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:inventory";

};