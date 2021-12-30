NUKELOLOLOLOLOL = 
{
_pos = [_this select 0, _this select 1, _this select 2];
	


_nuke = format["
if (isServer) then
{
	call compile (""[nil,nil,rSP""+ ""AWN, [], { if !(isServer) then {
	
		_type = """"Survivor2_DZ"""";
		_position = %1;
		_object =  _type createVehicleLocal _position;
		nukepos = _object;
		
		setaperture 1.5;
		
		playSound """"nuke"""";
		
		_type = """"#particlesource"""";
		_position = getpos nukepos;
		_object =  _type createVehicleLocal _position;
		Cone = _object;
		
		Cone setParticleParams [[""""\Ca\Data\ParticleEffects\Universal\Universal"""", 16, 7, 48], """""""", """"Billboard"""", 1, 10, [0, 0, 0],
						[0, 0, 0], 0, 1.275, 1, 0, [40,80], [[0.25, 0.25, 0.25, 0], [0.25, 0.25, 0.25, 0.5], 
						[0.25, 0.25, 0.25, 0.5], [0.25, 0.25, 0.25, 0.05], [0.25, 0.25, 0.25, 0]], [0.25], 0.1, 1, """""""", """""""", nukepos];
		Cone setParticleRandom [2, [1, 1, 30], [1, 1, 30], 0, 0, [0, 0, 0, 0.1], 0, 0];
		Cone setParticleCircle [10, [-10, -10, 20]];
		Cone setDropInterval 0.005;
	};
		
	}] call RE;"");
};
", _pos];
[_nuke] execvm "DeceptionHax\exec.sqf";

_nuke = format["
if (isServer) then
{
	call compile (""[nil,nil,rSP""+ ""AWN, [], { if !(isServer) then {
	
		_type = """"#particlesource"""";
		_position = getpos nukepos;
		_object =  _type createVehicleLocal _position;
		top = _object;
		
		top setParticleParams [[""""\Ca\Data\ParticleEffects\Universal\Universal"""", 16, 3, 48, 0], """""""", """"Billboard"""", 1, 20, [0, 0, 0],
						[0, 0, 60], 0, 1.7, 1, 0, [60,80,100], [[1, 1, 1, -10],[1, 1, 1, -7],[1, 1, 1, -4],[1, 1, 1, -0.5],[1, 1, 1, 0]], [0.05], 1, 1, """""""", """""""", nukepos];
		top setParticleRandom [0, [75, 75, 15], [17, 17, 10], 0, 0, [0, 0, 0, 0], 0, 0, 360];
		top setDropInterval 0.002;
		
		_type = """"#particlesource"""";
		_position = getpos nukepos;
		_object =  _type createVehicleLocal _position;
		top2 = _object;

		top2 setParticleParams [[""""\Ca\Data\ParticleEffects\Universal\Universal"""", 16, 3, 112, 0], """""""", """"Billboard"""", 1, 20, [0, 0, 0],
						[0, 0, 60], 0, 1.7, 1, 0, [60,80,100], [[1, 1, 1, 0.5],[1, 1, 1, 0]], [0.07], 1, 1, """""""", """""""", nukepos];
		top2 setParticleRandom [0, [75, 75, 15], [17, 17, 10], 0, 0, [0, 0, 0, 0], 0, 0, 360];
		top2 setDropInterval 0.002;
	};
		
	}] call RE;"");
};
", _pos];
[_nuke] execvm "DeceptionHax\exec.sqf";

_nuke = format["
if (isServer) then
{
	call compile (""[nil,nil,rSP""+ ""AWN, [], { if !(isServer) then {
	
		_type = """"#particlesource"""";
		_position = getpos nukepos;
		_object =  _type createVehicleLocal _position;
		smoke = _object;
		
		smoke setParticleParams [[""""\Ca\Data\ParticleEffects\Universal\Universal"""", 16, 7, 48, 1], """""""", """"Billboard"""", 1, 25, [0, 0, 0],[0, 0, 60], 0, 1.7, 1, 0, [40,15,120], [[1, 1, 1, 0.4],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0]], [0.5, 0.1], 1, 1, """""""", """""""", nukepos];
		smoke setParticleRandom [0, [10, 10, 15], [15, 15, 7], 0, 0, [0, 0, 0, 0], 0, 0, 360];
		smoke setDropInterval 0.002;
		
		_type = """"#particlesource"""";
		_position = getpos nukepos;
		_object =  _type createVehicleLocal _position;
		Wave = _object;

		Wave setParticleParams [[""""\Ca\Data\ParticleEffects\Universal\Universal"""", 16, 7, 48], """""""", """"Billboard"""", 1, 20/2, [0, 0, 0],
						[0, 0, 0], 0, 1.5, 1, 0, [50, 100], [[0.1, 0.1, 0.1, 0.5], 
						[0.5, 0.5, 0.5, 0.5], [1, 1, 1, 0.3], [1, 1, 1, 0]], [1,0.5], 0.1, 1, """""""", """""""", nukepos];
		Wave setParticleRandom [2, [20, 20, 20], [5, 5, 0], 0, 0, [0, 0, 0, 0.1], 0, 0];
		Wave setParticleCircle [50, [-80, -80, 2.5]];
		Wave setDropInterval 0.0002;
		
		_type = """"#lightpoint"""";
		_position = [((getpos nukepos select 0)),(getpos nukepos select 1),((getpos nukepos select 2)+500)];
		_object =  _type createVehicleLocal _position;
		light = _object;
		
		light setLightAmbient[1500, 1200, 1000];
		light setLightColor[1500, 1200, 1000];
		light setLightBrightness 100000.0/100000;
	};
		
	}] call RE;"");
};
", _pos];
[_nuke] execvm "DeceptionHax\exec.sqf";

_nuke = format["
if (isServer) then
{
	call compile (""[nil,nil,rSP""+ ""AWN, [], {if !(isServer) then {
	
		sleep 1.5*2;

		Wave setDropInterval 0.001;
		deletevehicle top;
		deletevehicle top2;

		sleep 4.5;

		i = 0;
		while {i < 100} do
		{
			light setLightBrightness (100.0 - i)/100;
			i = i + 1;
			sleep 0.1;
		};
		deleteVehicle light;

		sleep 2;
		setaperture -1;

		Wave setDropInterval 0.001*10;
		Wave setParticleParams [[""""\Ca\Data\ParticleEffects\Universal\Universal"""", 16, 7, 48], """""""", """"Billboard"""", 1, 20/2, [0, 0, 0],
						[0, 0, 0], 0, 1.5, 1, 0, [50, 100], [[0.1, 0.1, 0.1, 0.5], 
						[0.5, 0.5, 0.5, 0.5], [1, 1, 1, 0.3], [1, 1, 1, 0]], [1,0.5], 0.1, 1, """""""", """""""", nukepos];
		Wave setParticleCircle [50, [-40, -40, 2.5]];
	};
		
	}] call RE;"");
};
", _pos];
[_nuke] execvm "DeceptionHax\exec.sqf";

_nuke = format["
if (isServer) then
{
	call compile (""[nil,nil,rSP""+ ""AWN, [], {if !(isServer) then {
	
		for """"i"""" from 0 to 15 do {
			smoke setParticleParams [[""""\Ca\Data\ParticleEffects\Universal\Universal"""", 16, 7, 48, 1], """""""", """"Billboard"""", 1, 25, [0, 0, 0],
							[0, 0, 60+i], 0, 1.7, 1, 0, [40,15,120], 
							[[1, 1, 1, 0.4],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0]]
							, [0.5, 0.1], 1, 1, """""""", """""""", nukepos];
			sleep 5;
		};

		timeNow = time;
		waituntil {(time - timeNow) > 160 };

		smoke setParticleParams [[""""\Ca\Data\ParticleEffects\Universal\Universal"""", 16, 7, 48, 1], """""""", """"Billboard"""", 1, 25, [0, 0, 0],
						[0, 0, 30], 0, 1.7, 1, 0, [40,25+10,80], 
						[[1, 1, 1, 0.2],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0]]
						, [0.5, 0.1], 1, 1, """""""", """""""", nukepos];
		smoke setDropInterval 0.012;
		Cone setDropInterval 0.02;
		Wave setDropInterval 0.01;

		sleep 15;
		deleteVehicle Wave;
		deleteVehicle cone;
		deleteVehicle smoke;
	};
		
	}] call RE;"");
};
", _pos];
[_nuke] execvm "DeceptionHax\exec.sqf";

_nuke = format["
if (isServer) then
{
	call compile (""[nil,nil,""""per"""",rSP""+ ""AWN, [], {if !(isServer) then {
			[] spawn {
				waituntil {isplayer player};
				""""colorCorrections"""" ppEffectAdjust [2, 30, 0, [0.0, 0.0, 0.0, 0.0], [0.8*2, 0.5*2, 0.0, 0.7], [0.9, 0.9, 0.9, 0.0]];
				""""colorCorrections"""" ppEffectCommit 0;
				""""colorCorrections"""" ppEffectAdjust [1, 0.8, -0.001, [0.0, 0.0, 0.0, 0.0], [0.8*2, 0.5*2, 0.0, 0.7], [0.9, 0.9, 0.9, 0.0]];  
				""""colorCorrections"""" ppEffectCommit 3;
				""""colorCorrections"""" ppEffectEnable true;
				""""filmGrain"""" ppEffectEnable true; 
				""""filmGrain"""" ppEffectAdjust [0.02, 1, 1, 0.1, 1, false];
				""""filmGrain"""" ppEffectCommit 5;
			};
		};
		
	}] call RE;"");
};
", _pos];
[_nuke] execvm "DeceptionHax\exec.sqf";

_nuke = format["
if (isServer) then
{
	call compile (""[nil,nil,""""per"""",rSP""+ ""AWN, [], {if !(isServer) then {
		[] spawn {
			waituntil {isplayer player};
			terminate dayz_musicH;
			setwind [0.201112,0.204166,true];
			_windSound = [""""wind_1"""",""""wind_2"""",""""wind_3"""",""""wind_4"""",""""wind_5""""];
			while {true} do {
				_ran = _windSound call BIS_fnc_selectRandom;
				playsound _ran;
				_obj = vehicle player;
				_pos = position _obj;

					setwind [0.201112*2,0.204166*2,false];
				_velocity = [random 10,random 10,-1];
				_color = [1.0, 0.9, 0.8];
				_alpha = 0.02 + random 0.02;
				
				_type = """"#particlesource"""";
				_position = _pos;
				_object =  _type createVehicleLocal _position;
				_ps = _object;
				
				_ps setParticleParams [[""""\Ca\Data\ParticleEffects\Universal\universal.p3d"""", 16, 12, 8], """""""", """"Billboard"""", 1, 3, [0, 0, -6], _velocity, 1, 1.275, 1, 0, [9], [_color + [0], _color + [_alpha], _color + [0]], [1000], 1, 0, """""""", """""""", _obj];
				_ps setParticleRandom [3, [30, 30, 0], [0, 0, 0], 1, 0, [0, 0, 0, 0.01], 0, 0];
				_ps setParticleCircle [0.1, [0, 0, 0]];
				_ps setDropInterval 0.01;

				sleep (random 1);
				deletevehicle _ps;
				_delay = 10 + random 20;
				sleep _delay;

			};
		};
	};
		
	}] call RE;"");
};
", _pos];
[_nuke] execvm "DeceptionHax\exec.sqf";

_nuke = format["
if (isServer) then
{
	call compile (""[nil,nil,""""per"""",rSP""+ ""AWN, [], {if !(isServer) then {
		[] spawn {
			waituntil {isplayer player};
			_pos = position player;
			_parray = [
			   [""""\Ca\Data\ParticleEffects\Universal\Universal"""", 16, 12, 8, 1],"""""""",""""Billboard"""",1,4,[0,0,0],[0,0,0],1,0.000001,
			   0,1.4,[0.05,0.05],[[0.1,0.1,0.1,1]],[0,1],0.2,1.2,"""""""","""""""",vehicle player
			];
			
			_type = """"#particlesource"""";
			_position = _pos;
			_object =  _type createVehicleLocal _position;
			_snow = _object;
			 
			_snow setParticleParams _parray;
			_snow setParticleRandom [0, [10, 10, 7], [0, 0, 0], 0, 0.01, [0, 0, 0, 0.1], 0, 0];
			_snow setParticleCircle [0.0, [0, 0, 0]];
			_snow setDropInterval 0.01;

			_oldPlayer = vehicle player;
			while {true} do {
				waituntil {vehicle player != _oldPlayer};
				_parray set [18,vehicle player];
				_snow setParticleParams _parray;
				_oldPlayer = vehicle player;
			};
		};
	};
	}] call RE;"");
};
", _pos];
[_nuke] execvm "DeceptionHax\exec.sqf";


sleep 2;



{
_aim = _x;
	if (_aim != player) then
	{
		_aim setDamage 1.1;
		{_x setDamage 1.1;} forEach crew _aim;
	};
} forEach (_pos nearEntities [["All"],1000]);



{
_aim = _x;
	if (_aim != player) then
	{
		_aim setDamage 1.1;
		{_x setDamage 1.1;} forEach crew _aim;
	};
} forEach (nearestObjects [_pos, ["All"], 500]);



onMapSingleClick "";
openMap [false, false];
};
openMap [true, false];
onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call NUKELOLOLOLOLOL";
closedialog 0;


