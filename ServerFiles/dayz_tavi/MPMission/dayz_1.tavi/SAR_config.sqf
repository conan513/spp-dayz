SAR_dynamic_spawning = true;

SAR_max_grps_bandits = 1;
SAR_max_grps_soldiers = 1;
SAR_max_grps_survivors = 1;


SAR_chance_bandits = 10;
SAR_chance_soldiers = 10;
SAR_chance_survivors = 10;


SAR_max_grpsize_bandits = 3;
SAR_max_grpsize_soldiers = 3;
SAR_max_grpsize_survivors = 3;


SAR_FIX_VEHICLE_ISSUE = false;

SAR_AI_disable_UPSMON_AI = false;

SAR_AI_STEAL_VEHICLE = true;

SAR_surv_kill_value = 250;

SAR_band_kill_value = 50;

SAR_HUMANITY_HOSTILE_LIMIT = -2500;

SAR_log_AI_kills = true;

SAR_leader_health_factor = 0.4;

SAR_dynamic_group_respawn = true;

SAR_respawn_waittime = 60; 

SAR_DESPAWN_TIMEOUT = 120;

SAR_DELETE_TIMEOUT = 120; 

SAR_DETECT_HOSTILE = 200;

SAR_DETECT_INTERVAL = 15;

SAR_HITKILL_DEBUG = false;

SAR_DEBUG = false;

SAR_EXTREME_DEBUG = false;

KRON_UPS_Debug = 0;

KRON_UPS_ambushdist = 100;

KRON_UPS_Cycle = 20;

KRON_UPS_react = 60;

KRON_UPS_minreact = 10;

KRON_UPS_maxwaiting = 15;

KRON_UPS_alerttime = 90;

KRON_UPS_closeenough = 150; // if you have vast plain areas, increase this to sth around 150-300 

KRON_UPS_sharedist = 200;

KRON_UPS_comradio = 0;

KRON_UPS_searchVehicledist = 600; // 700, 900  

KRON_UPS_Res_enemy = [east];

SAR_leader_sold_list = ["Rocket_DZ"]; // the potential classes of the leader of a soldier group
SAR_sniper_sold_list = ["Sniper1_DZ"]; // the potential classes of the snipers of a soldier group
SAR_soldier_sold_list = ["Soldier1_DZ","Camo1_DZ"]; // the potential classes of the riflemen of a soldier group

// bandit AI
SAR_leader_band_list = ["Bandit1_DZ"]; // the potential classes of the leader of a bandit group
SAR_sniper_band_list = ["Sniper1_DZ"]; // the potential classes of the snipers of a bandit group
SAR_soldier_band_list = ["Bandit1_DZ","BanditW1_DZ","Survivor2_DZ","SurvivorW2_DZ","Soldier_Crew_PMC"]; // the potential classes of the bandit of a soldier group

// survivor AI
SAR_leader_surv_list = ["Survivor3_DZ"]; // the potential classes of the leaders of a survivor group
SAR_sniper_surv_list = ["Sniper1_DZ"]; // the potential classes of the snipers of a survivor group
SAR_soldier_surv_list = ["Survivor2_DZ","SurvivorW2_DZ","Soldier_Crew_PMC"]; // the potential classes of the riflemen of a soldier group

SAR_leader_sold_skills = [
    ["aimingAccuracy",0.35, 0.10],
    ["aimingShake",   0.35, 0.10],
    ["aimingSpeed",   0.80, 0.20],
    ["spotDistance",  0.70, 0.30],
    ["spotTime",      0.65, 0.20],
    ["endurance",     0.80, 0.20],
    ["courage",       0.80, 0.20],
    ["reloadSpeed",   0.80, 0.20],
    ["commanding",    0.80, 0.20],
    ["general",       0.80, 0.20]
];

SAR_soldier_sold_skills  = [
    ["aimingAccuracy",0.25, 0.10], 
    ["aimingShake",   0.25, 0.10],
    ["aimingSpeed",   0.70, 0.20],
    ["spotDistance",  0.55, 0.30],
    ["spotTime",      0.30, 0.20],
    ["endurance",     0.60, 0.20],
    ["courage",       0.60, 0.20],
    ["reloadSpeed",   0.60, 0.20],
    ["commanding",    0.60, 0.20],
    ["general",       0.60, 0.20]
];

// Sniper
SAR_sniper_sold_skills = [
    ["aimingAccuracy",0.80, 0.10],
    ["aimingShake",   0.90, 0.10],
    ["aimingSpeed",   0.70, 0.20],
    ["spotDistance",  0.70, 0.30],
    ["spotTime",      0.75, 0.20],
    ["endurance",     0.70, 0.20],
    ["courage",       0.70, 0.20],
    ["reloadSpeed",   0.70, 0.20],
    ["commanding",    0.70, 0.20],
    ["general",       0.70, 0.20]
];

// Leader
SAR_leader_band_skills = [
    ["aimingAccuracy",0.35, 0.10],
    ["aimingShake",   0.35, 0.10],
    ["aimingSpeed",   0.60, 0.20],
    ["spotDistance",  0.40, 0.30],
    ["spotTime",      0.45, 0.20],
    ["endurance",     0.40, 0.20],
    ["courage",       0.50, 0.20],
    ["reloadSpeed",   0.60, 0.20],
    ["commanding",    0.50, 0.20],
    ["general",       0.50, 0.20]
];

// Rifleman
SAR_soldier_band_skills = [
    ["aimingAccuracy",0.15, 0.10],
    ["aimingShake",   0.15, 0.10],
    ["aimingSpeed",   0.60, 0.20],
    ["spotDistance",  0.45, 0.30],
    ["spotTime",      0.20, 0.20],
    ["endurance",     0.40, 0.20],
    ["courage",       0.40, 0.20],
    ["reloadSpeed",   0.40, 0.20],
    ["commanding",    0.40, 0.20],
    ["general",       0.40, 0.20]
];

// Sniper
SAR_sniper_band_skills = [
    ["aimingAccuracy",0.70, 0.10],
    ["aimingShake",   0.80, 0.10],
    ["aimingSpeed",   0.70, 0.20],
    ["spotDistance",  0.70, 0.30],
    ["spotTime",      0.65, 0.20],
    ["endurance",     0.70, 0.20],
    ["courage",       0.70, 0.20],
    ["reloadSpeed",   0.70, 0.20],
    ["commanding",    0.50, 0.20],
    ["general",       0.60, 0.20]
];

// Leader
SAR_leader_surv_skills = [
    ["aimingAccuracy",0.35, 0.10],
    ["aimingShake",   0.35, 0.10],
    ["aimingSpeed",   0.60, 0.20],
    ["spotDistance",  0.40, 0.30],
    ["spotTime",      0.45, 0.20],
    ["endurance",     0.40, 0.20],
    ["courage",       0.50, 0.20],
    ["reloadSpeed",   0.60, 0.20],
    ["commanding",    0.50, 0.20],
    ["general",       0.50, 0.20]
];

// Rifleman
SAR_soldier_surv_skills = [
    ["aimingAccuracy",0.15, 0.10],
    ["aimingShake",   0.15, 0.10],
    ["aimingSpeed",   0.60, 0.20],
    ["spotDistance",  0.45, 0.30],
    ["spotTime",      0.20, 0.20],
    ["endurance",     0.40, 0.20],
    ["courage",       0.40, 0.20],
    ["reloadSpeed",   0.40, 0.20],
    ["commanding",    0.40, 0.20],
    ["general",       0.40, 0.20]
];

// Sniper
SAR_sniper_surv_skills = [
    ["aimingAccuracy",0.70, 0.10],
    ["aimingShake",   0.80, 0.10],
    ["aimingSpeed",   0.70, 0.20],
    ["spotDistance",  0.70, 0.30],
    ["spotTime",      0.65, 0.20],
    ["endurance",     0.70, 0.20],
    ["courage",       0.70, 0.20],
    ["reloadSpeed",   0.70, 0.20],
    ["commanding",    0.50, 0.20],
    ["general",       0.60, 0.20]
];
// ---------------------------------------------------------------------------------------------------------------------
// Weapon & Item Loadout
// ---------------------------------------------------------------------------------------------------------------------

// a general note: you CAN use either rifles OR pistols. Do not use both. AI will get stuck after switching weapons.

// potential weapon list for leaders
SAR_leader_weapon_list = ["M4A1","M4A3_CCO_EP1","AK_47_M"];
SAR_leader_pistol_list = [];  // do NOT populate, Arma still has a bug that renders AI unresponsive after switching to the sidearm

// potential item list for leaders -> Item / Chance 1 - 100
SAR_leader_items = [["ItemSodaCoke",75],["FoodCanBakedBeans",60]];
SAR_leader_tools =  [["ItemMap",50],["ItemCompass",30],["Binocular_Vector",5],["NVGoggles",5],["ItemRadio",100]];

//potential weapon list for riflemen
SAR_rifleman_weapon_list = ["M16A2","Winchester1866","AK_74","LeeEnfield","M1014"];
SAR_rifleman_pistol_list = [];   // do NOT populate, Arma still has a bug that renders AI unresponsive after switching to the sidearm

// potential item list for riflemen
SAR_rifleman_items = [["ItemSodaCoke",75],["FoodCanBakedBeans",60]];
SAR_rifleman_tools = [["ItemMap",50],["ItemCompass",30]];

//potential weapon list for snipers
SAR_sniper_weapon_list = ["M4A1_Aim","SVD_CAMO","Huntingrifle"];
SAR_sniper_pistol_list = [];  // do NOT populate, Arma still has a bug that renders AI unresponsive after switching to the sidearm

// potential item list for snipers
SAR_sniper_items = [["ItemSodaCoke",75],["FoodCanBakedBeans",60],["Skin_Sniper1_DZ",10]];
SAR_sniper_tools = [["ItemMap",50],["ItemCompass",30]];

// ---------------------------------------------------------------------------------------------------------------------
// heli patrol definiton
// ---------------------------------------------------------------------------------------------------------------------

// define the type of heli(s) you want to use here for the heli patrols - make sure you include helis that have minimum 2 gunner positions, anything else might fail
SAR_heli_type=["UH1H_DZ","Mi17_DZ"];
