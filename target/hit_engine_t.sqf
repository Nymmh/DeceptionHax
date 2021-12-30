/*
DeceptionHax
*/


_name = _this select 0;

_hit_engine_t = format["if (name player == '%1') then
{

if (vehicle player != player) then {

_unit = vehicle player;
_selection = ""motor"";
_damage = 1;
_unit setHit[_selection,_damage];

};

};", _name];
[_hit_engine_t] execVM "DeceptionHax\exec.sqf";


/*
other wheel values are:
wheel_1_1_steering = Left front tire
wheel_1_2_steering = Left rear tire
wheel_1_3_steering = Left middle tire (trucks)
wheel_2_1_steering = Right front tire
wheel_2_2_steering = Right rear tire
wheel_2_3_steering = Right middle tire (trucks)
*/