if (isNil "SimpleinfiSTAR_ICONS_just_icons_icons_1337") then {SimpleinfiSTAR_ICONS_just_icons_icons_1337 = false;};
SimpleinfiSTAR_ICONS_just_icons_icons_1337 = false;

disableSerialization;
_minimap = (uinamespace getvariable "BIS_RscMiniMap") displayCtrl 101;

if (isnil "infiSTAR_ICONS_just_icons_icons_1337") then 
{
	infiSTAR_ICONS_just_icons_icons_1337 = true; 
	if !("ItemMap" in items player) then {player addweapon "ItemMap";};
	if !("ItemGPS" in items player) then {player addweapon "ItemGPS";};
	
	_map = (findDisplay 12) displayCtrl 51;
	_mapdraw = _map ctrlSetEventHandler ["Draw", "_this call DrawinfiSTAR_ICONS_just_icons_icons_1337;"];
	_minimapdraw = _minimap ctrlSetEventHandler ["Draw", "_this call DrawinfiSTAR_ICONS_just_icons_icons_1337;"];

	cutText ["Icons Added","PLAIN DOWN"];
} 
else 
{
	infiSTAR_ICONS_just_icons_icons_1337 = nil;
	_map ctrlremoveeventhandler ["Draw", _mapdraw];

	cutText ["Icons Removed","PLAIN DOWN"];
};


DrawinfiSTAR_ICONS_just_icons_icons_1337 = 
{
	if (!isnil "infiSTAR_ICONS_just_icons_icons_1337") then 
	{
	    private["_ctrl"];
	    _ctrl =  _this select 0;
		_iscale = (1 - ctrlMapScale _ctrl) max .2;
		_irad = 30;
	    _color = [0, 0, 0, 1];
	    _icon = "\ca\ui\data\icon_zora_ca.paa";

	//	{
	//		if ((count(getPos vehicle _x nearEntities [['StaticWeapon','Car','Motorcycle','Tank','Air','Ship'],400])) != 0) then 
	//		{
				{
					if ((SimpleinfiSTAR_ICONS_just_icons_icons_1337) and (_x iskindof "Landvehicle") and !(_x iskindof "Tank")) then 
					{
						_icon = "\ca\ui\data\iconpapercar_ca.paa";
						_irad = 20;
					}
					else
					{
						_icon = getText(configFile >> "CfgVehicles" >> typeOf _x >> "icon");
						_irad = 30;
					};
					
					if ((_x iskindof "Air") or (_x iskindof "Tank")) then 
					{
						_irad = 40;
						_ctrl drawIcon [_icon, [1, 0, 1, 1], getPosASL _x, _iscale*_irad, _iscale*_irad, getDir _x, "", 1];
					} 
					else 
					{
						_ctrl drawIcon [_icon, [0,0,0.4,1], getPosASL _x, _iscale*_irad, _iscale*_irad, getDir _x, "", 1];	
					};
				} forEach (Entities "LandVehicle"+ Entities "Air" + Entities"Ship");
	//			} forEach (getPos vehicle _x nearEntities [['StaticWeapon','Car','Motorcycle','Tank','Air','Ship'],400]);
	//		};
	//	} forEach playableUnits;

		{
			if ((!isnull _x) and (getPlayerUID _x != "") and !(vehicle _x != _x)) then 
			{	
				if (_x == player) then 
				{
					_color = [0, 0, 0, 1];
				} 
				else 
				{
					_color = [1, 0, 0, 1];
				};
				_ctrl drawIcon ["\ca\ui\data\iconman_ca.paa", _color, getPosASL _x, _iscale*30, _iscale*30, getDir _x, "", 1];
		    };
		} forEach playableUnits;
	};
};