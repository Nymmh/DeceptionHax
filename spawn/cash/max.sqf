["_moneh",5000000] call INV_addinventoryitem;
_money = (player getVariable "cmoney");
_addtomoney = 5000000;
player setVariable["cmoney",_money+_addtomoney,false];
hint format ["%1$ Added", _addtomoney];