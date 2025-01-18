var count = ChatterboxGetOptionCount(chatterbox);
show_debug_message(chatterbox);
if (ChatterboxIsWaiting(chatterbox) and keyboard_check_pressed(ord("Z")) and draw_char = string_length(cb_text)){
    // Is Chatterbox presenting the user with options
	
	ChatterboxContinue(chatterbox);
	draw_char = 0;
    chatterbox_update();
} else if (count) {
    var _key = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
    // Move option_index twice if next option is invalid
    repeat ( (ChatterboxGetOptionConditionBool(chatterbox, wrap_options(option_index + _key, 0, count - 1)))) {
        option_index = wrap_options(option_index + _key, 0, count-1 );
		show_debug_message(option_index);
    }

    if keyboard_check_pressed(ord("Z")) {
        ChatterboxSelect(chatterbox, option_index);
        option_index = 0;
		draw_char = 0;
    }

    chatterbox_update();
}

if ChatterboxIsStopped(chatterbox) and keyboard_check_pressed(ord("Z")) {
 
    instance_destroy();
	global.can_move = true;
}
