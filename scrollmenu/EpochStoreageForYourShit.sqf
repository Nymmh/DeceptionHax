EpochStorageForYourShit = [];

EpochStorageForYourShit = 
[
	["", true],
	["What would you like?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Storage_Shed", [2],  "", -5, [["expression", format[exstr,"EpochStorageShed.sqf"]]], "1", "1"],
	["Safe", [3],  "", -5, [["expression", format[exstr,"EpochDatSafe.sqf"]]], "1", "1"],
	["Lockbox", [4],  "", -5, [["expression", format[exstr,"EpochLockbox.sqf"]]], "1", "1"],
	
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];

showCommandingMenu "#USER:EpochStorageForYourShit";