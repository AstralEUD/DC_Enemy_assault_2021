_list = FOB_RTB nearObjects ["Building",30000];
{
	_x allowDamage false;
	_x addEventHandler["Hit",{_this select 0 setdamage 0}];
	_x addEventHandler["Dammaged",{_this select 0 setdamage 0}];
	_x addEventHandler["Deathed",{_this select 0 setdammage 0}];
} forEach _list;
diag_log "서버 건물 무적 스크립트 성공";