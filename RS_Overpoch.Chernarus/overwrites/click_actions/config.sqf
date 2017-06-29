//  DZE_CLICK_ACTIONS
//      This is where you register your right-click actions
//  FORMAT -- (no comma after last array entry)
//      [_classname,_text,_execute,_condition],
//  PARAMETERS
//  _classname  : the name of the class to click on 
//                  (example = "ItemBloodbag")
//  _text       : the text for the option that is displayed when right clicking on the item 
//                  (example = "Self Transfuse")
//  _execute    : compiled code to execute when the option is selected 
//                  (example = "execVM 'my\scripts\self_transfuse.sqf';")
//  _condition  : compiled code evaluated to determine whether or not the option is displayed
//                  (example = {true})
//  EXAMPLE -- see below for some simple examples
DZE_CLICK_ACTIONS = [
    ["ItemGPS","Scan Nearby","if(isNil 'DZE_CLICK_ACTIONS_GPS_RANGE') then {DZE_CLICK_ACTIONS_GPS_RANGE = 1500;};DZE_CLICK_ACTIONS_ZOMBIE_COUNT = count ((position player) nearEntities ['zZombie_Base',DZE_CLICK_ACTIONS_GPS_RANGE]); DZE_CLICK_ACTIONS_MAN_COUNT = count ((position player) nearEntities ['CAManBase',DZE_CLICK_ACTIONS_GPS_RANGE]);cutText[format['Within %1 Meters: %2 AI/players, %3 zombies, %4 vehicles',DZE_CLICK_ACTIONS_GPS_RANGE,DZE_CLICK_ACTIONS_MAN_COUNT - DZE_CLICK_ACTIONS_ZOMBIE_COUNT,count ((position player) nearEntities ['zZombie_Base',DZE_CLICK_ACTIONS_GPS_RANGE]),count ((position player) nearEntities ['allVehicles',DZE_CLICK_ACTIONS_GPS_RANGE]) - DZE_CLICK_ACTIONS_MAN_COUNT],'PLAIN DOWN'];","true"],
    ["ItemGPS","Range Up"   ,"if(isNil 'DZE_CLICK_ACTIONS_GPS_RANGE') then {DZE_CLICK_ACTIONS_GPS_RANGE = 1500;};DZE_CLICK_ACTIONS_GPS_RANGE = (DZE_CLICK_ACTIONS_GPS_RANGE + 100) min 2500; cutText[format['GPS RANGE: %1',DZE_CLICK_ACTIONS_GPS_RANGE],'PLAIN DOWN'];","true"],
    ["ItemGPS","Range Down" ,"if(isNil 'DZE_CLICK_ACTIONS_GPS_RANGE') then {DZE_CLICK_ACTIONS_GPS_RANGE = 1500;};DZE_CLICK_ACTIONS_GPS_RANGE = (DZE_CLICK_ACTIONS_GPS_RANGE - 100) max 1000;  cutText[format['GPS RANGE: %1',DZE_CLICK_ACTIONS_GPS_RANGE],'PLAIN DOWN'];","true"],
    ["ItemRadio","Rules & Info","closeDialog 0; createDialog 'info_dialog';","true"],
    ["ItemMap","Toggle Map Marker","execVM 'overwrites\click_actions\examples\marker.sqf';","true"],
	["ItemMap","Locate Vehicles","execVM 'scripts\locate_Vehicle.sqf';","true"],
    ["Binocular_Vector","View Distance 500m","setViewDistance 500;","true"],
    ["Binocular_Vector","View Distance 1000m","setViewDistance 1000;","true"],
    ["Binocular_Vector","View Distance 1500m","setViewDistance 1500;","true"],
    ["Binocular_Vector","View Distance 2000m","setViewDistance 2000;","true"],
    ["Binocular_Vector","View Distance 2500m","setViewDistance 2500;","true"],
    ["Binocular_Vector","View Distance 3000m","setViewDistance 3000;","true"],
    ["Binocular_Vector","View Distance 4000m","setViewDistance 4000;","true"],
    ["Binocular_Vector","View Distance 5000m","setViewDistance 5000;","true"],
	["Binocular_Vector","View Distance 6000m","setViewDistance 6000;","true"],
	["Binocular_Vector","View Distance 8000m","setViewDistance 8000;","true"],
	["Binocular_Vector","View Distance 10000m","setViewDistance 10000;","true"]
];