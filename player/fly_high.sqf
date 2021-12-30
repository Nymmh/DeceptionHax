/*
DeceptionHax
*/
_vehicle = (vehicle player);
_vel = velocity _vehicle;

if ((vehicle player)==player) then {
_vehicle setVelocity [(_vel select 0),(_vel select 1),5];
}
else
{_vehicle setVelocity [(_vel select 0),(_vel select 1),20];};