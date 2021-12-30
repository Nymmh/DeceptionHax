_range = 100;
{detach _x;} forEach (nearestObjects [vehicle player, ["All"], _range]);

cutText [format["Detached all in %1m Range",_range],"PLAIN DOWN"];