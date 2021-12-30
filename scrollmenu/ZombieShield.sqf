if (isNil "zoombiieshieldd") then {zoombiieshieldd = true;} else {zoombiieshieldd = !zoombiieshieldd;cutText ["Zombieshield OFF","PLAIN DOWN"]; titleFadeOut 4;};
if(zoombiieshieldd) then {
zmbieDistnceScren = 
[
	["",true],
	["Distance", [-1], "", -5, [["expression", "zombieshield = false;"]], "1", "1"], 	
	["10", [2], "", -5, [["expression", "ZombieDistance=10;ZobieDitanceStt=true;"]], "1", "1"],
	["20", [3], "", -5, [["expression", "ZombieDistance=20;ZobieDitanceStt=true;"]], "1", "1"],
	["30", [4], "", -5, [["expression", "ZombieDistance=30;ZobieDitanceStt=true;"]], "1", "1"],
	["40", [5], "", -5, [["expression", "ZombieDistance=40;ZobieDitanceStt=true;"]], "1", "1"],
	["50", [6], "", -5, [["expression", "ZombieDistance=50;ZobieDitanceStt=true;"]], "1", "1"],
	["100", [7], "", -5, [["expression", "ZombieDistance=100;ZobieDitanceStt=true;"]], "1", "1"],
	["200", [8], "", -5, [["expression", "ZombieDistance=200;ZobieDitanceStt=true;"]], "1", "1"],	
	["25000", [9], "", -5, [["expression", "ZombieDistance=25000;ZobieDitanceStt=true;"]], "1", "1"],	
	["Exit", [13], "", -3, [["expression", "zombieshield = false;"]], "1", "1"]	
];

showCommandingMenu "#USER:zmbieDistnceScren";
WaitUntil{ZobieDitanceStt};

 cutText [format["Zombieshield ON for %1m",ZombieDistance],"PLAIN DOWN"]; titleFadeOut 4;
 } else {
 ZobieDitanceStt=false;
};

while {zoombiieshieldd && ZobieDitanceStt} do {

_pos = getPos player;
_zombies = _pos nearEntities ["zZombie_Base",ZombieDistance];
_count = count _zombies;

for "_i" from 0 to (_count -1) do
{ 
_zombie = _zombies select _i;

/*
_aim = _zombie;
if (_aim != player) then
{
	_aim setDamage 1.1;
};
*/
deleteVehicle _zombie;

};
sleep 0.4;
};