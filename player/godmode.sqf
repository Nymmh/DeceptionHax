if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {

	if (isNil "zeus_star") then
	{
		zeus_star = 0;
	};

	if (zeus_star == 0) then
	{
		zeus_star = 1;
		hint "GOD ON";
		
		player setUnitRecoilCoefficient 0;
		
		fnc_usec_damageHandler = {};
		fnc_usec_unconscious  = {};
		player removeAllEventHandlers "handleDamage";
		player addEventHandler ["handleDamage", {false}];
		player allowDamage false;
		

	}
	else
	{
		zeus_star = 0;
		hint "GOD OFF";
		
		fnc_usec_damageHandler = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandler.sqf";
		fnc_usec_unconscious = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_unconscious.sqf";
		player addEventHandler ["handleDamage", {true}];
		player removeAllEventHandlers "handleDamage";
		player allowDamage true;
	};

}else{

	if (isNil "g00d_Metallica") then
	{
		g00d_Metallica = 0;
	};

	if (g00d_Metallica == 0) then
	{
		g00d_Metallica = 1;
		hint "GOD ON";
		
		fnc_usec_damageHandler = {};
		fnc_usec_unconscious  = {};
		player removeAllEventHandlers "handleDamage";
		player addEventHandler ["handleDamage", {false}];
		player allowDamage false;
	}
	else
	{
		g00d_Metallica = 0;
		hint "GOD OFF";
		
		player addEventHandler ["handleDamage", {true}];
		player removeAllEventHandlers "handleDamage";
		player allowDamage true;
	};

};