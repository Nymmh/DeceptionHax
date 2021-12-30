disableSerialization;
#include "common.hpp"

#define font "Zeppelin32"//Zeppelin33Italic//LucidaConsoleB//Zeppelin32
#define color_black      [0, 0, 0, 1]
#define color_maroon     [0.5, 0, 0.2, 1]
#define color_red        [0.95, 0, 0, 1]//[1, 0, 0, 1]
#define color_green      [0,1,0.2,1]//[0, 1, 0, 1]//[0.1, 0.7, 0.3, 1]
#define color_blue       [0, 0, 1, 1]
#define color_yellow     [0.85, 0.85, 0, 1]


#define title_dialog     [0.2, 0.2, 1, 1]//[1,1,0,1]//[0,1,0,1]//[0, 0.75, 1, 1]//[0, 0, 1, 1]//[0, 0.75, 1, 1]//[1, 0.75, 0, 1]

#define menu_title       [0, 1, 1, 1]//[0.3, 0.44, 0.9, 1]//[0, 0.75, 1, 1]//[0.4, 0.4, 1, 1]//[0.9, 0.44, 0, 1]
#define menu_sub         [1, 0.41, 0.96, 1]//[1, 0.07, 0.4, 1]//[1, 0, 0.84, 1]//[0, 0.9, 0, 1]//[1, 1, 0, 1]//[0.85, 0.85, 0, 1]
#define menu_toggle_on   [0,1,0.2,1]//[0,1,0,1]
#define menu_toggle_off  [1, 0.1, 0.1, 0.6]//[0.95, 0, 0, 1]
#define menu_run         [0.7, 0.9, 0.7, 1]//[1, 1, 1, 1]
#define menu_disabled    [1, 1, 1, 1]

#define color_redtwo     [0.7, 0, 0, 1]
#define color_lightgreen [0, 1, 0, 1]
#define color_lightblue  [0.4, 0.4, 1, 1]
#define color_yellotwo   [1, 1, 0, 1]
#define color_vehblue	 [0.2, 0.2, 1, 1]

#define color_friendlyplayer	[1, 1, 1, 1]//[0, 1, 1, 1]
#define color_enemyplayer     [0.9, 0.44, 0, 1]

Metallica_infiSTAR_funcs_inited = true;

isInSub = false;
if (isnil "tell_me_more_Metallica_infiSTAR") then {tell_me_more_Metallica_infiSTAR = false;};
if (isnil "airborne_spawn_vehicle_infiSTAR") then {airborne_spawn_vehicle_infiSTAR = false;};

// Runs when item is doubleclicked
Metallica_infiSTAR_hax_dbclick =
{
	_isran = false;
	_path      = thfile select ((lbCurSel 2))*7+1;
	_istoggle  = thfile select ((lbCurSel 2))*7+2;
	_istitle   = thfile select ((lbCurSel 2))*7+3;
	_issubmenu = thfile select ((lbCurSel 2))*7+4;
	_isplayer  = thfile select ((lbCurSel 2))*7+5;
	if (_istitle == "1") exitWith {};
	if (_issubmenu == "1") then
	{
		if (_path == "Vehicles") exitWith {call Metallica_infiSTAR_fill_Vehicles};
		if (_path == "LandVehicles") exitWith {call Metallica_infiSTAR_fill_LandVehicles};
		if (_path == "ShipVehicles") exitWith {call Metallica_infiSTAR_fill_ShipVehicles};
		if (_path == "Objects") exitWith {call Metallica_infiSTAR_fill_Objects};
		if (_path == "Weaponz") exitWith {call Metallica_infiSTAR_fill_Weapons};
		if (_path == "cash") exitWith {call Metallica_infiSTAR_fill_cash_menu};
		if (_path == "Spwn_misc") exitWith {call Metallica_infiSTAR_fill_spawn_misc_menu};
		if (_path == "Morphy") exitWith {call Metallica_infiSTAR_fill_morph_menu};
		if (_path == "Specific") exitWith {call Metallica_infiSTAR_fill_Specific};
		if (_path == "ALL_MISC") exitWith {call Metallica_infiSTAR_fill__ALL_MISC};
		if (_path == "MassiveD") exitWith {call Metallica_infiSTAR_fill_MassiveD};
		if (_path == "VFilter") exitWith {call infiSTAR_fill_VFilter};
		if (_path == "BACK") exitWith {call Metallica_infiSTAR_fillHax};
	};
	if (isInSub) then
	{
		call compile format["%1;", _path];
		_isran = true;
	};
	if (_istoggle == "1") then
	{
		call compile format["execVM %1;", _path];
		_isran = true;
		_toggled = lbData [2, (lbCurSel 2)];
		if (_toggled == "nottoggled") then
		{
			// Set toggled to true & change color
			lbSetData [2, (lbCurSel 2), "toggled"];
			lbSetColor [2, (lbCurSel 2), menu_toggle_on];
			Metallica_infiSTAR_hax_toggled = Metallica_infiSTAR_hax_toggled + [(lbCurSel 2)];
		}
		else
		{
			// Set toggled to false & change color
			lbSetData [2, (lbCurSel 2), "nottoggled"];
			lbSetColor [2, (lbCurSel 2), menu_toggle_off];
			Metallica_infiSTAR_hax_toggled = Metallica_infiSTAR_hax_toggled - [(lbCurSel 2)];
		};
		_ctrl = 2 call Metallica_infiSTAR_getControl;
		_ctrl ctrlCommit 0.01;
	};
	if (_isplayer == "1") then
	{
		if ((lbCurSel 1) >= 0) then
		{
			call compile format ["[""%1""] execVM %2;", lbtext [1, (lbCurSel 1)], _path];
			_isran = true;
		}
		else
		{
			hint "Script requires a player!";
			_isran = true;
		};
	};
	if (_isplayer == "0" and !_isran) then {call compile format ["execVM %1;", _path];};
};

//Fills the main window with list of scripts
Metallica_infiSTAR_fillHax =
{
	isInSub = false;
	_ctrl = 2 call Metallica_infiSTAR_getControl;
	lbclear _ctrl;
	_execx = '"\DeceptionHax\%1"';
	thfile = [];
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\mainmenu.sqf";
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\for_scrolling.sqf";
		
	for [{_num = 0}, {_num <= count(thfile)-1}, {_num = _num+7}] do
	{
		_index      = _ctrl lbAdd format["%1", thfile select _num];
		_togglable  = thfile select (_num+2);
		_istitle    = thfile select (_num+3);
		_issubmenu  = thfile select (_num+4);
		_thcolor    = thfile select (_num+6);
		if (count _thcolor == 0) then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_run];
		}
		else
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];
		};
		
		if (_togglable == "1") then
		{
			if (_index in Metallica_infiSTAR_hax_toggled) then
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "toggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_on];
			}
			else
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "nottoggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_off];
			};
		};
		if (_istitle == "1") then {_ctrl lbSetColor [(lbsize _ctrl)-1, menu_title];};
		if (_issubmenu == "1") then {_ctrl lbSetColor [(lbsize _ctrl)-1, menu_sub];};
	};
};

Metallica_infiSTAR_fill_Specific =
{
	isInSub = false;
	_ctrl = 2 call Metallica_infiSTAR_getControl;
	lbclear _ctrl;
	_execx = '"\DeceptionHax\%1"';
	thfile = [];
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\specificmenu.sqf";
	thfile = thfile + ["                 == MAIN ==","BACK","0","0","1","0",menu_sub];
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\for_scrolling.sqf";
	
	for [{_num = 0}, {_num <= count(thfile)-1}, {_num = _num+7}] do
	{
		_index      = _ctrl lbAdd format["%1", thfile select _num]; 
		_togglable  = thfile select (_num+2);
		_istitle    = thfile select (_num+3);
		_issubmenu  = thfile select (_num+4);
		_thcolor    = thfile select (_num+6);
		
		if (count _thcolor == 0) then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_run];
		}
		else
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];
		};
		
		if (_togglable == "1") then
		{
			if (_index in Metallica_infiSTAR_hax_toggled) then
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "toggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_on];
			}
			else
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "nottoggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_off];
			};
		};

		if (_istitle == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_title];
		};

		if (_issubmenu == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_sub];
		};
	};
};

Metallica_infiSTAR_fill__ALL_MISC =
{
	isInSub = false;
	_ctrl = 2 call Metallica_infiSTAR_getControl;
	lbclear _ctrl;

	_execx = '"\DeceptionHax\%1"';
	thfile = [];
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\all_misc__menu.sqf";
   thfile = thfile + ["                 == MAIN ==","BACK","0","0","1","0",menu_sub];
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\for_scrolling.sqf";
	
	for [{_num = 0}, {_num <= count(thfile)-1}, {_num = _num+7}] do
	{
		_index      = _ctrl lbAdd format["%1", thfile select _num]; 
		_togglable  = thfile select (_num+2);
		_istitle    = thfile select (_num+3);
		_issubmenu  = thfile select (_num+4);
		_thcolor    = thfile select (_num+6);
		
		if (count _thcolor == 0) then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_run];
		}
		else
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];
		};
		
		if (_togglable == "1") then
		{
			if (_index in Metallica_infiSTAR_hax_toggled) then
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "toggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_on];
			}
			else
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "nottoggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_off];
			};
		};

		if (_istitle == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_title];
		};

		if (_issubmenu == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_sub];
		};
	};
};

Metallica_infiSTAR_fill_MassiveD =
{
	isInSub = false;
	_ctrl = 2 call Metallica_infiSTAR_getControl;
	lbclear _ctrl;

	_execx = '"\DeceptionHax\%1"';
	thfile = [];
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\massive_destruction.sqf";
   thfile = thfile + ["                 == MAIN ==","BACK","0","0","1","0",menu_sub];
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\for_scrolling.sqf";
	
	for [{_num = 0}, {_num <= count(thfile)-1}, {_num = _num+7}] do
	{
		_index      = _ctrl lbAdd format["%1", thfile select _num]; 
		_togglable  = thfile select (_num+2);
		_istitle    = thfile select (_num+3);
		_issubmenu  = thfile select (_num+4);
		_thcolor    = thfile select (_num+6);
		
		if (count _thcolor == 0) then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_run];
		}
		else
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];
		};
		
		if (_togglable == "1") then
		{
			if (_index in Metallica_infiSTAR_hax_toggled) then
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "toggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_on];
			}
			else
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "nottoggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_off];
			};
		};

		if (_istitle == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_title];
		};

		if (_issubmenu == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_sub];
		};
	};
};

infiSTAR_fill_VFilter =
{
	isInSub = false;
	_ctrl = 2 call Metallica_infiSTAR_getControl;
	lbclear _ctrl;

	_execx = '"\DeceptionHax\%1"';
	thfile = [];
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\filtermenu.sqf";
   thfile = thfile + ["                 == MAIN ==","BACK","0","0","1","0",menu_sub];
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\for_scrolling.sqf";
	
	for [{_num = 0}, {_num <= count(thfile)-1}, {_num = _num+7}] do
	{
		_index      = _ctrl lbAdd format["%1", thfile select _num]; 
		_togglable  = thfile select (_num+2);
		_istitle    = thfile select (_num+3);
		_issubmenu  = thfile select (_num+4);
		_thcolor    = thfile select (_num+6);
		
		if (count _thcolor == 0) then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_run];
		}
		else
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];
		};
		
		if (_togglable == "1") then
		{
			if (_index in Metallica_infiSTAR_hax_toggled) then
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "toggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_on];
			}
			else
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "nottoggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_off];
			};
		};

		if (_istitle == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_title];
		};

		if (_issubmenu == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_sub];
		};
	};
};

Metallica_infiSTAR_fill_cash_menu =
{
	isInSub = false;
	_ctrl = 2 call Metallica_infiSTAR_getControl;
	lbclear _ctrl;

	_execx = '"\DeceptionHax\%1"';
	thfile = [];
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\cash_menu.sqf";
   thfile = thfile + ["                 == MAIN ==","BACK","0","0","1","0",menu_sub];
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\for_scrolling.sqf";
	
	for [{_num = 0}, {_num <= count(thfile)-1}, {_num = _num+7}] do
	{
		_index      = _ctrl lbAdd format["%1", thfile select _num]; 
		_togglable  = thfile select (_num+2);
		_istitle    = thfile select (_num+3);
		_issubmenu  = thfile select (_num+4);
		_thcolor    = thfile select (_num+6);
		
		if (count _thcolor == 0) then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_run];
		}
		else
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];
		};
		
		if (_togglable == "1") then
		{
			if (_index in Metallica_infiSTAR_hax_toggled) then
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "toggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_on];
			}
			else
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "nottoggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_off];
			};
		};

		if (_istitle == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_title];
		};

		if (_issubmenu == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_sub];
		};
	};
};

Metallica_infiSTAR_fill_spawn_misc_menu =
{
	isInSub = false;
	_ctrl = 2 call Metallica_infiSTAR_getControl;
	lbclear _ctrl;

	_execx = '"\DeceptionHax\%1"';
	thfile = [];
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\spawn_misc.sqf";
   thfile = thfile + ["                 == MAIN ==","BACK","0","0","1","0",menu_sub];
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\for_scrolling.sqf";
	
	for [{_num = 0}, {_num <= count(thfile)-1}, {_num = _num+7}] do
	{
		_index      = _ctrl lbAdd format["%1", thfile select _num]; 
		_togglable  = thfile select (_num+2);
		_istitle    = thfile select (_num+3);
		_issubmenu  = thfile select (_num+4);
		_thcolor    = thfile select (_num+6);
		
		if (count _thcolor == 0) then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_run];
		}
		else
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];
		};
		
		if (_togglable == "1") then
		{
			if (_index in Metallica_infiSTAR_hax_toggled) then
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "toggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_on];
			}
			else
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "nottoggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_off];
			};
		};

		if (_istitle == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_title];
		};

		if (_issubmenu == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_sub];
		};
	};
};

Metallica_infiSTAR_fill_morph_menu =
{
	isInSub = true;
	_ctrl = 2 call Metallica_infiSTAR_getControl;
	lbclear _ctrl;
	_execx = "[lbtext [1, (lbCurSel 1)],'%1'] execVM '\DeceptionHax\spawn\spawnmorph_y.sqf'";
	thfile = [];
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\morph_menu_y.sqf";
   thfile = thfile + ["                 == MAIN ==","BACK","0","0","1","0",menu_sub];
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\for_scrolling.sqf";
	
	for [{_num = 0}, {_num <= count(thfile)-1}, {_num = _num+7}] do
	{
		_index      = _ctrl lbAdd format["%1", thfile select _num]; 
		_togglable  = thfile select (_num+2);
		_istitle    = thfile select (_num+3);
		_issubmenu  = thfile select (_num+4);
		_thcolor    = thfile select (_num+6);
		
		if (count _thcolor == 0) then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_run];
		}
		else
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];
		};
		
		if (_togglable == "1") then
		{
			if (_index in Metallica_infiSTAR_hax_toggled) then
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "toggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_on];
			}
			else
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "nottoggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_off];
			};
		};

		if (_istitle == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_title];
		};

		if (_issubmenu == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_sub];
		};
	};
};

//Fills the player window with list of players
Metallica_infiSTAR_fillPlrs =
{
	_ctrl = 1 call Metallica_infiSTAR_getControl;
	lbclear _ctrl;
	
	_greenlisted = call compile preprocessFileLineNumbers "DeceptionHax\list.sqf";
	
	
	_ctrl lbAdd format["------------------------------PLAYER------------------------------"];
	_ctrl lbSetColor [(lbsize _ctrl)-1, menu_sub];
	
	//if not in vehicle
	{
		if (vehicle _x == _x) then 
		{
			if ((getPlayerUID _x != "") && !(getPlayerUID _x in _greenlisted)) then
			{
				_ctrl lbAdd format["%1", name _x];
				_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
				
				if ((side _x == side player) and (side _x != resistance)) then
				{
					_ctrl lbSetColor [(lbsize _ctrl)-1, color_friendlyplayer];
					_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'picture'))];
				}
				else
				{
					_ctrl lbSetColor [(lbsize _ctrl)-1, color_enemyplayer];
					_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'picture'))];
				};
				
				if (tell_me_more_Metallica_infiSTAR) then 
				{
					_ctrl lbAdd format["                Weapon: %1",primaryweapon _x];
					_ctrl lbSetColor [(lbsize _ctrl)-1, color_lightgreen];
					
					if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then 
					{
						_ctrl lbAdd format["                Distance: %1 - Blood: %2",round(player distance _x),(round(_x getVariable["USEC_BloodQty",12000]))];
						if (((player distance _x) > 500) and ((round(_x getVariable["USEC_BloodQty",12000])) > 5500)) then 
						{
							_ctrl lbSetColor [(lbsize _ctrl)-1, color_lightgreen];
						}
						else
						{
							_ctrl lbSetColor [(lbsize _ctrl)-1, color_red];
						};
					}
					else
					{
						_ctrl lbAdd format["                Distance: %1 - Health: %2",round(player distance _x),(floor(100-((damage _x)*100)))];
						if (((player distance _x) > 500) and ((floor(100-((damage _x)*100))) > 50)) then 
						{
							_ctrl lbSetColor [(lbsize _ctrl)-1, color_lightgreen];
						}
						else
						{
							_ctrl lbSetColor [(lbsize _ctrl)-1, color_red];
						};
					};
					
				};
			};
			
			if (getPlayerUID _x in _greenlisted) then 
			{
				_ctrl lbAdd format["%1", name _x];
				_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, color_lightgreen];
				_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'picture'))];
				
				if (tell_me_more_Metallica_infiSTAR) then 
				{
					_ctrl lbAdd format["                Weapon: %1",primaryweapon _x];
					_ctrl lbSetColor [(lbsize _ctrl)-1, color_lightgreen];
					_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'picture'))];
					
					if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then 
					{
						_ctrl lbAdd format["                Distance: %1 - Blood: %2",round(player distance _x),(round(_x getVariable["USEC_BloodQty",12000]))];
						if (((player distance _x) > 500) and ((round(_x getVariable["USEC_BloodQty",12000])) > 5500)) then 
						{
							_ctrl lbSetColor [(lbsize _ctrl)-1, color_lightgreen];
						}
						else
						{
							_ctrl lbSetColor [(lbsize _ctrl)-1, color_red];
						};
					}
					else
					{
						_ctrl lbAdd format["                Distance: %1 - Health: %2",round(player distance _x),(floor(100-((damage _x)*100)))];
						if (((player distance _x) > 500) and ((floor(100-((damage _x)*100))) > 50)) then 
						{
							_ctrl lbSetColor [(lbsize _ctrl)-1, color_lightgreen];
						}
						else
						{
							_ctrl lbSetColor [(lbsize _ctrl)-1, color_red];
						};
					};
					
				};
			};
		};
	} forEach playableUnits;


	_ctrl lbAdd format["----------------------------IN VEHICLE----------------------------"];
	_ctrl lbSetColor [(lbsize _ctrl)-1, menu_sub];
	
	//if in vehicle
	{
		if (vehicle _x != _x) then 
		{
			if ((vehicle _x isKindOf "LandVehicle") || (vehicle _x isKindOf "Air") || (vehicle _x isKindOf "Ship")) then 
			{
					if ((getPlayerUID _x != "") && !(getPlayerUID _x in _greenlisted)) then
					{
						{
							_ctrl lbAdd format["%1", name _x];
							_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
							
							if ((side _x == side player) and (side _x != resistance)) then 
							{
								_ctrl lbSetColor [(lbsize _ctrl)-1, color_vehblue];
								_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'picture'))];
							}
							else
							{
								_ctrl lbSetColor [(lbsize _ctrl)-1, color_red];
								_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'picture'))];
							};
							
							if (tell_me_more_Metallica_infiSTAR) then 
							{
								_ctrl lbAdd format["    %1", typeOF vehicle _x];
								if (((side ((crew vehicle _x) select 0)) == side player) and (side ((crew vehicle _x) select 0) != resistance)) then 
								{
									_ctrl lbSetColor [(lbsize _ctrl)-1, color_vehblue];
									_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'picture'))];
								}
								else
								{
									_ctrl lbSetColor [(lbsize _ctrl)-1, color_red];
									_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'picture'))];
								};
								_crewVeh = _x;
								{
									if (_x != (driver _crewVeh)) then 
									{
										_ctrl lbAdd format["        %1", name _x];
										if ((side _x == side player) and (side _x != resistance)) then 
										{
											_ctrl lbSetColor [(lbsize _ctrl)-1, color_vehblue];
											_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'picture'))];
										}
										else
										{
											_ctrl lbSetColor [(lbsize _ctrl)-1, color_red];
											_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'picture'))];
										};
									};
								} forEach (crew vehicle _x);
								_ctrl lbAdd format["                Weapon: %1",primaryweapon _x];
								_ctrl lbSetColor [(lbsize _ctrl)-1, color_lightgreen];
								_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'picture'))];
								_ctrl lbAdd format["                Distance: %1",round(player distance _x)];
								if ((player distance _x) > 500) then 
								{
									_ctrl lbSetColor [(lbsize _ctrl)-1, color_lightgreen];
								}
								else
								{
									_ctrl lbSetColor [(lbsize _ctrl)-1, color_red];
								};
							};
						} forEach crew _x;
					};
					
					if (getPlayerUID _x in _greenlisted) then 
					{
						{
							_ctrl lbAdd format["%1", name _x];
							_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
							_ctrl lbSetColor [(lbsize _ctrl)-1, color_lightgreen];
							_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'picture'))];
							if (tell_me_more_Metallica_infiSTAR) then 
							{
								_ctrl lbAdd format["    %1", typeOF vehicle _x];
								_ctrl lbSetColor [(lbsize _ctrl)-1, color_lightgreen];
								_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'picture'))];
								_crewVeh = _x;
								{
									if (_x != (driver _crewVeh)) then 
									{
										_ctrl lbAdd format["        %1", name _x];
										if (getPlayerUID _x in _greenlisted) then 
										{
											_ctrl lbSetColor [(lbsize _ctrl)-1, color_lightgreen];
											_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'picture'))];
										}
										else
										{
											if ((side _x == side player) and (side _x != resistance)) then 
											{
												_ctrl lbSetColor [(lbsize _ctrl)-1, color_vehblue];
												_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'picture'))];
											}
											else
											{
												_ctrl lbSetColor [(lbsize _ctrl)-1, color_red];
												_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'picture'))];
											};
										};
									};
								} forEach (crew vehicle _x);
								_ctrl lbAdd format["                Weapon: %1",primaryweapon _x];
								_ctrl lbSetColor [(lbsize _ctrl)-1, color_lightgreen];
								_ctrl lbAdd format["                Distance: %1",round(player distance _x)];
								if ((player distance _x) > 500) then 
								{
									_ctrl lbSetColor [(lbsize _ctrl)-1, color_lightgreen];
								}
								else
								{
									_ctrl lbSetColor [(lbsize _ctrl)-1, color_red];
								};
							};
						} forEach crew _x;
					};
			};
		};
	} forEach playableUnits;


_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
_ctrl lbAdd format [""];
};

/*
if (_x isKindOf "Man") then 
if !(_x == vehicle _x) then 
forEach playableUnits;
forEach playableUnits;
count playableUnits;
forEach entities "AllVehicles";
forEach entities "All";
waitUntil {_count != (count playableUnits)};
*/


// Fills the vehicle menu with list of vehicles
Metallica_infiSTAR_fill_Vehicles =
{
	isInSub = true;
	_ctrl = 2 call Metallica_infiSTAR_getControl;
	lbclear _ctrl;
	_execx = '"%1" execVM "\DeceptionHax\spawn\spawnvehicle.sqf"';
	thfile = [];
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\vehiclemenu.sqf";
	thfile = thfile + ["                 == MAIN ==","BACK","0","0","1","0",menu_sub];	
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\for_scrolling.sqf";
	
	for [{_num = 0}, {_num <= count(thfile)-1}, {_num = _num+7}] do
	{
		_index      = _ctrl lbAdd format["%1", thfile select _num];
		_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> 'CfgVehicles' >> (thfile select _num) >> 'picture'))];
		_togglable  = thfile select (_num+2);
		_istitle    = thfile select (_num+3);
		_issubmenu  = thfile select (_num+4);
		_thcolor    = thfile select (_num+6);
		
		if (count _thcolor == 0) then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_run];
		}
		else
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];
		};
		
		if (_togglable == "1") then
		{
			if (_index in Metallica_infiSTAR_hax_toggled) then
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "toggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_on];
			}
			else
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "nottoggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_off];
			};
		};

		if (_istitle == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_title];
		};

		if (_issubmenu == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_sub];
		};
	};
};

Metallica_infiSTAR_fill_LandVehicles =
{
	isInSub = true;
	_ctrl = 2 call Metallica_infiSTAR_getControl;
	lbclear _ctrl;
	_execx = '"%1" execVM "\DeceptionHax\spawn\spawnvehicle.sqf"';
	thfile = [];
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\Land_vehiclemenu.sqf";
	thfile = thfile + ["                 == MAIN ==","BACK","0","0","1","0",menu_sub];	
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\for_scrolling.sqf";
	
	for [{_num = 0}, {_num <= count(thfile)-1}, {_num = _num+7}] do
	{
		_index      = _ctrl lbAdd format["%1", thfile select _num];
		_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> 'CfgVehicles' >> (thfile select _num) >> 'picture'))];
		_togglable  = thfile select (_num+2);
		_istitle    = thfile select (_num+3);
		_issubmenu  = thfile select (_num+4);
		_thcolor    = thfile select (_num+6);
		
		if (count _thcolor == 0) then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_run];
		}
		else
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];
		};
		
		if (_togglable == "1") then
		{
			if (_index in Metallica_infiSTAR_hax_toggled) then
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "toggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_on];
			}
			else
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "nottoggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_off];
			};
		};

		if (_istitle == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_title];
		};

		if (_issubmenu == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_sub];
		};
	};
};

Metallica_infiSTAR_fill_ShipVehicles =
{
	isInSub = true;
	_ctrl = 2 call Metallica_infiSTAR_getControl;
	lbclear _ctrl;
	_execx = '"%1" execVM "\DeceptionHax\spawn\spawnvehicle.sqf"';
	thfile = [];
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\ship_vehiclemenu.sqf";
	thfile = thfile + ["                 == MAIN ==","BACK","0","0","1","0",menu_sub];	
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\for_scrolling.sqf";
	
	for [{_num = 0}, {_num <= count(thfile)-1}, {_num = _num+7}] do
	{
		_index      = _ctrl lbAdd format["%1", thfile select _num];
		_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> 'CfgVehicles' >> (thfile select _num) >> 'picture'))];
		_togglable  = thfile select (_num+2);
		_istitle    = thfile select (_num+3);
		_issubmenu  = thfile select (_num+4);
		_thcolor    = thfile select (_num+6);
		
		if (count _thcolor == 0) then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_run];
		}
		else
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];
		};
		
		if (_togglable == "1") then
		{
			if (_index in Metallica_infiSTAR_hax_toggled) then
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "toggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_on];
			}
			else
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "nottoggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_off];
			};
		};

		if (_istitle == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_title];
		};

		if (_issubmenu == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_sub];
		};
	};
};

// Fills the object menu with list of objects
Metallica_infiSTAR_fill_Objects =
{
	isInSub = true;
	_ctrl = 2 call Metallica_infiSTAR_getControl;
	lbclear _ctrl;
	_execx = '"%1" execVM "\DeceptionHax\spawn\spawnvehicle.sqf"';
	thfile = [];
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\objectmenu.sqf";
	thfile = thfile + ["                 == MAIN ==","BACK","0","0","1","0",menu_sub];	
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\for_scrolling.sqf";
	
	for [{_num = 0}, {_num <= count(thfile)-1}, {_num = _num+7}] do
	{
		_index      = _ctrl lbAdd format["%1", thfile select _num];
		_togglable  = thfile select (_num+2);
		_istitle    = thfile select (_num+3);
		_issubmenu  = thfile select (_num+4);
		_thcolor    = thfile select (_num+6);
		
		if (count _thcolor == 0) then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_run];
		}
		else
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];
		};
		
		if (_togglable == "1") then
		{
			if (_index in Metallica_infiSTAR_hax_toggled) then
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "toggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_on];
			}
			else
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "nottoggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_off];
			};
		};

		if (_istitle == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_title];
		};

		if (_issubmenu == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_sub];
		};
	};
};

// Fills the weapon menu with list of weapons
Metallica_infiSTAR_fill_Weapons =
{
	isInSub = true;
	_ctrl = 2 call Metallica_infiSTAR_getControl;
	lbclear _ctrl;
	//_execx = '"%1" execVM "\DeceptionHax\spawn\spawnweapon.sqf"';
	_execx = "[lbtext [1, (lbCurSel 1)],'%1'] execVM '\DeceptionHax\spawn\spawnweapon.sqf'";
	thfile = [];
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\weaponmenu.sqf";
	thfile = thfile + ["                 == MAIN ==","BACK","0","0","1","0",menu_sub];
	call compile preprocessFileLineNumbers "DeceptionHax\menu\menulist\for_scrolling.sqf";

	for [{_num = 0}, {_num <= count(thfile)-1}, {_num = _num+7}] do
	{
		_index      = _ctrl lbAdd format["%1", thfile select _num];
		_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> 'cfgWeapons' >> (thfile select _num) >> 'picture'))];
		_togglable  = thfile select (_num+2);
		_istitle    = thfile select (_num+3);
		_issubmenu  = thfile select (_num+4);
		_thcolor    = thfile select (_num+6);
		
		if (count _thcolor == 0) then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_run];
		}
		else
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];
		};
		
		if (_togglable == "1") then
		{
			if (_index in Metallica_infiSTAR_hax_toggled) then
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "toggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_on];
			}
			else
			{
				_ctrl lbSetData [(lbsize _ctrl)-1, "nottoggled"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, menu_toggle_off];
			};
		};

		if (_istitle == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_title];
		};

		if (_issubmenu == "1") then
		{
			_ctrl lbSetColor [(lbsize _ctrl)-1, menu_sub];
		};
	};
};


// Runs when the menu is displayed
Metallica_infiSTAR_initMenu =
{
	if (isNil "First_Run_infiSTAR_Menu") then 
	{	First_Run_infiSTAR_Menu = true;
		
		// Fixing the menu
		_ctrl = -1 call Metallica_infiSTAR_getControl;
		_ctrl ctrlSetPosition menu_pos;
		_ctrl ctrlSetBackgroundColor [0, 0, 0, .5];
		_ctrl ctrlCommit .5;

		// Fixing the MainCaption
		_ctrl = 3 call Metallica_infiSTAR_getControl;
		_ctrl ctrlSetPosition title_pos;
		_ctrl ctrlSetText "Aleks    DeceptionHax    Corbin    DeceptionHax    RiPZ    DeceptionHax    Mac    DeceptionHax    Aleks    DeceptionHax    Corbin    DeceptionHax	Ripz	DeceptionHax	Mac	  DeceptionHax";
		_ctrl ctrlSetTextColor title_dialog;
		_ctrl ctrlSetBackgroundColor [0, 0, 0, 5];
		_ctrl ctrlSetFont font;
		_ctrl ctrlSetScale (safezoneH - safezoneW / 2) * 4;
		_ctrl ctrlCommit 0.01;

		// Fixing the MainTree / players
		_ctrl = 1 call Metallica_infiSTAR_getControl;
		_ctrl ctrlSetPosition players_pos;
		_ctrl ctrlSetFont font;
		_ctrl ctrlSetScale (safezoneH - safezoneW / 2) * 2.7;
		_ctrl ctrlCommit 0.2;

		// Fixing the MainList / hacks
		_ctrl = 2 call Metallica_infiSTAR_getControl;
		_ctrl ctrlSetPosition hacks_pos;
		_ctrl ctrlSetFont font;
		_ctrl ctrlSetScale (safezoneH - safezoneW / 2) * 2.7;
		_ctrl ctrlCommit 0.2;

		// Remap functions
		_ctrl ctrlSetEventHandler ["LBDblClick", "call Metallica_infiSTAR_hax_dbclick;"];
		_ctrl ctrlCommit 0.2;
	}
	else
	{
		// Fixing the menu
		_ctrl = -1 call Metallica_infiSTAR_getControl;
		_ctrl ctrlSetPosition menu_pos;
		_ctrl ctrlSetBackgroundColor [0, 0, 0, .5];
		_ctrl ctrlCommit .5;

		// Fixing the MainCaption
		_ctrl = 3 call Metallica_infiSTAR_getControl;
		_ctrl ctrlSetPosition title_pos;
		_ctrl ctrlSetText "DeceptionHax    Aleks    DeceptionHax    Corbin    DeceptionHax    RiPZ    DeceptionHax    Mac    DeceptionHax    Aleks    DeceptionHax    Corbin    DeceptionHax	Ripz	DeceptionHax	Mac	  DeceptionHax";
		_ctrl ctrlSetTextColor title_dialog;
		_ctrl ctrlSetBackgroundColor [0, 0, 0, 5];
		_ctrl ctrlSetFont font;
		_ctrl ctrlSetScale (safezoneH - safezoneW / 2) * 4;
		_ctrl ctrlCommit 0.01;

		// Fixing the MainTree / players
		_ctrl = 1 call Metallica_infiSTAR_getControl;
		_ctrl ctrlSetPosition players_pos;
		_ctrl ctrlSetFont font;
		_ctrl ctrlSetScale (safezoneH - safezoneW / 2) * 2.7;
		_ctrl ctrlCommit 0.01;

		// Fixing the MainList / hacks
		_ctrl = 2 call Metallica_infiSTAR_getControl;
		_ctrl ctrlSetPosition hacks_pos;
		_ctrl ctrlSetFont font;
		_ctrl ctrlSetScale (safezoneH - safezoneW / 2) * 2.7;
		_ctrl ctrlCommit 0.01;

		// Remap functions
		_ctrl ctrlSetEventHandler ["LBDblClick", "call Metallica_infiSTAR_hax_dbclick;"];
		_ctrl ctrlCommit 0.01;
	};
	
	call Metallica_infiSTAR_fillHax;
	call Metallica_infiSTAR_fillPlrs;
};

Metallica_infiSTAR_getControl = {(findDisplay Metallica_infiSTARMenu) displayCtrl _this;};