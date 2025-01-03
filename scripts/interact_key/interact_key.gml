function interact_z(){
	if (keyboard_check_pressed(ord("Z")) && global.z_cooldown == 0){
		global.z_cooldown = 100;
		return true;
	}
	else
		return false;
}

