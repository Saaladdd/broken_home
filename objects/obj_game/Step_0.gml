var is_fullscreen = window_get_fullscreen();


while(global.z_cooldown != 0){
	global.z_cooldown--;
}
if(global.can_move){
	interaction = check_for_interaction();
	show_debug_message(interaction);
	if (interaction != noone){
		show_debug_message("Hi");
		
		if(interaction.dialogue_node){
			if(interact_z() && global.display == false){
				cb_node = interaction.dialogue;
				if(cb_node){
					show_debug_message(cb_node);
					instance_create_depth(0,0,-999,obj_tBox);
				}
				global.can_move = false;
			
			}
		}
	}
}

if(keyboard_check_pressed(ord("T"))){
	if(is_fullscreen){
		window_set_fullscreen(false);
		window_set_size(cameraWidth*cameraScale, cameraHeight*cameraScale);
		window_set_position(display_get_width()/2-windowWidth/2,display_get_height()/2-windowHeight/2);
		surface_resize(application_surface, cameraWidth*cameraScale, cameraHeight*cameraScale);
	}
	else{
		window_set_fullscreen(true);
	}
}
show_debug_message("Player X:{0} Y:{1}",obj_player.x,obj_player.y);


