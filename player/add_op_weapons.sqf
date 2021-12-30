_SexyGun = ['Gau8','GAU12','AZP85','M197','YakB'];
_SexyAmmo = ['1350Rnd_30mmAP_A10','1350Rnd_30mmAP_A10','300Rnd_25mm_GAU12','300Rnd_25mm_GAU12','2000Rnd_23mm_AZP85','2000Rnd_23mm_AZP85','750Rnd_M197_AH1','750Rnd_M197_AH1','1470Rnd_127x108_YakB','1470Rnd_127x108_YakB'];

{vehicle player addweapon _x;} forEach _SexyGun;
{vehicle player addMagazine _x;} forEach _SexyAmmo;

hint "Weapons added. Red weapons are still reloading.";
cutText [format["Weapons added. Red weapons are still reloading."], "PLAIN DOWN"];

/*
_LVehgun = ['AZP85','GAU8','GAU12','M197','M230','ZiS_S_53','2A46M','AGS30','D30','D81','M252','M256'];
_LVehammo = ['2000Rnd_23mm_AZP85','1350Rnd_30mmAP_A10','300Rnd_25mm_GAU12','750Rnd_M197_AH1','1200Rnd_30x113mm_M789_HEDP',
'33Rnd_85mmHE','22Rnd_125mmHE_T72','29Rnd_30mm_AGS30','30Rnd_122mmHE_D30','22Rnd_125mmHE_T72','ARTY_8rnd_81mmHE_M252', 
'20Rnd_120mmHE_M1A2'];

{vehicle player addweapon _x;} forEach _LVehgun;
{vehicle player addMagazine _x;} forEach _LVehammo;

hint "Added op vehicle weapons";
cutText [format["Added op vehicle weapons"], "PLAIN DOWN"];
*/

/*
_GroundGun = ['GAU12','2A46M','StingerLaucher','TOWLauncherSingle'];
_GroundAmmo = ['300Rnd_25mm_GAU12','23Rnd_125mmSABOT_T72','5Rnd_AT11_T90','8Rnd_Stinger','6Rnd_TOW_HMMWV'];

_AirGun = ['GAU12','FFARLauncher','R73Launcher','MaverickLauncher','Ch29Launcher','BombLauncherF35'];
_AirAmmo = ['300Rnd_25mm_GAU12','38Rnd_FFAR','4Rnd_R73','2Rnd_Maverick_A10','4Rnd_Ch29','2Rnd_GBU12'];

_WaterGun = ['GAU12','2A46M','StingerLaucher','TOWLauncherSingle'];
_WaterAmmo = ['300Rnd_25mm_GAU12','23Rnd_125mmSABOT_T72','5Rnd_AT11_T90','8Rnd_Stinger','6Rnd_TOW_HMMWV'];

if (vehicle player isKindOf "LandVehicle") then
{
	{vehicle player addweapon _x;} forEach _GroundGun+_SexyGun;
	{vehicle player addMagazine _x;} forEach _GroundAmmo+_SexyAmmo;
};

if (vehicle player isKindOf "Air") then
{
	{vehicle player addweapon _x;} forEach _AirGun+_SexyGun;
	{vehicle player addMagazine _x;} forEach _AirAmmo+_SexyAmmo;
};

if (vehicle player isKindOf "Ship") then
{
   {vehicle player addweapon _x;} forEach _WaterGun+_SexyGun;
   {vehicle player addMagazine _x;} forEach _WaterAmmo+_SexyAmmo;
};
*/