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



if room == Room2{
	if keyboard_check_pressed(ord("P")){
		paused = !paused;
		if paused == false{
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
        }
    }
	if(paused == true){
	    alarm[0]++;
	    alarm[1]++;
    }
}