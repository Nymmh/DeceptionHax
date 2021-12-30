if (isNil "Metallica_infiSTAR_hax_toggled") then {Metallica_infiSTAR_hax_toggled = [];};
Metallica_infiSTAR_funcs_inited = nil;
if (isNil "Metallica_infiSTAR_funcs_inited") then {call compile preprocessFileLineNumbers "DeceptionHax\menu\infiSTARMenuFuncs.sqf";};
waitUntil {!isNil "Metallica_infiSTAR_funcs_inited"};
if (!isNull findDisplay 3030) exitWith {};
if !(createDialog "RscConfigEditor_Main") exitWith {hintSilent "createDialog failed";};
call Metallica_infiSTAR_initMenu;
waitUntil {!dialog || !alive player};