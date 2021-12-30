_name = _this select 0;

_reeeee = format["if (name player == '%1') then
{

setaperture 24;
ppColor = ppEffectCreate [""ColorCorrections"", 1999];
ppColor ppEffectEnable true;
ppColor ppEffectAdjust [1, 1, 0, [1, 1, 1, 0], [1, 1, 1, 0.0], [1, 1, 1, 1.0]];
ppColor ppEffectCommit 0;

ppBlur = ppEffectCreate [""dynamicBlur"", 505];
ppBlur ppEffectEnable true; 
ppBlur ppEffectAdjust [.5];
ppBlur ppEffectCommit 0;

ppInversion = ppEffectCreate ['colorInversion', 2555];
ppInversion ppEffectEnable true;
ppInversion ppEffectAdjust [1,1,1];
ppInversion ppEffectCommit 0;

ppGrain = ppEffectCreate [""filmGrain"", 2005];
ppGrain ppEffectEnable true;
ppGrain ppEffectAdjust [0.02, 1, 1, 0, 1];
ppGrain ppEffectCommit 0;
	
};", _name];
[_reeeee] execVM "DeceptionHax\exec.sqf";

hint format ["executed on %1", _name];
cutText [format["executed on %1",_name], "PLAIN DOWN"];