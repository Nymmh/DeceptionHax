//blahblah

if (!isnil "keypress") then 
{
	(findDisplay 46) displayRemoveEventHandler ["KeyDown", keypress];
};

keybindings =
{
	switch (_this) do 
	{
		case 57:		//SPACEBAR
		{
			call Metallica_infiSTAR_fillHax;
			call Metallica_infiSTAR_fillPlrs;
			execVM "\DeceptionHax\menu\initmenu.sqf";
		};
		case 2:		//Zahl 1
		{
			{_x doTarget CursorTarget;vehicle _x doTarget CursorTarget;} forEach units group player;
			{_x doFire CursorTarget;vehicle _x doTarget CursorTarget;} forEach units group player;
		};
		case 3:		//Zahl 2
		{
			execVM "\DeceptionHax\_for_keybinds\teleport_up.sqf";
		};
		case 4:		//Zahl 3
		{
			execVM "\DeceptionHax\_for_keybinds\explode_cursorTarget.sqf";
		};
		case 5:		//Zahl 4
		{
			execVM "\DeceptionHax\player\fly_high.sqf";
		};
		case 6:		//Zahl 5
		{
			execVM "\DeceptionHax\_for_keybinds\teleport_direction.sqf";
		};
		case 7:		//Zahl 6
		{
			execVM "\DeceptionHax\_for_keybinds\teleport_direction5M.sqf";
		};
		case 8:		//Zahl 7
		{
			execVM "\DeceptionHax\_for_keybinds\eject_cursor.sqf";
		};
		case 9:		//Zahl 8
		{
			execVM "\DeceptionHax\setup\scrollmenu.sqf";
		};
		case 10:		//Zahl 9
		{
			if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then 
			{
				if (isNil "spawning_air_for_ai") then {spawning_air_for_ai = false;};
				waitUntil {!spawning_air_for_ai};
				if (!spawning_air_for_ai) then 
				{
					execVM "\DeceptionHax\spawn\spawn_pilot_dz.sqf";
					spawning_air_for_ai = true;
				};
			}
			else
			{
				if (isNil "spawning_air_for_ai") then {spawning_air_for_ai = false;};
				waitUntil {!spawning_air_for_ai};
				if (!spawning_air_for_ai) then 
				{
					execVM "\DeceptionHax\spawn\spawn_pilot.sqf";
					spawning_air_for_ai = true;
				};
			};
		};
		case 11:		//Zahl 0
		{
			execVM "\DeceptionHax\setup\clear.sqf";
		};
		case 60:		//F2
		{
			execVM "\DeceptionHax\_for_keybinds\attach_near.sqf";
		};
		case 59:		//F1
		{
			execVM "\DeceptionHax\_for_keybinds\gluemenu.sqf";
		};
		case 61:		//F3
		{
			execVM "\DeceptionHax\_for_keybinds\attach_cursorTarget.sqf";
		};
		case 62:		//F4
		{
			execVM "\DeceptionHax\_for_keybinds\detach_cursorTarget.sqf";
		};
		case 63:		//F5
		{
			execVM "\DeceptionHax\_for_keybinds\detach_near.sqf";
		};
		case 64:		//F6
		{
			execVM "\DeceptionHax\_for_keybinds\restore_me.sqf";
		};
		case 65:		//F7
		{
			execVM "\DeceptionHax\_for_keybinds\heal_near.sqf";
		};
		case 66:		//F8
		{
			execVM "\DeceptionHax\_for_keybinds\restore_near.sqf";
		};
		case 88:		//F12
		{
			execVM "\DeceptionHax\_for_keybinds\ToggleGodMod.sqf";
		};
		case 83:		//Numpad ,
		{
			execVM "\wuat\start2.sqf";
		};
	};
};

waituntil {!isnull (finddisplay 46)};
keypress = (findDisplay 46) displayAddEventHandler ["KeyDown", "_this select 1 call keybindings; false;"];


/*
{_x fireAtTarget [CursorTarget];} forEach units group player;
{_x commandTarget CursorTarget;} forEach units group player;
*/