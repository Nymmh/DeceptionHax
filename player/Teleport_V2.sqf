/*
[DeceptionHax -Teleport-]
*/
player setVariable ["lastPosition", myvar23];
player setVariable ["lastTimes", myvar23];
if !("ItemMap" in items player) then {player addweapon "ItemMap";};
if !("ItemGPS" in items player) then {player addweapon "ItemGPS";};

if (_aim isKindOf "Man") then
	{
	    _aim setPosASL _pos;
		_bolt = vehicle player;
		_hitObject = vehicle _x;
		_val = [0,-1,0];
		_hitMemoryPt = "";
		_bolt attachTo [_hitObject,_val,_hitMemoryPt];
		hint format ["Moving to %1", _this select 0];
		sleep 1;
		detach _bolt;
		
	} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
};

else
{
	openMap [true, false];
	onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call abcdefGEH";

	abcdefGEH={

	_pos = [_this select 0, _this select 1, _this select 2];
	
	onMapSingleClick "";
	openMap [true, false];
	};