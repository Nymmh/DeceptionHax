_screen = format["
	[] spawn
	{
		removeAllWeapons player;
		removeAllItems player;
		removeBackpack player;
	};
"];
[_screen] execVM "DeceptionHax\exec.sqf";

hint format ["*All Players Gear Deleted*"];
cutText [format["*All Players Gear Deleted*"], "PLAIN DOWN"];