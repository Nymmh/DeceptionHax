_weapons = ["DMR", "M9SD", "ItemGPS", "ItemToolbox", "ItemWatch", "NVGoggles", "ItemMatchbox", "ItemMap", "ItemHatchet", "ItemFlashlightRed", "ItemEtool", "ItemCompass"];
_magazines = ["20Rnd_762x51_DMR", "20Rnd_762x51_DMR", "20Rnd_762x51_DMR", "20Rnd_762x51_DMR", "15Rnd_9x19_M9SD", "15Rnd_9x19_M9SD", "15Rnd_9x19_M9SD", "Skin_Sniper1_DZ", "ItemMorphine", "ItemEpinephrine", "ItemBandage", "ItemBandage"];
_backpack = "DZ_Backpack_EP1";
_backpackcargo = ["FoodCanFrankBeans", "FoodCanFrankBeans", "ItemSodaMdew", "ItemSodaMdew", "ItemBloodbag"];
	
_give_dmr_all = format ['
removeAllWeapons player;
swpn_star =
{
	_wpns = %1;
	{
		_isOK = true;
		if (_isOK) then {
			player addWeapon _x;
		};
	} forEach _wpns;
};
smag_star =
{
	_mags = %2;
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
sbp_star =
{
	_bcpk = "%3";
	player addBackpack _bcpk;
};
sbpc_star =
{
	_holder = unitBackpack player;
	_objWpnTypes = %4;
	_objWpnQty = [1];
	_countr = 0;
	{
		_holder addmagazinecargoGlobal [_x,(_objWpnQty select _countr)];
	} forEach _objWpnTypes;
};
call swpn_star;
call smag_star;
call sbp_star;
call sbpc_star;
', _weapons, _magazines, _backpack, _backpackcargo];
[_give_dmr_all] execVM "DeceptionHax\exec.sqf";

hint format ["Gear DMR to All given"];
cutText [format["Gear DMR to All given"], "PLAIN DOWN"];



