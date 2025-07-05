if start == 0{
	instance_create_depth(0,0,-99,obj_textbox);
	start = 1;
}



if(!instance_exists(obj_textbox)){
	
a = a - 0.01;

}
if a==0{
room_goto(rm_player_room);
global.game_progress[0][0] = 1;
}

if(!instance_exists(obj_textbox)){
	show_debug_message("There");
}