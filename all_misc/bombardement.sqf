/*
DeceptionHax
*/

bombardment_infiSTAR={
	_pos = [_this select 0, _this select 1, _this select 2];


	bombardment_plane1 = createVehicle ["C130J", [(_pos select 0) + (20 + random 80), (_pos select 1) + (20 + random 80), 750 + random 200], [], 0, "FLY"];
	bombardment_plane1 engineOn true;
	_dir = getDir bombardment_plane1;
	_speed = 200;
	bombardment_plane1 setVelocity [(sin _dir * _speed),(cos _dir * _speed), 0];


	bombardment_plane2 = createVehicle ["C130J", [(_pos select 0), (_pos select 1), 750 + random 200], [], 0, "FLY"];
	bombardment_plane2 engineOn true;
	_dir = getDir bombardment_plane2;
	_speed = 200;
	bombardment_plane2 setVelocity [(sin _dir * _speed),(cos _dir * _speed), 0];


	bombardment_plane3 = createVehicle ["C130J", [(_pos select 0) + (-20 - random 80), (_pos select 1) + (-20 - random 80), 750 + random 200], [], 0, "FLY"];
	bombardment_plane3 engineOn true;
	_dir = getDir bombardment_plane3;
	_speed = 200;
	bombardment_plane3 setVelocity [(sin _dir * _speed),(cos _dir * _speed), 0];


	sleep 1;



	_radius = 200;
	_bombs = 2;
	_jackup = 100;

//	_object = "Bo_Mk82" createVehiclelocal [(_pos select 0)  , (_pos select 1) , 100+random 500];
//	_object = "Bo_Mk82" createVehiclelocal [(_pos select 0)  , (_pos select 1) , 100+random 500];
	_object = "Sh_120_HE" createVehiclelocal [(_pos select 0)  , (_pos select 1) , 100+random 500];
	_object = "Sh_120_HE" createVehiclelocal [(_pos select 0)  , (_pos select 1) , 100+random 500];

	for "_i" from 0 to _bombs do
	{
		_object = "Sh_120_HE" createVehiclelocal [(_pos select 0) - random _radius , (_pos select 1) - random _radius, _jackup+random 500];
		_object = "Sh_120_HE" createVehiclelocal [(_pos select 0) + random _radius , (_pos select 1) + random _radius, 100+random 500]; 
		_object = "Sh_120_HE" createVehiclelocal [(_pos select 0)  , (_pos select 1) , 100+random 500];
		_object = "Sh_120_HE" createVehiclelocal [(_pos select 0) - random _radius , (_pos select 1) - random _radius, _jackup+random 500];
		_object = "Sh_120_HE" createVehiclelocal [(_pos select 0) + random _radius , (_pos select 1) + random _radius, 100+random 500];
		_object = "Sh_120_HE" createVehiclelocal [(_pos select 0)  , (_pos select 1) , 100+random 500];
		
/*		_object = "Bo_Mk82" createVehiclelocal [(_pos select 0) - random _radius , (_pos select 1) - random _radius, _jackup+random 500];
		_object = "Bo_Mk82" createVehiclelocal [(_pos select 0) + random _radius , (_pos select 1) + random _radius, 100+random 500];
		_object = "Bo_Mk82" createVehiclelocal [(_pos select 0)  , (_pos select 1) , 100+random 500];
		_object = "Bo_Mk82" createVehiclelocal [(_pos select 0) - random _radius , (_pos select 1) - random _radius, _jackup+random 500];
		_object = "Bo_Mk82" createVehiclelocal [(_pos select 0) + random _radius , (_pos select 1) + random _radius, 100+random 500];
		_object = "Bo_Mk82" createVehiclelocal [(_pos select 0)  , (_pos select 1) , 100+random 500];
*/		
		_object = "ARTY_Sh_81_HE" createVehiclelocal [(_pos select 0) - random _radius , (_pos select 1) - random _radius, _jackup+random 500];
		_object = "ARTY_Sh_81_HE" createVehiclelocal [(_pos select 0) + random _radius , (_pos select 1) + random _radius, 100+random 500];
		_object = "ARTY_Sh_81_HE" createVehiclelocal [(_pos select 0)  , (_pos select 1) , 100+random 500];
		_object = "ARTY_Sh_81_HE" createVehiclelocal [(_pos select 0) - random _radius , (_pos select 1) - random _radius, _jackup+random 500];
		_object = "ARTY_Sh_81_HE" createVehiclelocal [(_pos select 0) + random _radius , (_pos select 1) + random _radius, 100+random 500];
		_object = "ARTY_Sh_81_HE" createVehiclelocal [(_pos select 0)  , (_pos select 1) , 100+random 500];

		_jackup=_jackup+20;
	};

	hint "Bombardment Incomming";
	cutText [format["Bombardment Incomming"],"PLAIN DOWN"];


	onMapSingleClick "";
	openMap [false, false];
};

openMap [true, false];
onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call bombardment_infiSTAR";
closedialog 0;