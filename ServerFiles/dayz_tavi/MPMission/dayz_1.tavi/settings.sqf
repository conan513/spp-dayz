// ### Base Building DayZ 1.2 Client init settings ###

	globalSkin 			= "";
	allbuildables_class = [];
	allbuildables 		= [];
	allbuild_notowns 	= [];
	allremovables 		= [];
	wallarray 			= [];
	structures			= [];
	CODEINPUT 			= [];
	keyCode 			= [];
	//Booleans
	remProc 			= false;
	hasBuildItem 		= false;
	rem_procPart 		= false;
	repProc 			= false;
	keyValid 			= false;
	procBuild 			= false;
	currentBuildRecipe 	= 0;
	removeObject		= false;
	
//Base Building 1.2 specific compiles
player_build = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_build.sqf"; 		// This overwrites default dayz building mechanic
antiWall = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\antiWall.sqf";				// This prevents players from exiting vehicles to get into bases
refresh_build_recipe_dialog = compile preprocessFileLineNumbers "\z\addons\dayz_code\buildRecipeBook\refresh_build_recipe_dialog.sqf"; 				// Builder menu dialog functionality
refresh_build_recipe_list_dialog = compile preprocessFileLineNumbers "\z\addons\dayz_code\buildRecipeBook\refresh_build_recipe_list_dialog.sqf"; 	// Builder Menu dialog list

diag_log "Started executing Base Building Configurations.";						// Log start

if (!isDedicated) then {
	_null = [] execVM "\z\addons\dayz_code\external\dy_work\initWall.sqf";		// Doesnt allow players to get out of vehicle through specified walls
	_null = [] execVM "init\build_list.sqf";		// build_list for building the arrays for Base Building
	player setVariable ["BIS_noCoreConversations", true];
};

diag_log "Finished executing Base Building Configurations.";						// Log finish