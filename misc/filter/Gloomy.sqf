ppe = ppEffectCreate ["colorCorrections", 1555]; 
ppe ppEffectAdjust [1, 0.75, 0, [0.8,0.9,1,-0.1], [1,1,1,2], [-0.5,0,-1,5]]; 
ppe ppEffectCommit 1;
ppe ppEffectEnable true; 
ppe2 = ppEffectCreate ["filmGrain", 1555]; 
ppe2 ppEffectAdjust [0.1, -1, 0.1, 0.05, 2, false]; 
ppe2 ppEffectCommit 1;
ppe2 ppEffectEnable true;