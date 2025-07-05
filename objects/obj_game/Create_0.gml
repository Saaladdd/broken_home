window_set_caption("Broken Hearth");
game_set_speed(60, gamespeed_fps);

globalvar paused,paused_surf;
globalvar cb_text,cb_node,cb_speaker;

global.can_move = true;
paused = false;
paused_surf  = -1;
global.z_cooldown = 0;
global.instance_ = noone;
global.game_progress[0][0] = 0;
global.room_data = {};
load_game();
if global.game_progress[0][0] == 0{
	room_goto(rm_intro);
}






