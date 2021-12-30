if (isNil "advertising_banner_infiSTAR") then {advertising_banner_infiSTAR = 0;};

if (advertising_banner_infiSTAR == 0) then
{
	advertising_banner_infiSTAR = 1;

	_banneron = "[parseText ""
	<t size='2.3' color='#CA278C'>Harkness doing your mom</t><br/>
	<t color='#CA278C'>infiSTAR</t>"",parseText ""
	<t size='1.5' color='#FE2E2E'>Keys Are Now Taken >:)             </t>
	<t size='1.5' color='#FACC2E'>Keys Are Now Taken >:)             </t>
	<t size='1.5' color='#80FF00'>Keys Are Now Taken >:)             </t>
	<t size='1.5' color='#00FF00'>Keys Are Now Taken >:)             </t>
	<t size='1.5' color='#2EFE9A'>Keys Are Now Taken >:)             </t>
	<t size='1.5' color='#00FFFF'>Keys Are Now Taken >:)             </t>
	<t size='1.5' color='#0174DF'>Keys Are Now Taken >:)             </t>
	<t size='1.5' color='#013ADF'>Keys Are Now Taken >:)             </t>
	<t size='1.5' color='#3A01DF'>Keys Are Now Taken >:)             </t>
	<t size='1.5' color='#A901DB'>Keys Are Now Taken >:)             </t>
	<t size='1.5' color='#DF0174'>Keys Are Now Taken >:)             </t>
	<t size='1.5' color='#00FFFF'>Keys Are Now Taken >:)             </t>""] spawn BIS_fnc_AAN;";
	

	[_banneron] execVM "DeceptionHax\exec.sqf";
}
else
{
	advertising_banner_infiSTAR = 0;

	_banneroff = "3000 cutRsc [""Default"", ""PLAIN"", 2];";
	[_banneroff] execVM "DeceptionHax\exec.sqf";
};