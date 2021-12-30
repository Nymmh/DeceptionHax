if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {

hint format ["Healed NEAR"];
cutText [format["Healed NEAR"], "PLAIN DOWN"];

player setDamage 0;
r_player_blood = 12000;
r_player_handler = false;
r_player_handler1 = false;
r_player_dead = false;
r_player_unconscious = false;
r_player_infected = false;
r_player_inpain = false;
r_player_injured = false;
r_player_loaded = false;
r_player_cardiac = false;
r_fracture_legs = false;
r_fracture_arms = false;
r_player_lowblood = true;
r_player_timeout = 0;
r_handlerCount = 0;
dayz_hunger = 0;
dayz_thirst = 0;
dayz_temperatur = 42;

_unit = player;
_unit setVariable["USEC_lowBlood",false,true];
_unit setVariable["USEC_infected",false,true];
usecTransfuse = [_unit];
publicVariable "usecTransfuse";
usecBandage = [_unit];
publicVariable "usecBandage";
{_unit setVariable[_x,false,true];} forEach USEC_woundHit;
_unit setVariable ["USEC_injured",false,true];
_unit setVariable ["NORRN_unconscious", false, true];
_unit setVariable ["USEC_isCardiac",false,true];
_unit setVariable["medForceUpdate",true,true];
usecMorphine = [_unit];
publicVariable "usecMorphine";
r_player_inpain = false;
"dynamicBlur" ppEffectAdjust [0]; "dynamicBlur" ppEffectCommit 5;
usecPainK = [_unit,player];
publicVariable "usecPainK";
_unit setVariable["medForceUpdate",true];

dayz_sourceBleeding =	objNull;
0 fadeSound 1;


{
	if (getPlayerUID _x != "") then 
	{
		_unit = _x;
		_unit setVariable["USEC_lowBlood",false,true];
		_unit setVariable["USEC_infected",false,true];
		usecTransfuse = [_unit];
		publicVariable "usecTransfuse";

		usecBandage = [_unit];
		publicVariable "usecBandage";
		{_unit setVariable[_x,false,true];} forEach USEC_woundHit;
		_unit setVariable ["USEC_injured",false,true];

		_unit setVariable ["NORRN_unconscious", false, true];
		_unit setVariable ["USEC_isCardiac",false,true];
		_unit setVariable["medForceUpdate",true,true];

		usecMorphine = [_unit];
		publicVariable "usecMorphine";

		r_player_inpain = false;
		"dynamicBlur" ppEffectAdjust [0]; "dynamicBlur" ppEffectCommit 5;

		usecPainK = [_unit,player];
		publicVariable "usecPainK";
		_unit setVariable["medForceUpdate",true];

	sleep 0.5;
	};
} forEach ((position vehicle player) nearEntities [["Man"], 10]);

}else{


player setvehicleammo 1;
player setdammage 0;
player setVectorUp [0,0,1];

{
_x setvehicleammo 1;
_x setdammage 0;

_x setVectorUp [0,0,1];

cutText [format["%1 Healed", name _x], "PLAIN DOWN"];
sleep 0.5;
} forEach ((getPosATL player) nearEntities [["Man"],10]);

};