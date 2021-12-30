hint "Big Surprise Loaded";
cutText [format["Big Surprise Loaded"], "PLAIN DOWN"];


waitUntil {not alive player};

_pos = getPos vehicle player;
_pos1 = [(_pos select 0),(_pos select 1),(_pos select 2)+80];


_object = "Sh_120_HE" createvehiclelocal _pos1;
_object = "Sh_120_HE" createvehiclelocal _pos1;
_object = "Sh_120_HE" createvehiclelocal _pos1;

sleep 3;

_object = "ARTY_Sh_81_HE" createvehiclelocal _pos1;
_object = "ARTY_Sh_81_HE" createvehiclelocal _pos1;
_object = "ARTY_Sh_81_HE" createvehiclelocal _pos1;