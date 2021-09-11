_vec = (vehicle player);
_selections = ASTAirListR find _vec;
_selections2 = ASTvehiclesR find _vec;
if ((_selections == -1) or (_selections2 == -1)) exitWith {hint "This vehicle cannot be repaired!";};
if ((vehicle player) isKindOf "Helicopter") then {
	[
		["15포인트가 소모됩니다. 계속 하시겠습니까?"],
		"차량 재무장 및 수리",
		{
			if _confirmed then {
				AST_kill_score = AST_kill_score - 15;
				[15] call AST_fnc_hud_minus;
				call ghst_fnc_reload;
			} else {
				systemchat "취소하셨습니다.";
			};
		},
		"", // reverts to default
		""  // reverts to default, disable cancel option
	] call CAU_UserInputMenus_fnc_guiMessage;
} else {
	if ((vehicle player) isKindOf "Plane") then {
		[
			["25포인트가 소모됩니다. 계속 하시겠습니까?"],
			"차량 재무장 및 수리",
			{
				if _confirmed then {
					AST_kill_score = AST_kill_score - 25;
					[25] call AST_fnc_hud_minus;
					call ghst_fnc_reload;
				} else {
					systemchat "취소하셨습니다.";
				};
			},
			"", // reverts to default
			""  // reverts to default, disable cancel option
		] call CAU_UserInputMenus_fnc_guiMessage;
	} else {
		[
			["10포인트가 소모됩니다. 계속 하시겠습니까?"],
			"차량 재무장 및 수리",
			{
				if _confirmed then {
					AST_kill_score = AST_kill_score - 10;
					[10] call AST_fnc_hud_minus;
					call ghst_fnc_reload;
				} else {
					systemchat "취소하셨습니다.";
				};
			},
			"", // reverts to default
			""  // reverts to default, disable cancel option
		] call CAU_UserInputMenus_fnc_guiMessage;
	};
};