_name = _this select 0;

_toRE = format['if (name player == "%1") then
{
	_weapons = ["M4A1_AIM_SD_CAMO", "M9SD", "ItemGPS", "ItemToolbox", "ItemWatch", "NVGoggles", "ItemMatchbox", "ItemMap", "ItemHatchet", "ItemFlashlightRed", "ItemEtool", "ItemCompass"];
	_magazines = ["30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD", "30Rnd_556x45_StanagSD", "30Rnd_556x45_StanagSD", "30Rnd_556x45_StanagSD", "15Rnd_9x19_M9SD", "15Rnd_9x19_M9SD", "15Rnd_9x19_M9SD", "Skin_Sniper1_DZ", "ItemMorphine", "ItemEpinephrine", "ItemBandage", "ItemBandage"];
	_backpack = "DZ_Backpack_EP1";
	_backpackcargo = ["FoodCanFrankBeans", "FoodCanFrankBeans", "ItemSodaMdew", "ItemSodaMdew", "ItemBloodbag", "30Rnd_556x45_StanagSD", "30Rnd_556x45_StanagSD"];

	removeAllWeapons player;
	swpn =
	{
		_wpns = _weapons;
		{
			_isOK = true;
			if (_isOK) then {
				player addWeapon _x;
			};
		} forEach _wpns;
	};
	smag =
	{
		_mags = _magazines;
		{
			_isOK = true;
			if (_isOK) then {
				player addMagazine _x;
					_wep = primaryWeapon player;
					player selectWeapon _wep;
					reload player;
			};
		} forEach _mags;
	};
	sbp =
	{
		_bcpk = _backpack;
		player addBackpack _bcpk;
	};
	sbpc =
	{
		_holder = unitBackpack player;
		_objWpnTypes = _backpackcargo;
		_objWpnQty = [1];
		_countr = 0;
		{
			_holder addmagazinecargoGlobal [_x,(_objWpnQty select _countr)];
		} forEach _objWpnTypes;
	};
	call swpn;
	call smag;
	call sbp;
	call sbpc;	
};',_name];
[_toRE] execVM "DeceptionHax\exec.sqf";

hint format ["%1 M4SD given", _name];
cutText [format["%1 M4SD given", _name], "PLAIN DOWN"];