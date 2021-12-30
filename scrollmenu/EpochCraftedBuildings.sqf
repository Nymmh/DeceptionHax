EpochCraftedBuildings = [];
EpochCraftedBuildingsPage2 = [];

EpochCraftedBuildings = 
[
	["", true],
	[">>> Next >>>", [11], "#USER:EpochCraftedBuildingsPage2", -5, [["expression", ""]], "1", "1"],
	["What would you like?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Wood_Ramp", [2],  "", -5, [["expression", format[exstr,"EpochCraftedWoodRamp.sqf"]]], "1", "1"],
	["Deer_Stand", [3],  "", -5, [["expression", format[exstr,"EpochCraftedDeerStand.sqf"]]], "1", "1"],
	["Desert_Large_Net", [4],  "", -5, [["expression", format[exstr,"EpochCraftedDesertLargeNet.sqf"]]], "1", "1"],
	["Forest_Large_Net", [5],  "", -5, [["expression", format[exstr,"EpochCraftingForestLargeNet.sqf"]]], "1", "1"],
	["Desert_Net", [6],  "", -5, [["expression", format[exstr,"EpochCraftedDesertNet.sqf"]]], "1", "1"],
	["Forest_Net", [7],  "", -5, [["expression", format[exstr,"EpochCraftedForestNet.sqf"]]], "1", "1"],
	["Stick_Fence", [8],  "", -5, [["expression", format[exstr,"EpochCraftedStickFence.sqf"]]], "1", "1"],
	["Wooden_Shed", [9],  "", -5, [["expression", format[exstr,"EpochCraftedWoodenShed.sqf"]]], "1", "1"],
	["Wood_Shack", [10],  "", -5, [["expression", format[exstr,"EpochCraftedWoodShack.sqf"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:EpochCraftedBuildings";

EpochCraftedBuildingsPage2 = 
[
	["", true],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["What would you like?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["M240_Nest", [2],  "", -5, [["expression", format[exstr,"EpochCraftedM240Nest.sqf"]]], "1", "1"],
	["Sun_Shade", [3],  "", -5, [["expression", format[exstr,"EpochCraftedSunShade.sqf"]]], "1", "1"],
	["Park_Bench", [4],  "", -5, [["expression", format[exstr,"EpochCraftingParkBench.sqf"]]], "1", "1"],
	["Rusty_Gate", [5],  "", -5, [["expression", format[exstr,"EpochCraftedRustyGate.sqf"]]], "1", "1"],
	["SandBag_Nest", [6],  "", -5, [["expression", format[exstr,"EpochCraftedSandBagNest.sqf"]]], "1", "1"],
	["OutHouse", [7],  "", -5, [["expression", format[exstr,"EpochCraftedOutHouse.sqf"]]], "1", "1"],
	["Bag_FenceRound", [8],  "", -5, [["expression", format[exstr,"EpochCraftedBagFenceRound.sqf"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];