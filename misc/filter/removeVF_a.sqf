_name = _this select 0;

_reeeee = format["

ppEffectDestroy ppColor;
ppEffectDestroy ppBlur;
ppEffectDestroy ppInversion;
ppEffectDestroy ppGrain;
ppEffectDestroy nonapsi_ef;
ppEffectDestroy nonapsi_ef2;
deletevehicle snow;
deletevehicle ps;
ppEffectDestroy ppe;
ppEffectDestroy ppe2;
ppEffectDestroy ppe3;
ppEffectDestroy wetdist1;
setaperture 0;
""dynamicBlur"" ppEffectAdjust [0];
""dynamicBlur"" ppEffectCommit 16;
	
"];
[_reeeee] execVM "DeceptionHax\exec.sqf";

hint format ["executed on all"];
cutText [format["executed on all"], "PLAIN DOWN"];