// Initialize variables
pick_up = false; // Flag for item pickup
image_speed = 1; // Default animation speed


// Movement input
var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

// Set movement speed (dash or normal)
if(can_move){
	if (keyboard_check(vk_lshift)) {
	    rate_mov = dashspeed; // Dash speed
	    image_speed = 2;      // Faster animation during dash
	} else {
	    rate_mov = movspeed;  // Normal speed
	}

	// Calculate movement speed in x and y directions
	x_spd = rate_mov * (right - left);
	y_spd = rate_mov * (down - up);

	// Animation control
	if (!(x_spd || y_spd)) { // No movement
	    set_animation_frame("idle");
	} else if (x_spd > 0) {
		global.move_direction =
	    set_animation_frame("right");
	} else if (x_spd < 0) {
	    set_animation_frame("left");
	} else if (y_spd < 0) {
	    set_animation_frame("up");
	} else if (y_spd > 0) {
	    set_animation_frame("down");
	}
}
// Collision detection
player_collision();


// Item pickup logic
for (var i = 0; i < array_length(directions); i++) {
    var dx = directions[i][0]; // x offset
    var dy = directions[i][1]; // y offset
    if (place_meeting(x + dx, y + dy, obj_items)) {
        pick_up = true; // Item found
        with (instance_place(x + dx, y + dy, obj_items)) {
            deletion_id = id; // Store the item's ID for deletion
        }
        break; // Exit the loop after finding one item
    }
}

// Apply movement
if(x_spd != 0 || y_spd !=0){
	facing = point_direction(x,y,x+x_spd,y+y_spd);
	x += x_spd;
	y += y_spd;
}



// Debug output


