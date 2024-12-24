if(keyboard_check(ord("T"))){
	if(window_get_fullscreen()){
		window_set_fullscreen(false);
	}
	else{
		window_set_fullscreen(true);
	}
}

if(keyboard_check(vk_escape)){
	game_end();
	
}