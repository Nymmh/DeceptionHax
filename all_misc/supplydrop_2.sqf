/*
DeceptionHax
*/
_remoteexec = format["

_dropSupplyPoint_infiSTAR = getPos vehicle player;
_dir = getdir vehicle player;

vehicle player setPos [(_dropSupplyPoint_infiSTAR select 0)+200*sin(_dir),(_dropSupplyPoint_infiSTAR select 1)+200*cos(_dir),(_dropSupplyPoint_infiSTAR select 2)+180];
[vehicle player, ""T72_RU""] call BIS_fnc_supplydrop;
vehicle player setPos _dropSupplyPoint_infiSTAR;

"];
[_remoteexec] execVM "DeceptionHax\exec.sqf";

hint format [""T72_RU Supply Drop for ALL""];
cutText [format[""T72_RU Supply Drop for ALL""], ""PLAIN""];

/*
hint format ["Supply Drop"];
cutText [format["Supply Drop"], "PLAIN DOWN"];

[vehicle player, ""M1A2_TUSK_MG""] call BIS_fnc_supplydrop;
[vehicle player, ""T90""] call BIS_fnc_supplydrop;
[vehicle player, ""2S6M_Tunguska""] call BIS_fnc_supplydrop;
[vehicle player, ""Mi24_D""] call BIS_fnc_supplydrop;
[vehicle player, ""AH64D_Sidewinders""] call BIS_fnc_supplydrop;
[vehicle player, ""AH1Z""] call BIS_fnc_supplydrop;
[vehicle player, ""F35B""] call BIS_fnc_supplydrop;
[vehicle player, ""AV8B2""] call BIS_fnc_supplydrop;
[vehicle player, ""T72_RU""] call BIS_fnc_supplydrop;
[vehicle player, ""HMMWV_Armored""] call BIS_fnc_supplydrop;

player setPos [_dropSupplyPoint_infiSTAR select 0, _dropSupplyPoint_infiSTAR select 1, 250];
	
hint format [""Supply Drop 150m ahead!""];
cutText [format[""Supply Drop 150m ahead!""], ""PLAIN""];
*/

/*
if (({isPlayer _x} count (getPos vehicle player nearEntities [[""AllVehicles""], 200])) < 2) then 
{
	_dropSupplyPoint_infiSTAR = getPos vehicle player;
	_dir = getdir vehicle player;
	vehicle player setPos [(_dropSupplyPoint_infiSTAR select 0)+(100+random 125)*sin(_dir),(_dropSupplyPoint_infiSTAR select 1)+(100+random 125)*cos(_dir),(_dropSupplyPoint_infiSTAR select 2)+200];
	[vehicle player, ""T90""] call BIS_fnc_supplydrop;
	vehicle player setPos _dropSupplyPoint_infiSTAR;
};
*/