["_moneh",100] call INV_addinventoryitem;
_money = (player getVariable "cmoney");
_addtomoney = 100;
player setVariable["cmoney",_money+_addtomoney,false];
hint format ["%1$ Added", _addtomoney];