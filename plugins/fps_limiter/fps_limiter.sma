#include <amxmodx>
#include <amxmisc>

#define PLUGIN "FPS Limiter"
#define VERSION "1.0"
#define AUTHOR "cofyye"

#pragma semicolon 1

new pCvar_FpsLimit;
new pCvar_CheckTime;

public plugin_init() {
	register_plugin(PLUGIN, VERSION, AUTHOR);
	
	pCvar_FpsLimit = register_cvar("fps_limit_maxfps", "150", ADMIN_RCON);
	pCvar_CheckTime = register_cvar("fps_limit_checktime", "5", ADMIN_RCON);
}

public client_putinserver(id) {
	if(is_user_bot(id) || is_user_hltv(id)) {
		return PLUGIN_CONTINUE;
	}
	
	set_task(get_pcvar_float(pCvar_CheckTime), "CheckFps", id, _, _, "b");
	
	return PLUGIN_CONTINUE;
}

public client_disconnected(id) {
	if(task_exists(id)) {
		remove_task(id);
	}
	
	return PLUGIN_CONTINUE;
}

public CheckFps(id) {
	query_client_cvar(id, "fps_max", "OnGetFpsMax");
}

public OnGetFpsMax(id, const cvar[], const value[]) {
	new Float:convertedValue = floatstr(value);
	if(convertedValue > get_pcvar_num(pCvar_FpsLimit)) {
		server_cmd("kick #%d ^"Change fps_max under %d^"", get_user_userid(id), get_pcvar_num(pCvar_FpsLimit));
	}
}