if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {

{
	_vehicle = _x;

	/*repair*/
	_hitpoints = _vehicle call vehicle_getHitpoints;
	{_selection = getText (configFile >> "cfgVehicles" >> _type >> "HitPoints" >> _x >> "name");
	dayzSetFix = [_vehicle, _selection, 0];
	publicVariable "dayzSetFix";
	if (local _vehicle) then {dayzSetFix call object_setFixServer;};} forEach _hitpoints;

	/*refuel*/
	_type = typeOf _vehicle;
	_fuel = getNumber (configFile >> "cfgVehicles" >> _type >> "fuelCapacity");
	dayzSetFuel = [_vehicle, _fuel];
	dayzSetFuel spawn local_sefFuel;
	publicVariable "dayzSetFuel";

	/*other*/
	_vehicle setDamage 0;
	_vehicle setVehicleAmmo 1;
	_vehicle setFuel 1;

	_vehicle setVectorUp [0,0,1];
	_vehicle setvelocity [0,0,1];


	cutText [format["%1 repaired",_x], "PLAIN DOWN"];

} forEach vehicles;

}else{


{
	_vehicle = _x;
	_vehicle setDamage 0;
	_vehicle setVehicleAmmo 1;
	_vehicle setFuel 1;

	_vehicle setVectorUp [0,0,1];
	_vehicle setvelocity [0,0,1];


	cutText [format["%1 repaired",_x], "PLAIN DOWN"];

} forEach vehicles;


};

hint "REPAIRED ALL VEHICLE";
cutText [format["REPAIRED ALL VEHICLE"], "PLAIN DOWN"];