if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {

	_obj=_this;
	sleep 0.1;
	_veh_type=_obj;
	_dir = getdir vehicle player;
	_pos = getPos vehicle player;
	_pos = [(_pos select 0)+8*sin(_dir),(_pos select 1)+8*cos(_dir),0];
	_xos = _pos select 0;
	_yos = _pos select 1;
	_zos = _pos select 2;
	_rid = 999+random(99999);
	_nyan = format["
	if (isServer) then {
	call compile (""_object = create"" + ""Vehicle ['%1', [%2, %3, %4], [], 0, 'CAN_COLLIDE'];
	_object setVariable ['OwnerID', 0, true];
	_object setDir %6;
	_uid = _object call dayz_objectUID;
	_object setVariable ['ObjectUID', _uid, true];
	_object setVariable ['ObjectID', _uid, true];
	dayz_serverObjectMonitor se"" + ""t [count dayz_serverObjectMonitor, _object];"");
	};", _veh_type, _xos, _yos, _zos, _rid,_dir];
	[_nyan] execVM "DeceptionHax\exec.sqf";
	cutText [format["%1 spawned",_obj], "PLAIN DOWN"];

}else{

	_obj=_this;

	if !(airborne_spawn_vehicle_infiSTAR) then {

	_dir = getdir vehicle player;
	_pos = getPosATL vehicle player;
	_pos = [(_pos select 0)+8*sin(_dir),(_pos select 1)+8*cos(_dir),0];
	_rid = 999+random(99999);
	_object = createVehicle [_obj, _pos, [], 0, 'CAN_COLLIDE']; 
	_object setVariable ['ObjectID', _rid, true];
	serverObjectMonitor set [count serverObjectMonitor, _object];
	_uid = _object call objectUID;
	_object setVariable ['ObjectUID', _uid, true];
	_object setVariable ['OwnerID', 0, true];
	_object setDir _dir;
	cutText [format["%1 spawned",_obj], "PLAIN DOWN"];

	if (((_object isKindof "AV8B") or (_object isKindof "AV8B2") or (_object isKindof "F35B") or (_object isKindof "Helicopter")) and (surfaceIsWater getposASL player)) then 
	{_object attachto [vehicle player,[0,12,2.6]];sleep 0.1;detach _object;};

	}else{

	_pos = getPos vehicle player;
	_dir = getdir vehicle player;
	_grp = group player;//creategroup east;
	_airdropcaller = _grp createunit ["Drake_Light", [(_pos select 0)-500,(_pos select 1)-500,0], [], 0, "FORM"];
	_airdropcaller setPos [(_pos select 0)+150*sin(_dir),(_pos select 1)+150*cos(_dir),200];
	[_airdropcaller,_obj] call BIS_fnc_supplydrop;
	sleep 0.2;
	deleteVehicle _airdropcaller;
	cutText [format["Airdrop %1 incomming",_obj], "PLAIN DOWN"];

	};

};




/*
	_obj=_this;
	sleep 0.1;
	_veh_type=_obj;
	_dir = getdir vehicle player;
	_pos = getPos vehicle player;
	_pos = [(_pos select 0)+8*sin(_dir),(_pos select 1)+8*cos(_dir),0];
	_xos = _pos select 0;
	_yos = _pos select 1;
	_zos = _pos select 2;
	_rid = 999+random(99999);
	_nyan = format["
	if (isServer) then {
	call compile (""_object = create"" + ""Vehicle ['%1', [%2, %3, %4], [], 0, 'CAN_COLLIDE'];
	_object setVariable ['OwnerID', 0, true];
	_object setDir %6;
	_uid = _object call dayz_objectUID;
	_object setVariable ['ObjectUID', _uid, true];
	_object setVariable ['ObjectID', _uid, true];
	dayz_serverObjectMonitor se"" + ""t [count dayz_serverObjectMonitor, _object];"");
	};", _veh_type, _xos, _yos, _zos, _rid,_dir];
	[_nyan] execVM "DeceptionHax\exec.sqf";
	cutText [format["%1 spawned",_obj], "PLAIN DOWN"];
*/

/*
	_obj = _this;
	_dir = getdir vehicle player;
	_pos = getPosATL vehicle player;
	_pos = [(_pos select 0)+8*sin(_dir),(_pos select 1)+8*cos(_dir),0];
	_spwnveh = format ["if (isServer) then
	{
		[0, nil, [%1, %2], '%3'] call local_publishObj;
	};", _dir, _pos, _this];
	[_spwnveh] execVM "DeceptionHax\exec.sqf";
	cutText [format["%1 spawned",_this], "PLAIN DOWN"];
*/








/*
_location = [((getPos vehicle player) select 0)+8*sin(getDir vehicle player), ((getPos vehicle player) select 1)+8*cos(getDir vehicle player), 0];
_dir = getDir vehicle player;
_spawn = format ['if (isServer) then
{
	_location = %1;
	_classname = "%2";
	_dir = %3;
	_fire = createVehicle [_classname, _location, [], 0, "CAN_COLLIDE"];
	_unit = _location nearestobject _classname;
	_strH = "ObjectUID";
	_damage = "1";
	_unit setVariable [_strH,_damage,true];
	_strH = "ObjectID";
	_unit setVariable [_strH,_damage,true];
	remExField = [nil, nil, format [";dayz_serverObjectMonitor set [count dayz_serverObjectMonitor, %1 nearestObject ''%2''];", _location, _classname]];
	publicVariableServer "remExField";
	_unit setDir _dir;
};', _location, _this, _dir];
[_spawn] execVM "DeceptionHax\exec.sqf";
cutText [format["%1 spawned",_this], "PLAIN DOWN"];
*/

/*
_obj = _this;
sleep 0.1;
_dir = getdir vehicle player;
_pos = getPosATL vehicle player;
_pos = [(_pos select 0)+8*sin(_dir),(_pos select 1)+8*cos(_dir),0];
_rid = 999+random(99999);
_object = createVehicle [_obj, _pos, [], 0, 'CAN_COLLIDE']; 
_object setVariable ['ObjectID', _rid, true];
serverObjectMonitor set [count serverObjectMonitor, _object];
_uid = _object call objectUID;
_object setVariable ['ObjectUID', _uid, true];
_object setVariable ['OwnerID', 0, true];
_object setDir _dir;
cutText [format["%1 spawned",_obj], "PLAIN DOWN"];
*/

/*
_pos = getPos vehicle player;
_dir = getdir vehicle player;
_pos = [(_pos select 0)+150*sin(_dir),(_pos select 1)+150*cos(_dir),200];
_PLANE1 = createVehicle ["C130J", [(_pos) select 0,(_pos) select 1,500], [], 0, "FLY"];
_pos1 = [(_pos select 0)+random 100, (_pos select 1)+random 100];
_chute= createvehicle ["ParachuteC", [(_pos1) select 0,(_pos1) select 1], [], 0, "FLY"];
_bus = createVehicle [_obj, [(_pos1) select 0,(_pos1) select 1,152], [], 0, "FORM"];
_bus attachTo [ _chute, [0,0,0]];

_PLANE1 engineOn true;
_dir = getDir _PLANE1;
_speed = 100;
sleep 0.5;
_PLANE1 setVelocity [(sin _dir * _speed),(cos _dir * _speed), 0];
sleep 1.5;
_PLANE1 setVelocity [(sin _dir * _speed),(cos _dir * _speed), 0];
*/

/*
_object engineOn true;
_object engineOn false;

if (((_object isKindof "AV8B") or (_object isKindof "AV8B2") or (_object isKindof "F35B") or (_object isKindof "Helicopter")) and (surfaceIsWater getposASL player)) then 
{_object attachto [vehicle player,[0,12,2.6]];sleep 0.1;detach _object;};
*/