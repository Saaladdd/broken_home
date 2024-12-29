var is_fullscreen = window_get_fullscreen();

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
show_debug_message("TB X:{0} Y:{1}",textbox_width,textbox_height);


