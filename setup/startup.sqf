closedialog 0;
cutText ['','PLAIN',0];
Titletext ['','PLAIN',0];
endLoadingScreen;
0 fadeSound 1;
setViewDistance 1600;


execVM "DeceptionHax\setup\bindings.sqf";


cutText [format["DeceptionHax v5.0 Loaded\nWelcome %1\nSpacebar to Open Menu", name player], "PLAIN"];
hintsilent format ["DeceptionHax v4.0 Loaded"];
["DeceptionHax by [Nymh", "Salt, salt and more salt"] spawn BIS_fnc_infotext;




if (isnil "scroll_m_init_star") then {scroll_m_init_star = 0;};
if (scroll_m_init_star == 0) then
{
	[]spawn
	{
	private["_veh", "_idx", "_idx2"];
	_idx = -1;
	_idx2 = -1;

		while {true} do
		{
			if (_idx == -1) then
			{
				_idx = (vehicle player) addAction ['<t color=''#f7ff12''>DeceptionHax Scroll Menu</t>', '\DeceptionHax\setup\scrollmenu.sqf'];
				_veh = vehicle player;
			};
			
			if (_idx2 == -1) then
			{
				_idx2 = (vehicle player) addAction ['<t color=''#c72842''>Teleport</t>', '\DeceptionHax\player\Teleport.sqf'];
				_veh = vehicle player;
			};

			if (_veh != vehicle player) then
			{
				_veh removeAction _idx;
				_veh removeAction _idx2;

				_idx = -1; 
				_idx2 = -1;     
			};
			Sleep 1;
		};
	};
scroll_m_init_star = 1;
};
waituntil {!alive player ; sleep 1;};
scroll_m_init_star = 0;