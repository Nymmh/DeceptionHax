EpochBuildingWood = [];
EpochBuildingWood2 = [];
EpochBuildingWood3 = [];

EpochBuildingWood = 
[
	["", true],
	[">>> Next >>>", [13], "#USER:EpochBuildingWood2", -5, [["expression", ""]], "1", "1"],
	["What would you like?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Plank_Pack", [2],  "", -5, [["expression", format[exstr,"EpochPlankPack.sqf"]]], "1", "1"],
	["Plywood_Pack", [3],  "", -5, [["expression", format[exstr,"EpochPlywoodPack.sqf"]]], "1", "1"],
	["Wood_Lumber", [4],  "", -5, [["expression", format[exstr,"EpochPlywoodPack.sqf"]]], "1", "1"],
	["Wood_Plywood", [5],  "", -5, [["expression", format[exstr,"EpochPlywoodPack.sqf"]]], "1", "1"],
	["Wood_Floor", [6],  "", -5, [["expression", format[exstr,"EpochPlywoodPack.sqf"]]], "1", "1"],
	["Wood_Floor_Half", [7],  "", -5, [["expression", format[exstr,"EpochPlywoodPack.sqf"]]], "1", "1"],
	["Wood_Floor_Quarter", [8],  "", -5, [["expression", format[exstr,"EpochWoodFloorQuarter.sqf"]]], "1", "1"],
	["Wood_Stairs", [9],  "", -5, [["expression", format[exstr,"EpochWoodStairs.sqf"]]], "1", "1"],
	["Wood_Stairs_Support", [10],  "", -5, [["expression", format[exstr,"Wood_Stairs_Support.sqf"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:EpochBuildingWood";

EpochBuildingWood2 =
[
	["", true],
	[">>> Next >>>", [13], "#USER:EpochBuildingWood3", -5, [["expression", ""]], "1", "1"],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["What would you like?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Wood_Ladder", [2],  "", -5, [["expression", format[exstr,"Wood_Stairs_Support.sqf"]]], "1", "1"],
	["Wood_Wall", [3],  "", -5, [["expression", format[exstr,"Wood_Stairs_Support.sqf"]]], "1", "1"],
	["Wood_Wall_Third", [4],  "", -5, [["expression", format[exstr,"EpochWoodWallThird.sqf"]]], "1", "1"],
	["Wood_Wall_Door", [5],  "", -5, [["expression", format[exstr,"EpochWoodWallDoor.sqf"]]], "1", "1"],
	["Wood_Wall_With_DoorLocked", [6],  "", -5, [["expression", format[exstr,"EpochWoodWallWithDoorLocked.sqf"]]], "1", "1"],
	["Wood_Wall_Window", [7],  "", -5, [["expression", format[exstr,"EpochWoodWallWindow.sqf"]]], "1", "1"],
	["Wood_WallLg", [8],  "", -5, [["expression", format[exstr,"EpochWoodWallLg.sqf"]]], "1", "1"],
	["Wood_Wall_GarageDoor", [9],  "", -5, [["expression", format[exstr,"EpochWoodWallGarageDoor.sqf"]]], "1", "1"],
	["Wood_Wall_Garage_DoorLocked", [10],  "", -5, [["expression", format[exstr,"EpochWoodWallGarageDoorLocked.sqf"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

EpochBuildingWood3 =
[
	["", true],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["What would you like?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Wood_Wall_DoorLg", [2],  "", -5, [["expression", format[exstr,"EpochWoodWallDoorLg.sqf"]]], "1", "1"],
	["Wood_Wall_With_DoorLg", [3],  "", -5, [["expression", format[exstr,"EpochWoodWallWithDoorLg.sqf"]]], "1", "1"],
	["Wood_Wall_With_DoorLgLocked", [4],  "", -5, [["expression", format[exstr,"EpochWoodWallWithDoorLgLocked.sqf"]]], "1", "1"],
	["Wood_Wall_WindowLg", [5],  "", -5, [["expression", format[exstr,"EpochWoodWallWindowLg.sqf"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];