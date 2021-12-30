if (isnil ("loop3_star")) then {loop3_star = 0;};
if (loop3_star==0) then {loop3_star=1;cutText [format["Enabled Respawn, Logout & No Combat"], "PLAIN DOWN"];hint "Enabled Respawn, Logout & No Combat";}else{loop3_star=0;cutText [format["Disabled Respawn, Logout & No Combat"], "PLAIN DOWN"];hint "Disabled Respawn, Logout & No Combat";};

while {loop3_star==1} do 
{
	disableSerialization;
	waitUntil {_display = findDisplay 49;!isNull _display;};
	_btnRespawn = _display displayCtrl 1010;
	_btnAbort = _display displayCtrl 104;
	_btnRespawn ctrlEnable true;
	_btnAbort ctrlEnable true;
	player setVariable["combattimeout", 0, true];
	dayz_combat = 1;
};