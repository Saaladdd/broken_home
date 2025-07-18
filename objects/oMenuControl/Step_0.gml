/// @description Actions

// change menu item selected
var _change = keyboard_check_pressed(menu_down_buttom) - keyboard_check_pressed(menu_up_buttom);
var _previous_selected = selected;

// if there is change...
if _change != 0 {
	selected = clamp(selected + _change, 0, ds_list_size(menu) - 1);
	if selected != _previous_selected {
		audio_play_sound(sndSelect, 100, false);
	}
}

// when enter pressed, do what need to do based on the selected menu item
if keyboard_check_pressed(menu_confirmation_buttom) {
	audio_play_sound(sndConfirmation, 100, false);
	switch(selected) {
		case 0:	// case of the first  item of the menu
			// add code of what to do when confirming this item
			room_goto(rm_player_room);
			break;
		case 1:	// case of the second one 
			// add code of what to do when confirming this item
			break;
		case 2:	// case of the thrid one 
			// add code of what to do when confirming this item
			break;
		case 3: // you get it
			// add code of what to do when confirming this item
			break;
	}
}