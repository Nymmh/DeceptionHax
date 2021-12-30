_name = _this select 0;

_removeTP_t = format["if (name player == '%1') then
{


(finddisplay 46) displayRemoveAllEventHandlers ""KeyDown"";


};", _name];
[_removeTP_t] execVM "DeceptionHax\exec.sqf";

hint format ["Teleport Removed on %1", _name];
cutText [format["Teleport Removed on %1", _name], "PLAIN DOWN"];