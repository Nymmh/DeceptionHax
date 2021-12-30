if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then {

	weapondescicionxxx_star = false;

	choooseweaponpleaseeeee_star = 
	[
		["",true],
		["Which Weapon ?", [-1], "", -5, [["expression", ""]], "1", "0"],
		["AS50", [3], "", -5, [["expression", "weapondescicionxxx_star=true;call mystuff_AS50;"]], "1", "1"],
		["DMR", [4], "", -5, [["expression", "weapondescicionxxx_star=true;call mystuff_DMR;"]], "1", "1"],
		["M4A1 SD", [5], "", -5, [["expression", "weapondescicionxxx_star=true;call mystuff_M4A1_SD;"]], "1", "1"],
		["M16A4 ACG", [6], "", -5, [["expression", "weapondescicionxxx_star=true;call mystuff_M16A4_ACG;"]], "1", "1"],
		["Mk 48", [7], "", -5, [["expression", "weapondescicionxxx_star=true;call mystuff_Mk_48_DZ;"]], "1", "1"],
		["Ammo Current Weapon", [2], "", -5, [["expression", "weapondescicionxxx_star=true;call ammo_star;"]], "1", "1"]
	];
	showCommandingMenu "#USER:choooseweaponpleaseeeee_star";

	ammo_star = 
	{
		_pWeap = primaryWeapon player;
		_mags = getArray (configfile >> 'cfgWeapons' >> _pWeap >> 'magazines');
		_mag = _mags select 0;
		player addMagazine _mag;
		player addMagazine _mag;
		player addMagazine _mag;
	};
	
	mystuff_AS50={
	removeAllWeapons player; 
	player addweapon 'BAF_AS50_Scoped';
	player addMagazine '5Rnd_127x99_as50';
	player addMagazine '5Rnd_127x99_as50';
	player addMagazine '5Rnd_127x99_as50';
	player selectWeapon 'BAF_AS50_Scoped';
	reload player;
	};

	mystuff_DMR={
	removeAllWeapons player; 
	player addweapon 'DMR';
	player addMagazine '20Rnd_762x51_DMR';
	player addMagazine '20Rnd_762x51_DMR';
	player addMagazine '20Rnd_762x51_DMR';
	player selectWeapon 'DMR';
	reload player;	
	};

	mystuff_M4A1_SD={
	removeAllWeapons player;
	player addWeapon 'M4A1_AIM_SD_camo'; 
	player addMagazine '30Rnd_556x45_StanagSD'; 
	player addMagazine '30Rnd_556x45_StanagSD'; 
	player addMagazine '30Rnd_556x45_StanagSD'; 
	player selectWeapon 'M4A1_AIM_SD_camo';
	reload player;
	};

	mystuff_M16A4_ACG={
	removeAllWeapons player;
	player addWeapon 'M16A4_ACG'; 
	player addMagazine '30Rnd_556x45_Stanag'; 
	player addMagazine '30Rnd_556x45_Stanag'; 
	player addMagazine '30Rnd_556x45_Stanag'; 
	player selectWeapon 'M16A4_ACG';
	reload player;
	};

	mystuff_Mk_48_DZ={
	removeAllWeapons player;
	player addWeapon 'Mk_48_DZ'; 
	player addMagazine '100Rnd_762x51_M240'; 
	player addMagazine '100Rnd_762x51_M240'; 
	player addMagazine '100Rnd_762x51_M240'; 
	player selectWeapon 'Mk_48_DZ';
	reload player;
	};

	WaitUntil{weapondescicionxxx_star};
	weapondescicionxxx_star = false;

	//if !("DZ_Backpack_EP1" in items player) then {removeBackpack player; player addBackpack "DZ_Backpack_EP1";};
	removeBackpack player;
	removeAllItems player;

	player addWeapon 'Colt1911';
	player addMagazine '7Rnd_45ACP_1911';
	player addMagazine '7Rnd_45ACP_1911';
	player addMagazine '7Rnd_45ACP_1911';

	if !("ItemHatchet" in items player) then {player addweapon "ItemHatchet";};
	if !("ItemKnife" in items player) then {player addweapon "ItemKnife";};
	if !("Itemmatchbox" in items player) then {player addweapon "Itemmatchbox";};
	if !("Itemetool" in items player) then {player addweapon "Itemetool";};
	if !("Itemtoolbox" in items player) then {player addweapon "Itemtoolbox";};

	//if !("ItemMap" in items player) then {player addweapon "ItemMap";};
	//if !("ItemGPS" in items player) then {player addweapon "ItemGPS";};
	if !("Binocular_Vector" in items player) then {player addweapon "Binocular_Vector";};
	if !("NVGoggles" in items player) then {player addweapon "NVGoggles";};

	if !("ItemMorphine" in items player) then {player addMagazine "ItemMorphine";};
	if !("ItemEpinephrine" in items player) then {player addMagazine "ItemEpinephrine";};
	if !("ItemPainkiller" in items player) then {player addMagazine "ItemPainkiller";};
	if !("ItemBloodbag" in items player) then {player addMagazine "ItemBloodbag";};
	if !("ItemWaterbottle" in items player) then {player addMagazine "ItemWaterbottle";};
	if !("FoodCanBakedBeans" in items player) then {player addMagazine "FoodCanBakedBeans";player addMagazine "FoodCanBakedBeans";};

	if (alive player) then {player addBackpack "DZ_Backpack_EP1";};
	(Unitbackpack player) addWeaponCargo ['BAF_L85A2_RIS_CWS', 1];
	(Unitbackpack player) addMagazineCargo ['30Rnd_556x45_Stanag', 3];
	(Unitbackpack player) addMagazineCargo ['ItemSodaMdew', 2];
	(Unitbackpack player) addMagazineCargo ['ItemWaterbottle', 1];
	(Unitbackpack player) addMagazineCargo ['FoodCanBakedBeans', 2];
	(Unitbackpack player) addMagazineCargo ['ItemBandage', 2];
	(Unitbackpack player) addMagazineCargo ['ItemBloodbag', 1];
	(Unitbackpack player) addMagazineCargo ['FoodCanPasta', 1];
	//(Unitbackpack player) addMagazineCargo ['ItemAntibiotic', 1];

	if !("ItemBandage" in items player) then 
	{
		player addMagazine "ItemBandage";
		player addMagazine "ItemBandage";
		player addMagazine 'ItemBandage';
	};
	
}else{

	_pWeap = primaryWeapon player;
	_mags = getArray (configfile >> 'cfgWeapons' >> _pWeap >> 'magazines');
	_mag = _mags select 0;
	player addMagazine _mag;
	player addMagazine _mag;
	player addMagazine _mag;
	
	hint "Ammo Given!";
};