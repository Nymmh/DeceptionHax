_name = _this select 0;

_wepcount = 10;
_magcount = 30;
_weaponsList = [];
_namelist = [];
_cfgweapons = configFile >> "cfgWeapons";
for "_i" from 0 to (count _cfgweapons)-1 do 
{
	_weapon = _cfgweapons select _i;
	if (isClass _weapon) then 
	{
		_wCName = configName(_weapon);
		_wDName = getText(configFile >> "cfgWeapons" >> _wCName >> "displayName");
		_wModel = getText(configFile >> "cfgWeapons" >> _wCName >> "model");
		_wType = getNumber(configFile >> "cfgWeapons" >> _wCName >> "type");
		_wscope = getNumber(configFile >> "cfgWeapons" >> _wCName >> "scope");
		_wPic =  getText(configFile >> "cfgWeapons" >> _wCName >> "picture");
		_wDesc = getText(configFile >> "cfgWeapons" >> _wCName >> "Library" >> "libTextDesc");	

		_isFake = false;
		_wHits=0;
		_mags=[];
		_muzzles = getArray(configfile >> "cfgWeapons" >> _wCName >> "muzzles");
		if ((_muzzles select 0)=="this") then 
		{
			_muzzles=[_wCName];
			_mags = getArray(configfile >> "cfgWeapons" >> _wCName >> "magazines");
		}
		else
		{
			{
				_muzzle=_x;
				_mags = getArray(configfile >> "cfgWeapons" >> _wCName >> _muzzle >> "magazines");
			} forEach _muzzles;
		};
		
		{
			_ammo = getText(configfile >> "cfgMagazines" >> _x >> "ammo");
			_hit = getNumber(configfile >> "cfgAmmo" >> _ammo >> "hit");
			_wHits = _wHits + _hit;
		} forEach _mags;

		if ((_wCName!="") && (_wDName!="") && (_wModel!="") && (_wPic!="")) then 
		{
			if !(_wDName in _namelist) then 
			{
				_weaponsList = _weaponsList + [[_wCName,_wDName,_wPic,_wDesc]];
				_namelist = _namelist + [_wDName];
			};
		};
	};
};
_namelist=nil;

_magazinesList = [];
_namelist = [];
_cfgmagazines = configFile >> "cfgmagazines";
for "_i" from 0 to (count _cfgmagazines)-1 do 
{
	_magazine = _cfgmagazines select _i;
	if (isClass _magazine) then 
	{
		_mCName = configName(_magazine);
		_mDName = getText(configFile >> "cfgmagazines" >> _mCName >> "displayName");
		_mModel = getText(configFile >> "cfgmagazines" >> _mCName >> "model");
		_mType = getNumber(configFile >> "cfgmagazines" >> _mCName >> "type");
		_mscope = getNumber(configFile >> "cfgmagazines" >> _mCName >> "scope");
		_mPic =  getText(configFile >> "cfgmagazines" >> _mCName >> "picture");
		_mDesc = getText(configFile >> "cfgmagazines" >> _mCName >> "Library" >> "libTextDesc");	

		if ((_mCName!="") && (_mDName!="") && (_mModel!="")) then 
		{
			if !(_mDName in _namelist) then 
			{
				_magazinesList = _magazinesList + [[_mCName,_mDName,_mPic,_mDesc]];
					_namelist = _namelist + [_mDName];
			};
		};
	};
};
_namelist=nil;


{
	if(name _x == _name) then
	{
		_dir = getdir vehicle _x;
		_pos = getPos vehicle _x;
		_pos = [(_pos select 0)+1.5*sin(_dir),(_pos select 1)+1.5*cos(_dir),0];
		_infiSTAR_WPN_BOX_bx = createVehicle ["USBasicAmmunitionBox_EP1", _pos, [], 0, 'CAN_COLLIDE'];

		clearweaponcargo _infiSTAR_WPN_BOX_bx;
		clearmagazinecargo _infiSTAR_WPN_BOX_bx;

		for "_i" from 0 to (count _weaponsList)-1 do {
			_weapon = _weaponsList select _i;
			_infiSTAR_WPN_BOX_bx addweaponcargo [_weapon select 0,_wepcount];
		};

		for "_i" from 0 to (count _magazinesList)-1 do {
			_magazine = _magazinesList select _i;
			_infiSTAR_WPN_BOX_bx addmagazinecargo [_magazine select 0,_magcount];
		};
	};
} forEach playableUnits;

hint format ["DeceptionHax Weapon Box\nSpawned for %1",_name];
cutText [format["DeceptionHax Weapon Box\nSpawned for %1",_name], "PLAIN DOWN"];



