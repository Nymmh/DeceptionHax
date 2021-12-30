_name = _this select 0;

_giveTP_star = format["if (name player == '%1') then
{

(findDisplay 46) displayAddEventHandler [""KeyDown"", ""if ((_this select 1) == 0x0F) then {

_distance = 25;

if ((vehicle player) isKindOf 'Air') then {

(vehicle player) setPosASL [((getPosASL vehicle player) select 0)+_distance*sin((getdir vehicle player)),((getPosASL vehicle player) select 1)+_distance*cos((getdir vehicle player)),((getPosASL vehicle player) select 2)];
}
else
{
(vehicle player) setPosASL [((getPosASL vehicle player) select 0)+_distance*sin((getdir vehicle player)),((getPosASL vehicle player) select 1)+_distance*cos((getdir vehicle player)),0.1];
};

cutText [format['Teleported 25m'], 'PLAIN DOWN'];

}""];

cutText [""Press TAB to Teleport"", ""PLAIN"", 2];

};", _name];
[_giveTP_star] execVM "DeceptionHax\exec.sqf";

hint format ["Teleport Loaded on %1", _name];
cutText [format["Teleport Loaded on %1", _name], "PLAIN DOWN"];