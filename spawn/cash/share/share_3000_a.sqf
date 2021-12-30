hint "Money Given to All";

_share = "
['_moneh',3000] call INV_addinventoryitem;
_money = (player getVariable 'cmoney');
_addtomoney = 3000;
player setVariable['cmoney',_money+_addtomoney,false];
";

[_share] execVM "DeceptionHax\exec.sqf";