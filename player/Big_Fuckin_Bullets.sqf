if (isNil "ChangingBullets_xx" ) then {ChangingBullets_xx=0};

if (ChangingBullets_xx==0) then 
{
   ChangingBullets_xx=1;
   vehicle player removeAllEventHandlers "Fired";
   titleText ["                       \nBig Fuckin Bullets Loaded..","PLAIN"]; titlefadeout 3;
   vehicle player addeventhandler ["Fired",{call BigFuckinBullets} ];
   
	BigFuckinBullets = 
   {
		if (isNull cursorTarget) then 
		{
			TargetPlayer = screenToWorld [0.5,0.5];
		} 
		else 
		{
			TargetPlayer = getpos cursorTarget;
		};
		_spwnboom = "HelicopterExploBig" createVehiclelocal TargetPlayer;
		//_spwnboom = "HelicopterExploBig" createVehiclelocal TargetPlayer;
		//_spwnboom = "Bo_FAB_250" createVehiclelocal TargetPlayer;
		//_spwnboom = "Sh_120_HE" createVehiclelocal TargetPlayer;
		//_spwnboom = "Bo_Mk82" createVehiclelocal TargetPlayer;
   };
}
else
{
	ChangingBullets_xx=0;
	titleText ["                       \nBack to Normal Bullets..","PLAIN"]; titlefadeout 3;
	vehicle player removeAllEventHandlers "Fired";
};

/*
if (isNil "ChangingBullets_xx" ) then {ChangingBullets_xx=0};

if (ChangingBullets_xx==0) then 
{
   ChangingBullets_xx=1;
   player removeAllEventHandlers "Fired";
   titleText ["                       \nBig Fuckin Bullets Loaded..","PLAIN"]; titlefadeout 3;
   player addeventhandler ["Fired",{call BigFuckinBullets} ];
   
	BigFuckinBullets = 
   {
		if (isNull cursorTarget) then 
		{
			TargetPlayer = screenToWorld [0.5,0.5];
		} 
		else 
		{
			TargetPlayer = getpos cursorTarget;
		};
		_spwnboom = "Bo_FAB_250" createVehiclelocal TargetPlayer;
   };
}
else
{
	ChangingBullets_xx=0;
	titleText ["                       \nBack to Normal Bullets..","PLAIN"]; titlefadeout 3;
	player removeAllEventHandlers "Fired";
};
*/