
attachmenunear = 
[
["",true],
["Left to Right Menu. Select option:", [-1], "", -5, [["expression", ""]], "1", "0"],
["Same Alignment", [2], "", -5, [["expression", "select_xNear=0;DelaySelectedNear=true;"]], "1", "1"],
["Left 1 meters", [3], "", -5, [["expression", "select_xNear=-1;DelaySelectedNear=true;"]], "1", "1"],
["Left 2 meters", [4], "", -5, [["expression", "select_xNear=-2;DelaySelectedNear=true;"]], "1", "1"],
["Left 5 meters", [5], "", -5, [["expression", "select_xNear=-5;DelaySelectedNear=true;"]], "1", "1"],
["Left 10 meters", [6], "", -5, [["expression", "select_xNear=-10;DelaySelectedNear=true;"]], "1", "1"],	
["Right 1 meters", [7], "", -5, [["expression", "select_xNear=1;DelaySelectedNear=true;"]], "1", "1"],
["Right 2 meters", [8], "", -5, [["expression", "select_xNear=2;DelaySelectedNear=true;"]], "1", "1"],
["Right 5 meters", [9], "", -5, [["expression", "select_xNear=5;DelaySelectedNear=true;"]], "1", "1"],	
["Right 10 meters", [10], "", -5, [["expression", "select_xNear=10;DelaySelectedNear=true;"]], "1", "1"],	
["", [-1], "", -5, [["expression", ""]], "1", "0"],
["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

attachmenunear2 = 
[
["",true],
["Front to Back Menu. Select option:", [-1], "", -5, [["expression", ""]], "1", "0"],
["Same Alignment", [2], "", -5, [["expression", "select_yNear=0;DelaySelectedNear2=true;"]], "1", "1"],
["Back 1 meters", [3], "", -5, [["expression", "select_yNear=-1;DelaySelectedNear2=true;"]], "1", "1"],
["Back 2 meters", [4], "", -5, [["expression", "select_yNear=-2;DelaySelectedNear2=true;"]], "1", "1"],
["Back 5 meters", [5], "", -5, [["expression", "select_yNear=-5;DelaySelectedNear2=true;"]], "1", "1"],
["Back 10 meters", [6], "", -5, [["expression", "select_yNear=-10;DelaySelectedNear2=true;"]], "1", "1"],	
["Front 1 meters", [7], "", -5, [["expression", "select_yNear=1;DelaySelectedNear2=true;"]], "1", "1"],
["Front 2 meters", [8], "", -5, [["expression", "select_yNear=2;DelaySelectedNear2=true;"]], "1", "1"],
["Front 5 meters", [9], "", -5, [["expression", "select_yNear=5;DelaySelectedNear2=true;"]], "1", "1"],	
["Front 10 meters", [10], "", -5, [["expression", "select_yNear=10;DelaySelectedNear2=true;"]], "1", "1"],	
["", [-1], "", -5, [["expression", ""]], "1", "0"],
["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

attachmenunear3 = 
[
["",true],
["Above or Below Menu. Select option:", [-1], "", -5, [["expression", ""]], "1", "0"],
["Same Alignment", [2], "", -5, [["expression", "select_zNear=0;DelaySelectedNear3=true;"]], "1", "1"],
["Below 1 meters", [3], "", -5, [["expression", "select_zNear=-1;DelaySelectedNear3=true;"]], "1", "1"],
["Below 2 meters", [4], "", -5, [["expression", "select_zNear=-2;DelaySelectedNear3=true;"]], "1", "1"],
["Below 5 meters", [5], "", -5, [["expression", "select_zNear=-5;DelaySelectedNear3=true;"]], "1", "1"],
["Below 10 meters", [5], "", -5, [["expression", "select_zNear=-10;DelaySelectedNear3=true;"]], "1", "1"],	
["Above 1 meters", [6], "", -5, [["expression", "select_zNear=1;DelaySelectedNear3=true;"]], "1", "1"],
["Above 2 meters", [7], "", -5, [["expression", "select_zNear=2;DelaySelectedNear3=true;"]], "1", "1"],
["Above 5 meters", [8], "", -5, [["expression", "select_zNear=5;DelaySelectedNear3=true;"]], "1", "1"],
["Above 10 meters", [8], "", -5, [["expression", "select_zNear=10;DelaySelectedNear3=true;"]], "1", "1"],
["Above 50 meters", [8], "", -5, [["expression", "select_zNear=50;DelaySelectedNear3=true;"]], "1", "1"],
["", [-1], "", -5, [["expression", ""]], "1", "0"],
["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

_firstPick = (nearestObject[vehicle player,"LandVehicle"]);

showCommandingMenu '#USER:attachmenunear';
WaitUntil{DelaySelectedNear};
DelaySelectedNear=false;	
showCommandingMenu '#USER:attachmenunear2';
WaitUntil{DelaySelectedNear2};
DelaySelectedNear2=false;
showCommandingMenu '#USER:attachmenunear3';
WaitUntil{DelaySelectedNear3};
DelaySelectedNear3=false;

_firstPick attachTo [vehicle player, [select_xNear,(select_yNear)+1,(select_zNear)-3]];



//_nearstuff = ((getPosATL player) nearEntities [["Car","Motorcycle","Tank","Ship"],100]);
//_firstPick = _nearstuff select 0;

/*
{
if ((_x isKindOf "Man") and !(_x isKindOf "zZombie_Base") and !(_x isKindOf "Animal")) then {_x attachTo [vehicle player, [select_xNear,(select_yNear)+5,(select_zNear)-0.5]];}
else {if (!(_x isKindOf "zZombie_Base") and !(_x isKindOf "Animal")) then {_x attachTo [vehicle player, [select_xNear,(select_yNear)+1,(select_zNear)-3]];};};
}
forEach ((getPosATL player) nearEntities [["Air","Car","Motorcycle","Tank","Ship","Man","LandVehicle"],100]);
*/

/*
	_x = nearestObjects [vehicle player, ["All"], 100];
	_x = _x select 1;
	
	if (_x != player) then 
	{
		if (vehicle player isKindOf "Air") then
		{	
			_x attachTo [vehicle player, [0, 0, (_x modelToWorld (boundingBox _x select 1) select 2)]];
		}
		else
		{
			_x attachTo [vehicle player, [0, (_x modelToWorld (boundingBox _x select 1) select 2)*2, (_x modelToWorld (boundingBox _x select 1) select 2)/2]];
		};
		cutText [format["Attached %1", _x], "PLAIN DOWN"];
	};
*/