if(isServer) exitWith {};
private["_version"];
_version = "1.0.1";
diag_log text format["WMOD v%1: loading...",_version];
call compile preprocessFileLineNumbers "addons\wmod\config.sqf";
call compile preprocessFileLineNumbers "addons\wmod\functions.sqf";
call compile preprocessFileLineNumbers "overwrites\click_actions\init.sqf";
if (!(isServer) && {isNil "DZE_CLICK_ACTIONS_BUILD"}) exitWith {
    diag_log text "WMOD: ERROR -- Click Actions Handler missing!";
};
if (!(isServer) && {DZE_CLICK_ACTIONS_BUILD != DZE_CRV_DEPLOYABLE}) exitWith {
    diag_log text format["WMOD: ERROR -- Click Actions Handler loaded build #%1! Required build #%2!",DZE_CLICK_ACTIONS_BUILD,DZE_CRV_DEPLOYABLE];
};
call fnc_wmod_loadClickActions;