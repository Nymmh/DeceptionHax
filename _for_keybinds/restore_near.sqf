if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {

hint format ["Healed + Repaired NEAR"];
cutText [format["Healed + Repaired NEAR"], "PLAIN DOWN"];

_vehicle = vehicle player;
_type = typeOf _vehicle;
_fuel = getNumber (configFile >> "cfgVehicles" >> _type >> "fuelCapacity");
dayzSetFuel = [_vehicle, _fuel];
dayzSetFuel spawn local_sefFuel;
publicVariable "dayzSetFuel";

_myVeh = (vehicle player);
_myVeh setvehicleammo 1;
if ((damage _myVeh) > 0) then {_myVeh setdammage 0;};
if ((fuel _myVeh) > 0) then {_myVeh setFuel 1;};
_myVeh setvelocity [0,0,1];
_myVeh setVectorUp [0, 0, 1];


_veh_to_rpr_star = ((getPosATL player) nearEntities [["Air","Car","Motorcycle","Tank","Ship"],55]);
{
	_vehicle = _x;
	_vehicle setvehicleammo 1;

	_hitpoints = _vehicle call vehicle_getHitpoints;
	{_selection = getText(configFile >> "cfgVehicles" >> typeOf _vehicle >> "HitPoints" >> _x >> "name");
	dayzSetFix = [_vehicle, _selection, 0];
	publicVariable "dayzSetFix";
	if (local _vehicle) then {dayzSetFix call object_setFixServer;};} forEach _hitpoints;

	_type = typeOf _vehicle;
	_fuel = getNumber (configFile >> "cfgVehicles" >> _type >> "fuelCapacity");
	dayzSetFuel = [_vehicle, _fuel];
	dayzSetFuel spawn local_sefFuel;
	publicVariable "dayzSetFuel";

	if ((damage _x) > 0.1) then {_x setdammage 0;};
	if ((fuel _x) > 0.1) then {_x setFuel 1;};
	_x setvelocity [0,0,1];
	_x setVectorUp [0, 0, 1];

} forEach _veh_to_rpr_star;


}else{


_myVeh = vehicle player;
_myVeh setfuel 1;
_myVeh setvehicleammo 1;
_myVeh setdammage 0;
_myVeh setVectorUp [0,0,1];
_myVeh setvelocity [0,0,1];

player setvehicleammo 1;
player setdammage 0;

cutText [format["%2 - %1 Repaired", name player, typeOf _myVeh], "PLAIN DOWN"];

{
_x setvehicleammo 1;
_x setFuel 1;
_x setdammage 0;

_x setVectorUp [0,0,1];

cutText [format["%2 - %1 Repaired", name ((crew _x) select 0), typeOf _x], "PLAIN DOWN"];
sleep 0.5;
} forEach ((getPosATL player) nearEntities [["Air","Car","Motorcycle","Tank","Ship"],55]);

};