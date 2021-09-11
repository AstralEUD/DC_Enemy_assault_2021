params ["_airclass","_player"];
cutText ["고정익을 생성하고 탑승하는 중입니다..","BLACK FADED",4];
_markerpos = getMarkerPos (selectRandom ["bairspawn","bairspawn2"]);
_randomheight = selectRandom [600,700,800,900,1000];
_spawnpos = [(_markerpos select 0),(_markerpos select 1), (_randomheight)];
_air = createVehicle [_airclass, _spawnpos.[],0,"FLY"];
_air allowDamage false;
player moveInAny _air;
ASTAirArray pushBack _air;
publicVariable "ASTAirArray";
_playeruid = getPlayerUID player;
_vehicle setVariable ["spawner",_playeruid,true];
_VarName = "ghst_air" + str((count ghst_vehicles) + 1);
missionNamespace setVariable [_VarName,_vehicle];
ghst_vehicles pushBack _VarName;
_air allowDamage true;