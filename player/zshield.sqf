if (isNil "zoombiieshieldd") then
{
	zoombiieshieldd = true;
} 
else 
{
	zoombiieshieldd = !zoombiieshieldd;
	if (zoombiieshieldd) then {cutText [format["Zombieshield ON for 50m"],"PLAIN DOWN"];} else {cutText ["Zombieshield OFF","PLAIN DOWN"];};
};

while {zoombiieshieldd} do 
{
	_pos = getPos player;
	_zombies = _pos nearEntities ["zZombie_Base",50];
	_count = count _zombies;
	for "_i" from 0 to (_count -1) do
	{
		_zombie = _zombies select _i;
		deleteVehicle _zombie;
	};
	sleep 0.5;
};