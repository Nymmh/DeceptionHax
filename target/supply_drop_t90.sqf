/*
DeceptionHax
*/
_name = _this select 0;

_toRe = format["
if (name player == '%1') then
{

_dropSupplyPoint_infiSTAR = getPos vehicle player;
_dir = getdir vehicle player;
vehicle player setPosATL [(_dropSupplyPoint_infiSTAR select 0)+150*sin(_dir),(_dropSupplyPoint_infiSTAR select 1)+150*cos(_dir),(_dropSupplyPoint_infiSTAR select 2)+200];
[vehicle player, ""T90""] call BIS_fnc_supplydrop;
vehicle player setPos _dropSupplyPoint_infiSTAR;

cutText [format['T90 Backup dropped from Airplane'], 'PLAIN DOWN'];

};
", _name];
[_toRe] execVM "DeceptionHax\exec.sqf";

hint format ["Supply Drop"];
cutText [format["Supply Drop on %1", _name], "PLAIN DOWN"];