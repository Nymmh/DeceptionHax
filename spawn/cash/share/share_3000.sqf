_name = _this select 0;
hint format ["Money Given to %1", _name];
_share = format ["if (name player == '%1') then
{
['_moneh',3000] call INV_addinventoryitem;
_money = (player getVariable 'cmoney');
_addtomoney = 3000;
player setVariable['cmoney',_money+_addtomoney,false];
};",_name];

[_share] execVM "DeceptionHax\exec.sqf";