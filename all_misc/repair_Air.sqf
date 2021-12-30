if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {

{
	_vehicle = _x;

	/*repair*/
	_hitpoints = _vehicle call vehicle_getHitpoints;
	{forEach ([6800, 9200, 0] nearEntities [["Air"],25000]);
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


	cutText [format["%1 repaired Air",_x], "PLAIN DOWN"];

};