if (keyboard_check_pressed(vk_escape)) {
    global.paused = false; // Resume the game
    instance_destroy(); // Remove the pause menu
}

if (keyboard_check_pressed(ord("Q"))) {
    game_end(); // Quit the game
}