{
	_fck = getpos _x;
	_fck = [(_fck select 0),(_fck select 1),(_fck select 2)+1.5];
	_object = "HelicopterExplobig", "HelicopterExplobig", "HelicopterExploSmall" createVehicleLocal _fck;
sleep 0.1;
} forEach ([6800, 9200, 0] nearEntities [["Car"],25000]);

cutText ["Exploded All Cars", "PLAIN", 2];