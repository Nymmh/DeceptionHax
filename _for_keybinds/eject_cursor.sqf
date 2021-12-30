shouldigointhatvehicle_infiSTAR=false;
rlythatvehicleiaimon = nil;
datvehiclename_star = nil;


go_in_nearestvehicle_callmevar = 
{
	_vehicleair = (nearestObject[vehicle player,"AIR"]);
	_vehicleland = (nearestObject[vehicle player,"Landvehicle"]);
	if ((player distance _vehicleair) > (player distance _vehicleland)) then 
	{
		player moveInDriver _vehicleland;
	}
	else
	{
		player moveInDriver _vehicleair;
	};
};



rlythatvehicleiaimon = cursorTarget;
datvehiclename_star = gettext (configFile >> 'CfgVehicles' >> (typeof rlythatvehicleiaimon) >> 'displayName');

if (count(crew rlythatvehicleiaimon)>0) then {
	rlythatvehicleiaimon action ["eject", rlythatvehicleiaimon];

	cutText [format["%1 Ejected", datvehiclename_star], "PLAIN DOWN"];
}
else
{
	cutText [format["Get in %1 ?", datvehiclename_star], "PLAIN DOWN"];

	shouldigointhisvehicle_menu = 
	[
		["",true],
		["Get in ?", [-1], "", -5, [["expression", ""]], "1", "0"],
		["YES", [2], "", -5, [["expression", "shouldigointhatvehicle_infiSTAR=true;"]], "1", "1"],
		["NO", [3], "", -5, [["expression", "shouldigointhatvehicle_infiSTAR=false;"]], "1", "1"],
		["Nearest", [4], "", -5, [["expression", "call go_in_nearestvehicle_callmevar;"]], "1", "1"]
	];
	showCommandingMenu "#USER:shouldigointhisvehicle_menu";

	WaitUntil{shouldigointhatvehicle_infiSTAR};

	player moveInDriver rlythatvehicleiaimon;

	cutText [format["%1 NO ONE TO EJECT", datvehiclename_star], "PLAIN DOWN"];
};

//if (rlythatvehicleiaimon isKindOf "Air") then {player action ["getInPilot", rlythatvehicleiaimon];} else {player action ["getInDriver", rlythatvehicleiaimon];};