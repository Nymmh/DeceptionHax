
kasdgaksdgkajgdakjs = 
{
	_pos = [_this select 0, _this select 1, _this select 2];
	_amount = 15;
	for "_i" from 0 to _amount do
	{
		_merica = "A10" createvehicle [(_pos select 0)+(random 30)-(random 30),(_pos select 1)+(random 30)-(random 30),300];
		_merica setPos [(_pos select 0)+(random 30)-(random 30),(_pos select 1)+(random 30)-(random 30),300];
	sleep 0.1;
	};

	cutText ["      A10 Kamikaze", "PLAIN", 2];
	
	sleep 2;
	{_x engineOn true;} forEach (allMissionObjects "A10");
	sleep 2;
	{_x engineOn true;} forEach (allMissionObjects "A10");
	
	onMapSingleClick "";
	openMap [false, false];
};
openMap [true, false];
onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call kasdgaksdgkajgdakjs";
closedialog 0;