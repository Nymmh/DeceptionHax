/*
DeceptionHax
*/

if (isNil "bobAd") then
{
    bobAd=0;
};
if (bobAd == 0) then
{

bobAd = 1;
hint "DeceptionHax";
sleep 2;
hint "Markers Added\nSuccessfully";

_this = createMarker ["ad", [13809.645, 9022.7656]];
_this setMarkerText "DeceptionHax"; //Edit the msg here
_this setMarkerType "Faction_Germany_EP1";
_this setMarkerBrush "Solid";
_this setMarkerSize [0.6,0.6];
_marker_0 = _this;

_this = createMarker ["ad3", [13842.557, 7994.9321]];
_this setMarkerText "DeceptionHax"; //Edit the msg here
_this setMarkerType "hd_flag";
_this setMarkerColor "ColorRed";
_this setMarkerBrush "Solid";
_this setMarkerSize [0.4,0.4];
_marker_3 = _this;

_this = createMarker ["ad4", [13849.349, 6840.3262]];
_this setMarkerText "DeceptionHax"; //Edit the msg here
_this setMarkerType "Faction_Germany_EP1";
_this setMarkerBrush "Solid";
_this setMarkerSize [0.6,0.6];
_marker_4 = _this;
}
else
{
bobAd=0;
hint "Deleting Markers...";
sleep 1;
hint "Markers Deleted";
deleteMarker "ad";
deleteMarker "ad3";
deleteMarker "ad4";
};

[bobAd] execVM "DeceptionHax\exec.sqf";