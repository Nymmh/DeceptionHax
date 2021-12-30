disableSerialization;

{
	deleteVehicle _x;
} forEach allDEAD+(allMissionObjects "Land_Destroyer")+(nearestObjects [vehicle player, ["M1A2_TUSK_MG"], 80]);


_obj="M1A2_TUSK_MG";
_dir = getdir vehicle player;
_pos = getPosATL vehicle player;
_pos = [(_pos select 0)+18*sin(_dir),(_pos select 1)+18*cos(_dir),0];
_rid = 999+random(99999);
control_tankbt = createVehicle [_obj, _pos, [], 0, 'CAN_COLLIDE']; 
control_tankbt setVariable ['ObjectID', _rid, true];
serverObjectMonitor set [count serverObjectMonitor, control_tankbt];
_uid = control_tankbt call objectUID;
control_tankbt setVariable ['ObjectUID', _uid, true];
control_tankbt setVariable ['OwnerID', 0, true];
control_tankbt setDir _dir;

sleep 1;

_obj="Land_Destroyer";
_dir = getdir vehicle player;
_pos = getPosATL vehicle player;
_pos = [(_pos select 0)+80*sin(_dir),(_pos select 1)+80*cos(_dir),0];
_rid = 999+random(99999);
creep_tankbt = createVehicle [_obj, _pos, [], 0, 'CAN_COLLIDE']; 
creep_tankbt setVariable ['ObjectID', _rid, true];
serverObjectMonitor set [count serverObjectMonitor, creep_tankbt];
_uid = creep_tankbt call objectUID;
creep_tankbt setVariable ['ObjectUID', _uid, true];
creep_tankbt setVariable ['OwnerID', 0, true];
creep_tankbt setDir _dir;

sleep 1;

controlling_vehicle_bt = control_tankbt;
attach_bt = creep_tankbt;
attach_bt attachto [controlling_vehicle_bt,[-6.5,10,0]];

player moveinDriver controlling_vehicle_bt;

hint format ["Battleship Tank Built!"];
cutText [format["Battleship Tank Built!"], "PLAIN DOWN"];