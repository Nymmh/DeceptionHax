if !("ItemMap" in items player) then {player addweapon "ItemMap";};
if !("ItemGPS" in items player) then {player addweapon "ItemGPS";};

if (isnil "Metallica_vehhhhhhs") then {Metallica_vehhhhhhs = 0;}; if (Metallica_vehhhhhhs == 0) then {Metallica_vehhhhhhs = 1; hint "Vehicle Markers ON";} else {Metallica_vehhhhhhs = 0; hint "Vehicle Markers OFF";};
while {Metallica_vehhhhhhs == 1} do
{
	{
		vehiclemarkershuehuehue = str _x;
		deleteMarkerLocal vehiclemarkershuehuehue;
		vehiclemarkershuehuehue = createMarkerLocal [vehiclemarkershuehuehue, getPos _x];
		vehiclemarkershuehuehue setMarkerTypeLocal "waypoint";
		vehiclemarkershuehuehue setMarkerPosLocal getPos _x;
		vehiclemarkershuehuehue setMarkerSizeLocal [0.5,0.5];
		vehiclemarkershuehuehue setMarkerTextLocal format['%1',typeOf _x];
		if ((_x isKindOf "Air") || (_x isKindOf "Tank")) then {vehiclemarkershuehuehue setMarkerColorLocal ("ColorRed");} else {vehiclemarkershuehuehue setMarkerColorLocal ("ColorBlue");};
	
	} forEach vehicles;
sleep 1;
};
{vehiclemarkershuehuehue = str _x; deleteMarkerLocal vehiclemarkershuehuehue;} forEach vehicles;
{deleteMarkerLocal _x} forEach vehicles;
{deleteMarkerLocal _x} forEach vehiclemarkershuehuehue;