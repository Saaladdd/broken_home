
// Movement input
var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

x_spd=0;
y_spd=0;

// Set movement speed (dash or normal)
if((up || down || left || right) && global.can_move){
	image_speed = 1;
	if (keyboard_check(vk_lshift)) {
	    rate_mov = dashspeed; // Dash speed
	    image_speed = 2;      // Faster animation during dash
	} else {
	    rate_mov = movspeed;  // Normal speed
	}

	// Calculate movement speed in x and y directions
	
	x_spd = rate_mov * (right - left);
	y_spd = rate_mov * (down - up);
	
	facing = point_direction(x,y,x+x_spd,y+y_spd);
	// Animation control
	if (y_spd < 0) {
	    set_animation_frame("up");
	} else if (y_spd > 0) {
	    set_animation_frame("down");
	} else if (x_spd > 0) {
	    set_animation_frame("right");
	} else if (x_spd < 0) {
	    set_animation_frame("left");
	}
	col = get_collision(obj_collision);
	
}
//Incase the player is not giving any direction input
else{
	set_animation_frame(get_direction(facing));
	
}
// Collision detection
if col {
	interact(obj_collision); 
		if((interact_z() and global.can_move == true) and instance_exists(global.instance_)){
			
			if global.instance_.node_val != "None" and global.instance_.is_item == false{
				global.can_move = false;
				cb_node = global.instance_.node_val;
				instance_create_depth(0,0,-99,obj_tBox);
			}
			
			
			else if global.instance_.is_item == true{
				global.can_move = false;
				cb_node = global.instance_.node_val;
				instance_create_depth(0,0,-99,obj_tBox);
				
			
			}
		}
	

		
}


// Apply movement

if(x_spd !=0 || y_spd !=0 ){
	x += x_spd;
	y += y_spd;
	
}
else{image_speed=0;}
if(keyboard_check_pressed(ord("L"))){
	load_game();
}
	



// Debug output


