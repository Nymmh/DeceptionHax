_name = _this select 0;

if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {


{
	if(name _x == _name) then
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

	};
} forEach allunits;

_theal = format["if (name player == '%1') then
{
	player setDamage 0;
};", _name];
[_theal] execVM "DeceptionHax\exec.sqf";


}else{

_theal = format["if (name player == '%1') then
{
	player setDamage 0;
};", _name];
[_theal] execVM "DeceptionHax\exec.sqf";


};

hint format ["Healing %1", _name];
cutText [format["Healing %1",_name], "PLAIN DOWN"];