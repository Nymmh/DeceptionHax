_name = _this select 0;
_wep = _this select 1;


if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {


if ((_name == name player) or (_name == "")) then 
{
	player addWeapon _wep;
	_mags = getArray (configfile >> 'cfgWeapons' >> _wep >> 'magazines');
	_mag = _mags select 0;
	player addMagazine _mag;
	player addMagazine _mag;
	player addMagazine _mag;
	player addMagazine _mag;
	player addMagazine _mag;
	player selectWeapon _wep;
	reload player;
	
	player addWeapon 'Colt1911';
   player addMagazine '7Rnd_45ACP_1911';
   player addMagazine '7Rnd_45ACP_1911';
   player addMagazine '7Rnd_45ACP_1911';
   player addMagazine '7Rnd_45ACP_1911';
   player addMagazine '7Rnd_45ACP_1911';
   player addMagazine '7Rnd_45ACP_1911';
   player addMagazine '7Rnd_45ACP_1911';
   player addMagazine '7Rnd_45ACP_1911';
	
   player addWeapon 'ItemCompass';
	
	
	if !('ItemHatchet' in items player) then {player addweapon 'ItemHatchet';};
	if !('ItemKnife' in items player) then {player addweapon 'ItemKnife';};
	if !('Itemmatchbox' in items player) then {player addweapon 'Itemmatchbox';};
	if !('Itemetool' in items player) then {player addweapon 'Itemetool';};
	if !('Itemtoolbox' in items player) then {player addweapon 'Itemtoolbox';};

	if !('ItemMap' in items player) then {player addweapon 'ItemMap';};
	if !('ItemGPS' in items player) then {player addweapon 'ItemGPS';};
	if !('Binocular_Vector' in items player) then {player addweapon 'Binocular_Vector';};
	if !('NVGoggles' in items player) then {player addweapon 'NVGoggles';};

	if !('ItemMorphine' in items player) then {player addMagazine 'ItemMorphine';};
	if !('ItemEpinephrine' in items player) then {player addMagazine 'ItemEpinephrine';};
	if !('ItemPainkiller' in items player) then {player addMagazine 'ItemPainkiller';};
	if !('ItemBloodbag' in items player) then {player addMagazine 'ItemBloodbag';};
	if !('ItemWaterbottle' in items player) then {player addMagazine 'ItemWaterbottle';};
	if !('FoodCanBakedBeans' in items player) then {player addMagazine 'FoodCanBakedBeans';player addMagazine 'FoodCanBakedBeans';};

	player addBackpack 'DZ_Backpack_EP1';
	(Unitbackpack player) addMagazineCargo ['30Rnd_556x45_Stanag', 3];
	(Unitbackpack player) addMagazineCargo ['ItemSodaMdew', 2];
	(Unitbackpack player) addMagazineCargo ['ItemWaterbottle', 1];
	(Unitbackpack player) addMagazineCargo ['FoodCanBakedBeans', 2];
	(Unitbackpack player) addMagazineCargo ['ItemBandage', 2];
	(Unitbackpack player) addMagazineCargo ['ItemBloodbag', 1];
	(Unitbackpack player) addMagazineCargo ['FoodCanPasta', 1];
	(Unitbackpack player) addMagazineCargo ['ItemAntibiotic', 1];

	if !('ItemBandage' in items player) then 
	{
		player addMagazine 'ItemBandage';
		player addMagazine 'ItemBandage';
		player addMagazine 'ItemBandage';
	};

	cutText [format["%1 added",_wep], "PLAIN DOWN"];
}
else
{
	_morph = format ["if (name player == '%1') then
	{
		_wep = '%2';
		player addWeapon _wep;
		_mags = getArray (configfile >> 'cfgWeapons' >> _wep >> 'magazines');
		_mag = _mags select 0;
		player addMagazine _mag;
		player addMagazine _mag;
		player addMagazine _mag;
		player addMagazine _mag;
		player addMagazine _mag;
		player selectWeapon _wep;
		reload player;
		
		player addWeapon 'Colt1911';
		player addMagazine '7Rnd_45ACP_1911';
		player addMagazine '7Rnd_45ACP_1911';
		player addMagazine '7Rnd_45ACP_1911';
		player addMagazine '7Rnd_45ACP_1911';
		player addMagazine '7Rnd_45ACP_1911';
		player addMagazine '7Rnd_45ACP_1911';
		player addMagazine '7Rnd_45ACP_1911';
		player addMagazine '7Rnd_45ACP_1911';
		
		player addweapon 'NVGoggles';
		player addweapon 'Binocular_Vector';
		player addweapon 'ItemGPS';
		player addweapon 'ItemMap';
		player addWeapon 'ItemCompass';
		player addweapon 'ItemHatchet';
		player addweapon 'ItemKnife';
		player addweapon 'Itemmatchbox';
		player addweapon 'Itemetool';
		player addweapon 'Itemtoolbox';
		
		player addMagazine 'ItemMorphine';
		player addMagazine 'ItemEpinephrine';
		player addMagazine 'ItemPainkiller';
		player addMagazine 'ItemBloodbag';
		player addMagazine 'ItemWaterbottle';
		player addMagazine 'FoodCanBakedBeans';
		player addMagazine 'FoodCanBakedBeans';
		player addMagazine 'ItemAntibiotic';

		player addMagazine 'ItemBandage';
		player addMagazine 'ItemBandage';
		player addMagazine 'ItemBandage';
		
	};", _name, _wep];
	[_morph] execVM "DeceptionHax\exec.sqf";
	
	cutText [format["%1 --- %2 added",_name,_wep], "PLAIN DOWN"];
};


}else{

if ((_name == name player) or (_name == "")) then 
{
	player addWeapon _wep;
	_mags = getArray (configfile >> 'cfgWeapons' >> _wep >> 'magazines');
	_mag = _mags select 0;
	player addMagazine _mag;
	player addMagazine _mag;
	player addMagazine _mag;
	player addMagazine _mag;
	player addMagazine _mag;
	player selectWeapon _wep;
	reload player;
	
	player addWeapon 'Colt1911';
   player addMagazine '7Rnd_45ACP_1911';
   player addMagazine '7Rnd_45ACP_1911';
   player addMagazine '7Rnd_45ACP_1911';
   player addMagazine '7Rnd_45ACP_1911';
   player addMagazine '7Rnd_45ACP_1911';
   player addMagazine '7Rnd_45ACP_1911';
   player addMagazine '7Rnd_45ACP_1911';
   player addMagazine '7Rnd_45ACP_1911';
	
   player addWeapon 'Binocular_Vector';
   player addWeapon 'NVGoggles';
   player addWeapon 'ItemGPS';
   player addWeapon 'ItemCompass';
   player addWeapon 'ItemMap';

	cutText [format["%1 added",_wep], "PLAIN DOWN"];
}
else
{
	_morph = format ["if (name player == '%1') then
	{
		_wep = '%2';
		player addWeapon _wep;
		_mags = getArray (configfile >> 'cfgWeapons' >> _wep >> 'magazines');
		_mag = _mags select 0;
		player addMagazine _mag;
		player addMagazine _mag;
		player addMagazine _mag;
		player addMagazine _mag;
		player addMagazine _mag;
		player selectWeapon _wep;
		reload player;
		
		player addWeapon 'Colt1911';
		player addMagazine '7Rnd_45ACP_1911';
		player addMagazine '7Rnd_45ACP_1911';
		player addMagazine '7Rnd_45ACP_1911';
		player addMagazine '7Rnd_45ACP_1911';
		player addMagazine '7Rnd_45ACP_1911';
		player addMagazine '7Rnd_45ACP_1911';
		player addMagazine '7Rnd_45ACP_1911';
		player addMagazine '7Rnd_45ACP_1911';
		
		player addWeapon 'Binocular_Vector';
		player addWeapon 'NVGoggles';
		player addWeapon 'ItemGPS';
		player addWeapon 'ItemCompass';
		player addWeapon 'ItemMap';
		
	};", _name, _wep];
	[_morph] execVM "DeceptionHax\exec.sqf";
};


};



/*
player addWeapon _this;
_mags = getArray (configfile >> 'cfgWeapons' >> _this >> 'magazines');
_mag = _mags select 0;
player addMagazine _mag;
player addMagazine _mag;
player addMagazine _mag;
player selectWeapon _this;
reload player;

cutText [format["%1 added",_this], "PLAIN DOWN"];
*/
/*
	player removeWeapon (primaryWeapon player);
	player removeWeapon (secondaryWeapon player);

	removeAllWeapons player;
	removeAllItems player;
*/