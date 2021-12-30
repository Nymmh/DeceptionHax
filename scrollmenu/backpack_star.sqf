Backpack_spawn_menu_star = [
	["",true],
	["Backpacks", [-1], "", -5, [["", ""]], "1", "0"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Czech Vest Pouch", [2], "", -5, [["expression", "removeBackpack player;_backpackType = 'CZ_VestPouch_EP1';player addBackpack _backpackType;"]], "1", "1"],
	["Coyote Patrol Pack", [3], "", -5, [["expression", "removeBackpack player;_backpackType = 'DZ_Patrol_Pack_EP1';player addBackpack _backpackType;"]], "1", "1"],
	["Assault Pack", [4], "", -5, [["expression", "removeBackpack player;_backpackType = 'DZ_Assault_Pack_EP1';player addBackpack _backpackType;"]], "1", "1"],
	["Czech Backpack", [5], "", -5, [["expression", "removeBackpack player;_backpackType = 'DZ_CivilBackpack_EP1';player addBackpack _backpackType;"]], "1", "1"],
	["ALICE pack", [6], "", -5, [["expression", "removeBackpack player;_backpackType = 'DZ_ALICE_Pack_EP1';player addBackpack _backpackType;"]], "1", "1"],
	["Coyote Backpack", [7], "", -5, [["expression", "removeBackpack player;_backpackType = 'DZ_Backpack_EP1';player addBackpack _backpackType;"]], "1", "1"]
];
showCommandingMenu "#USER:Backpack_spawn_menu_star";