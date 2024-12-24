if (keyboard_check_pressed(vk_escape)) {
    global.paused = false; 
	instance_activate_object(obj_controller);
    instance_destroy(); 
}

if (keyboard_check_pressed(ord("Q"))) {
    game_end(); // Quit the game
}