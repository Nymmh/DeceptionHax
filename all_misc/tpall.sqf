_players = playableUnits;//call fnc_allunits;
_countplayers = count _players;
_i = 0;

for "_i" from 0 to _countplayers do
{
	_selectedUnit = _players select _i;
	
	if (player != _selectedUnit) then 
	{
		_dir = getdir vehicle player;
		_pos = getPosATL vehicle player;
		_pos = [(_pos select 0)+(2+random 10)*sin(_dir),(_pos select 1)+(2+random 10)*cos(_dir),(_pos select 2)];
		_selectedUnit setPosATL _pos;
	}
};