waituntil {!alive player ; !isnull (finddisplay 46)}; 
_alladmins = [
    "4345344"		// Tactical Force
];
if ((getPlayerUID player) in _alladmins) then { 
sleep 30;
player addaction [("<t color=""#0074E8"">" + ("Tools Menu") +"</t>"),"admintools\Eexcute.sqf","",5,false,true,"",""];
[] execVM "debug\playerstats.sqf";
};