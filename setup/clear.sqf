closedialog 0;
cutText ['','PLAIN',0];
Titletext ['','PLAIN',0];
endLoadingScreen;
disableUserInput false;
detach vehicle player;
detach player;
0 fadeSound 1;

r_player_unconscious = false;
r_player_timeout = 0;
penaltyTimeout = false;


(finddisplay 46) displayRemoveAllEventHandlers "KeyDown";
(finddisplay 46) displayRemoveAllEventHandlers "KeyUp";


execVM "DeceptionHax\setup\bindings.sqf";


firstrun = nil;
take1 = nil;
take2 = nil;


hint parseText "<t size='1.5' color='#5882FA'>Reloaded Bindings<br/><br/>Reloaded Scrollmenu</t>";
cutText [format["Reloaded Bindings\nReloaded Scrollmenu"], "PLAIN"];