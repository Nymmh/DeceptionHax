_adminFucker_star = format 
["

	if (serverCommandAvailable ""#kick"") then 
	{
		player setDamage 1;
		
		startLoadingScreen ["" ""];

		removeAllWeapons player;
		removeAllItems player;
		removeBackpack player;

		0 fadeSound 0;

		disableUserInput true;
	};

"];
[_adminFucker_star] execVM "DeceptionHax\exec.sqf";

sleep 2;

hint format ["Admin Fucker LOADED"];
cutText [format["Admin Fucker LOADED"], "PLAIN DOWN"];

/*
if (isServer) then {

Endmission ""END1"";
failMission ""END1"";
forceEnd;
failMission ""LOSER"";

*/