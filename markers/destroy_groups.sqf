
if (isnil "dstrygrps_infiSTAR") then {dstrygrps_infiSTAR = 0;};
if (dstrygrps_infiSTAR == 0) then {dstrygrps_infiSTAR = 1;hint "Destroy Groups ON";} else {dstrygrps_infiSTAR = 0;hint "Destroy Groups OFF";};

while {dstrygrps_infiSTAR == 1} do
{
	{
		if ((alive _x) and (count (units group _x) > 1) and (count (weapons _x) > 1) and (_x != player)and (getPlayerUID _x != "")) then
		{
			[_x] joinSilent grpNull;
		};
	} forEach playableUnits;
	
sleep 0.5;
};