function interact_z(){
	if (keyboard_check_pressed(ord("Z")) and global.z_cooldown == 0){
		global.z_cooldown =60;
		return true;
	}
	else
		return false;
}

