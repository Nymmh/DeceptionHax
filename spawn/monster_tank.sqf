disableSerialization;


_obj="AAV";
_dir = getdir vehicle player;
_pos = getPosATL vehicle player;
_pos = [(_pos select 0)+8*sin(_dir),(_pos select 1)+8*cos(_dir),0];
_rid = 999+random(99999);
control_tank = createVehicle [_obj, _pos, [], 0, 'CAN_COLLIDE']; 
control_tank setVariable ['ObjectID', _rid, true];
serverObjectMonitor set [count serverObjectMonitor, control_tank];
_uid = control_tank call objectUID;
control_tank setVariable ['ObjectUID', _uid, true];
control_tank setVariable ['OwnerID', 0, true];
control_tank setDir _dir;

_localvarcontrol_tank = control_tank;
{_localvarcontrol_tank removeWeapon _x;} forEach (weapons _localvarcontrol_tank);

_localvarcontrol_tank addweapon 'Gau8';
_localvarcontrol_tank addMagazine '1350Rnd_30mmAP_A10';
_localvarcontrol_tank addMagazine '1350Rnd_30mmAP_A10';
_localvarcontrol_tank addMagazine '1350Rnd_30mmAP_A10';
_localvarcontrol_tank addMagazine '1350Rnd_30mmAP_A10';
_localvarcontrol_tank addMagazine '1350Rnd_30mmAP_A10';
_localvarcontrol_tank addMagazine '1350Rnd_30mmAP_A10';

_localvarcontrol_tank addweapon 'M256';
_localvarcontrol_tank addMagazine '20Rnd_120mmHE_M1A2';
_localvarcontrol_tank addMagazine '20Rnd_120mmHE_M1A2';
_localvarcontrol_tank addMagazine '20Rnd_120mmHE_M1A2';
_localvarcontrol_tank addMagazine '20Rnd_120mmHE_M1A2';
_localvarcontrol_tank addMagazine '20Rnd_120mmHE_M1A2';
_localvarcontrol_tank addMagazine '20Rnd_120mmHE_M1A2';
_localvarcontrol_tank addMagazine '20Rnd_120mmHE_M1A2';
_localvarcontrol_tank addMagazine '20Rnd_120mmHE_M1A2';

_localvarcontrol_tank addweapon 'MLRS';
_localvarcontrol_tank addMagazine '12Rnd_MLRS';
_localvarcontrol_tank addMagazine '12Rnd_MLRS';
_localvarcontrol_tank addMagazine '12Rnd_MLRS';
_localvarcontrol_tank addMagazine '12Rnd_MLRS';
_localvarcontrol_tank addMagazine '12Rnd_MLRS';
_localvarcontrol_tank addMagazine '12Rnd_MLRS';
_localvarcontrol_tank addMagazine '12Rnd_MLRS';
_localvarcontrol_tank addMagazine '12Rnd_MLRS';


sleep 1;


for "_i" from 1 to 6 do 
{
	_obj="T90";
	_dir = getdir vehicle player;
	_pos = getPosATL vehicle player;
	_pos = [(_pos select 0)+(15 + (_i * 10))*sin(_dir),(_pos select 1)+(15 + (_i * 10))*cos(_dir),0];
	_rid = 999+random(99999);
	creep_tank = createVehicle [_obj, _pos, [], 0, 'CAN_COLLIDE']; 
	creep_tank setVariable ['ObjectID', _rid, true];
	serverObjectMonitor set [count serverObjectMonitor, creep_tank];
	_uid = creep_tank call objectUID;
	creep_tank setVariable ['ObjectUID', _uid, true];
	creep_tank setVariable ['OwnerID', 0, true];
	creep_tank setDir _dir;
	
	sleep 0.1;
};


controlling_vehicle = control_tank;
controlling_vehicle = ((nearestObjects [vehicle player, ["AAV"], 200]) select 0);

sleep 1.5;

allVehicle_to_Attach = nearestObjects [vehicle player, ["T90"], 250];

attach_1 = allVehicle_to_Attach select 0;

attach_2 = allVehicle_to_Attach select 1;

attach_3 = allVehicle_to_Attach select 2;

attach_4 = allVehicle_to_Attach select 3;

attach_5 = allVehicle_to_Attach select 4;

attach_6 = allVehicle_to_Attach select 5;

attach_7 = allVehicle_to_Attach select 6;

attach_8 = allVehicle_to_Attach select 7;       



attach_1 attachto [controlling_vehicle,[0,6,-1.8]];
sleep 0.2;
//attach_2 attachto [controlling_vehicle,[0,-6,-1.8]];
sleep 0.2;
attach_3 attachto [controlling_vehicle,[4.5,0,-1.8]];
sleep 0.2;
attach_4 attachto [controlling_vehicle,[-4.5,0,-1.8]];
sleep 0.2;
attach_5 attachto [controlling_vehicle,[4.5,6,-1.8]];
sleep 0.2;
//attach_6 attachto [controlling_vehicle,[4.5,-6,-1.8]];
sleep 0.2;
attach_7 attachto [controlling_vehicle,[-4.5,6,-1.8]];
sleep 0.2;
//attach_8 attachto [controlling_vehicle,[-4.5,-6,-1.8]];

player moveinDriver controlling_vehicle;

hint format ["Monster Tank Built!"];
cutText [format["Monster Tank Built!"], "PLAIN DOWN"];