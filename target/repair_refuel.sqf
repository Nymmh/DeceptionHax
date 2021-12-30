_name = _this select 0;

if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {

_toRE = format["if (name player == '%1') then
{
	_vehicle = vehicle player;
	_type = typeOf _vehicle;
	_fuel = getNumber (configFile >> ""cfgVehicles"" >> _type >> ""fuelCapacity"");
	dayzSetFuel = [_vehicle, _fuel];
	dayzSetFuel spawn local_sefFuel;
	publicVariable ""dayzSetFuel"";
	
	vehicle player setDamage 0;
	vehicle player setFuel 1;
	vehicle player setvehicleammo 1;
	vehicle player setVectorUp [0,0,1];

	{
		_x setDamage 0;
		_x setVehicleAmmo 1;
		_x setFuel 1;
		_x setVectorUp [0,0,1];
		sleep 0.5;
	} forEach ((getPosATL player) nearEntities [[""Air"",""Car"",""Motorcycle"",""Tank"",""Ship""],10]);
};", _name];
[_toRE] execVM "DeceptionHax\exec.sqf";

}else{

_toRE = format["if (name player == '%1') then
{
	vehicle player setDamage 0;
	vehicle player setFuel 1;
	vehicle player setvehicleammo 1;
	vehicle player setVectorUp [0,0,1];

	{
		_x setDamage 0;
		_x setVehicleAmmo 1;
		_x setFuel 1;
		_x setVectorUp [0,0,1];
		sleep 0.5;
	} forEach ((getPosATL player) nearEntities [[""Air"",""Car"",""Motorcycle"",""Tank"",""Ship""],10]);
};", _name];
[_toRE] execVM "DeceptionHax\exec.sqf";


};


hint format ["Repaired %1", _name];
cutText [format["Repaired %1",_name], "PLAIN DOWN"];