//ArmA2 Battledome based on COD4 Shipment
//Created by ALexc
//skype: mralexc921
//updated by DeceptionHax

hint format ["Init Battledome (COD4 Shipment)"];
cutText [format["Init Battledome (COD4 Shipment)"], "PLAIN DOWN"];

deleteMarker "COD4BattleDomeBASExx";
_this = createMarker ["COD4BattleDomeBASExx", [9851.1689, 13183.456, 9.1552734e-005]];
_this setMarkerText "COD4 - Battledome BASE";
_this setMarkerType "Faction_Germany_EP1";
_this setMarkerBrush "Solid";
_this setMarkerSize [1,1];
_marker_2 = _this;

player setPosATL [9851.1689, 13183.456, 9.1552734e-005];

if (HUEYPLACE_infiSTAR != objNull) then {{deleteVehicle _x}forEach ([9851.1689, 13183.456, 9.1552734e-005] nearObjects ["All",60]);};


sleep 1;

HUEYPLACE_infiSTAR = objNull;
if (true) then
{
  HUEYPLACE_infiSTAR = createVehicle ["HeliHCivil", [9846.6699, 13162.952, 0.00019836426], [], 0, "CAN_COLLIDE"];
  HUEYPLACE_infiSTAR = HUEYPLACE_infiSTAR;
  HUEYPLACE_infiSTAR setPos [9846.6699, 13162.952, 0.00019836426];
};

_vehicle_96 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [9825.8105, 13196.308, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_96 = _this;
  _this setDir 91.429909;
  _this setPos [9825.8105, 13196.308, 7.6293945e-005];
};

_vehicle_97 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [9868.8984, 13195.598, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_97 = _this;
  _this setDir 88.16449;
  _this setPos [9868.8984, 13195.598, -3.0517578e-005];
};

_vehicle_98 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [9832.4053, 13188.981, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_98 = _this;
  _this setPos [9832.4053, 13188.981, 3.0517578e-005];
};

_vehicle_99 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [9868.541, 13210.339, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_99 = _this;
  _this setDir 89.03479;
  _this setPos [9868.541, 13210.339, -1.5258789e-005];
};

_vehicle_100 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [9839.0352, 13181.757, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_100 = _this;
  _this setDir 90.664688;
  _this setPos [9839.0352, 13181.757, 0.00012207031];
};

_vehicle_102 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [9862.0479, 13187.693, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_102 = _this;
  _this setDir -0.86900753;
  _this setPos [9862.0479, 13187.693, -6.1035156e-005];
};

_vehicle_103 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [9826.2109, 13210.931, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_103 = _this;
  _this setDir 92.169426;
  _this setPos [9826.2109, 13210.931, 3.0517578e-005];
};

_vehicle_104 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [9845.7432, 13231.047, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_104 = _this;
  _this setDir -0.074563734;
  _this setPos [9845.7432, 13231.047, 3.0517578e-005];
};

_vehicle_105 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [9860.7129, 13231.013, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_105 = _this;
  _this setPos [9860.7129, 13231.013, -0.00015258789];
};

_vehicle_106 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [9868.4717, 13224.465, 0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_106 = _this;
  _this setDir 90.045609;
  _this setPos [9868.4717, 13224.465, 0.00010681152];
};

_vehicle_107 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier5x", [9851.4814, 13188.945, 0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_107 = _this;
  _this setPos [9851.4814, 13188.945, 0.00015258789];
};

_vehicle_114 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [9853.0205, 13209.206, 0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_114 = _this;
  _this setPos [9853.0205, 13209.206, 0.00021362305];
};

_vehicle_115 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [9844.416, 13209.406, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_115 = _this;
  _this setPos [9844.416, 13209.406, 4.5776367e-005];
};

_vehicle_116 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [9842.0693, 13209.363, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_116 = _this;
  _this setPos [9842.0693, 13209.363, 9.1552734e-005];
};

_vehicle_117 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [9842.375, 13218.911, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_117 = _this;
  _this setPos [9842.375, 13218.911, 4.5776367e-005];
};

_vehicle_118 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [9844.7354, 13218.949, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_118 = _this;
  _this setPos [9844.7354, 13218.949, 4.5776367e-005];
};

_vehicle_119 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [9850.5234, 13218.703, 0.0002746582], [], 0, "CAN_COLLIDE"];
  _vehicle_119 = _this;
  _this setPos [9850.5234, 13218.703, 0.0002746582];
};

_vehicle_120 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [9853.0381, 13218.694, 0.00016784668], [], 0, "CAN_COLLIDE"];
  _vehicle_120 = _this;
  _this setPos [9853.0381, 13218.694, 0.00016784668];
};

_vehicle_121 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [9860.3965, 13214.067, 0.00025939941], [], 0, "CAN_COLLIDE"];
  _vehicle_121 = _this;
  _this setPos [9860.3965, 13214.067, 0.00025939941];
};

_vehicle_123 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1Bo_military", [9863.4336, 13213.44, 0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_123 = _this;
  _this setDir 11.438561;
  _this setPos [9863.4336, 13213.44, 0.00015258789];
};

_vehicle_124 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo1Eo_EP1", [9850.5869, 13208.747, 0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_124 = _this;
  _this setPos [9850.5869, 13208.747, 0.00021362305];
};

_vehicle_125 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo1Eo_EP1", [9847.9482, 13227.886, 0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_125 = _this;
  _this setDir -89.338676;
  _this setPos [9847.9482, 13227.886, 0.00010681152];
};

_vehicle_126 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [9847.6816, 13230.018, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_126 = _this;
  _this setDir -89.449211;
  _this setPos [9847.6816, 13230.018, 9.1552734e-005];
};

_vehicle_128 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [9833.8711, 13231.056, 0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_128 = _this;
  _this setPos [9833.8711, 13231.056, 0.00018310547];
};

_vehicle_129 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [9826.2666, 13224.274, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_129 = _this;
  _this setDir 89.215744;
  _this setPos [9826.2666, 13224.274, 4.5776367e-005];
};

_vehicle_131 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo1E_EP1", [9831.9648, 13214.711, 0.00019836426], [], 0, "CAN_COLLIDE"];
  _vehicle_131 = _this;
  _this setDir -10.714975;
  _this setPos [9831.9648, 13214.711, 0.00019836426];
};

_vehicle_133 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1Bo_military", [9829.5498, 13214.356, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_133 = _this;
  _this setDir -7.3743353;
  _this setPos [9829.5498, 13214.356, 9.1552734e-005];
};

_vehicle_135 = objNull;
if (true) then
{
  _this = createVehicle ["AH1Z", [9846.6211, 13161.973, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_135 = _this;
  _this setDir -357.41388;
  _this setPos [9846.6211, 13161.973, -1.5258789e-005];
};

_vehicle_137 = objNull;
if (true) then
{
  _this = createVehicle ["M6_EP1", [9861.3721, 13196.647, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_137 = _this;
  _this setDir 260;
  _this setPos [9861.3721, 13196.647, 3.0517578e-005];
};

_vehicle_138 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel4", [9835.8721, 13201.039, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_138 = _this;
  _this setPos [9835.8721, 13201.039, 7.6293945e-005];
};

_vehicle_139 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel5", [9835.0918, 13202.312], [], 0, "CAN_COLLIDE"];
  _vehicle_139 = _this;
  _this setPos [9835.0918, 13202.312];
};

_vehicle_140 = objNull;
if (true) then
{
  _this = createVehicle ["T90", [9836.2354, 13200.354, 0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_140 = _this;
  _this setDir ((getDir _vehicle_140)+180);
  _this setPos [9843.2354, 13200.354, 0.00010681152];
};

_vehicle_141 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel_burning", [9836.668, 13199.755, 0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_141 = _this;
  _this setPos [9836.668, 13199.755, 0.00018310547];
};

_vehicle_142 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel1", [9834.4531, 13202.973, 0.0002746582], [], 0, "CAN_COLLIDE"];
  _vehicle_142 = _this;
  _this setPos [9834.4531, 13202.973, 0.0002746582];
};

_vehicle_143 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel_burning", [9835.7305, 13201.774, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_143 = _this;
  _this setPos [9835.7305, 13201.774, 7.6293945e-005];
};

_vehicle_146 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fort_Watchtower_EP1", [9851.1689, 13183.456, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_146 = _this;
  _this setDir 359.35876;
  _this setPos [9851.1689, 13183.456, 9.1552734e-005];
};

_vehicle_147 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Toilet", [9834.0391, 13223.26, 0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_147 = _this;
  _this setPos [9834.0391, 13223.26, 0.00010681152];
};

_vehicle_148 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierGermany_EP1", [9841.3926, 13188.479, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_148 = _this;
  _this setPos [9841.3926, 13188.479, 0.00012207031];
};

_vehicle_149 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierGermany_EP1", [9841.4326, 13186.923], [], 0, "CAN_COLLIDE"];
  _vehicle_149 = _this;
  _this setPos [9841.4326, 13186.923];
};

_vehicle_150 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierGermany_EP1", [9841.5879, 13185.339, 0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_150 = _this;
  _this setPos [9841.5879, 13185.339, 0.00021362305];
};

_vehicle_151 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierGermany_EP1", [9841.3525, 13183.858, 0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_151 = _this;
  _this setPos [9841.3525, 13183.858, 0.00021362305];
};

_vehicle_152 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierGermany_EP1", [9841.3242, 13182.013, 0.00019836426], [], 0, "CAN_COLLIDE"];
  _vehicle_152 = _this;
  _this setPos [9841.3242, 13182.013, 0.00019836426];
};

_vehicle_153 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierGermany_EP1", [9841.4023, 13180.391, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_153 = _this;
  _this setPos [9841.4023, 13180.391, 4.5776367e-005];
};

_vehicle_154 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierGermany_EP1", [9841.2969, 13178.847, 0.00016784668], [], 0, "CAN_COLLIDE"];
  _vehicle_154 = _this;
  _this setPos [9841.2969, 13178.847, 0.00016784668];
};

_vehicle_155 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierGermany_EP1", [9841.3193, 13177.757, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_155 = _this;
  _this setPos [9841.3193, 13177.757, 3.0517578e-005];
};

_vehicle_156 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierGermany_EP1", [9841.1523, 13176.596, 0.00036621094], [], 0, "CAN_COLLIDE"];
  _vehicle_156 = _this;
  _this setPos [9841.1523, 13176.596, 0.00036621094];
};

_vehicle_157 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierGermany_EP1", [9841.3447, 13175.372, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_157 = _this;
  _this setPos [9841.3447, 13175.372, 6.1035156e-005];
};

/*
_remoteExec = format ["
	[] spawn 
	{
		removeAllWeapons player;
		removeAllItems player;
		
		cutText [format[""Init Battledome (COD4 Shipment)\nLook how nice this is!""], ""PLAIN DOWN""];
		player setPosATL [9851.1689, 13183.456, 9.1552734e-005];
		
		removeAllWeapons player;
		removeAllItems player;
	};
"];
[_remoteExec] execVM "DeceptionHax\exec.sqf";
sleep 5;
_remoteExec2 = format ["
	[] spawn 
	{
		removeAllWeapons player;
		removeAllItems player;
	};
"];
[_remoteExec2] execVM "DeceptionHax\exec.sqf";
*/