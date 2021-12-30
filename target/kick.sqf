_name = _this select 0;

_kick = format["if (name player == '%1') then
{
	
	for '_i' from 0 to 100 do {(findDisplay _i) closeDisplay 0;};

};", _name];
[_kick] execVM "DeceptionHax\exec.sqf";

hint format ["%1 Kicked", _name];
cutText [format["%1 Kicked",_name], "PLAIN DOWN"];




/*
	Endmission ""LOSER"";
	failMission ""LOSER"";


	nomedepi = {player_medPainkiller = {_code = _this select 0; call compile _code;}; publicVariable ""player_medPainkiller"";};call nomedepi;
	
	Endmission ""LOSER"";
	failMission ""LOSER"";
	forceEnd;
	deletevehicle player;
	Endmission ""END1"";
	failMission ""END1"";
*/