ppe = ppEffectCreate ["colorCorrections", 1555]; 
ppe ppEffectAdjust [1, 1, 0, [1.5,-1,-1.5,0.5], [5,3.5,-5,-0.5], [-3,5,-5,-0.5]]; 
ppe ppEffectCommit 1;
ppe ppEffectEnable true; 
ppe2 = ppEffectCreate ["chromAberration", 1555]; 
ppe2 ppEffectAdjust [0.01,0.01,true];
ppe2 ppEffectCommit 1;
ppe2 ppEffectEnable true;
ppe3 = ppEffectCreate ["radialBlur", 1555]; 
ppe3 ppEffectEnable true;
ppe3 ppEffectAdjust [0.02,0.02,0.15,0.15]; 
ppe3 ppEffectCommit 1;