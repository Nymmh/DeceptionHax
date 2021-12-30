if (isNil "playershield_Metallica_star") then {playershield_Metallica_star = true;} else {playershield_Metallica_star = !playershield_Metallica_star};
if (playershield_Metallica_star) then {hint "playershield_Metallica_star ON";cutText [format["playershield_Metallica_star ON"], "PLAIN DOWN"];} else {hint "playershield_Metallica_star OFF";cutText [format["playershield_Metallica_star OFF"], "PLAIN DOWN"];};

while {playershield_Metallica_star} do

{
	_pos = getPos vehicle player;
	_players = _pos nearEntities ["Man",125];
	_units = playableUnits;
	_countunits = count _units;
	_countplayers = count _players;
	for "_i" from 0 to (_countplayers -1) do
	{	
		_player = _players select _i;	
		if(_player != player) then 
		{	
			for "_i2" from 0 to (_countunits -1) do
			{	
				_unit = _units select _i2;
				
				if(_unit == _player) then 
				{
					cutText [format["%1 has crossed the line!", name _player], "PLAIN DOWN"];
					
					_aim = _player;
					
					if (_aim isKindOf "Man") then
					{
						_aim setDamage 1.1;
					};
					
				};
				
			};
		};		
	};
sleep 0.05;
};