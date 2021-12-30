EpochBulkEqupment = [];

EpochBulkEqupment = 
[
	["", true],
	["What would you like?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["E_tool", [2],  "", -5, [["expression", format[exstr,"EpochBulkETool.sqf"]]], "1", "1"],
	["GPS", [3],  "", -5, [["expression", format[exstr,"EpochBulkGPS.sqf"]]], "1", "1"],
	["Map", [4],  "", -5, [["expression", format[exstr,"EpochBulkMap.sqf"]]], "1", "1"],
	["NVGoggles", [5],  "", -5, [["expression", format[exstr,"EpochBulkNV.sqf"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:EpochBulkEqupment";