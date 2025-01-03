//Player collision
function player_collision() {
    // Horizontal Collision with obj_items
    if (place_meeting(x + x_spd, y, obj_items)) {
        facing = point_direction(0, 0, x_spd, y_spd);
        x_spd = 0; // Stop horizontal movement if colliding with an item
    }
    
    // Vertical Collision with obj_items
    if (place_meeting(x, y + y_spd, obj_items)) {
        facing = point_direction(0, 0, x_spd, y_spd);
        y_spd = 0; // Stop vertical movement if colliding with an item
    }
    
    // Environment Collision (with obj_environment, including child objects)
    if (place_meeting(x + x_spd, y, obj_environment)) {
        facing = point_direction(0, 0, x_spd, y_spd);
        
        // Check if the collision is with a child object of obj_environment
        var child_instance = instance_place(x + x_spd, y, obj_environment);
        if (instance_exists(child_instance)) {
            // If the collided object is a child of obj_environment, get the ID
       
        }

        x_spd = 0; // Stop horizontal movement if colliding with obj_environment
    }

    if (place_meeting(x, y + y_spd, obj_environment)) {
        facing = point_direction(0, 0, x_spd, y_spd);

        // Check for child object collision
        var child_instance = instance_place(x, y + y_spd, obj_environment);
        if (instance_exists(child_instance)) {
            // If the collided object is a child of obj_environment, get the ID
            
        }

        y_spd = 0; // Stop vertical movement if colliding with obj_environment
    }

    // Room Switch Collision
    if (place_meeting(x+x_spd, y,obj_save)) {
        x_spd = 0; // Stop horizontal movement on room switch collision
    }

    if (place_meeting(x, y+y_spd, obj_save)) {
        y_spd = 0; // Stop vertical movement on room switch collision
    }
}

function get_facing(val){
	switch(val){
		case 0 :
			return +2;
		case 90 :
			return -2;
		case 180 :
			return -2;
		case 270 :
			return +2;
		default:
			return 0;
	}
}


function get_direction(val){
	switch(val){
		case 0 :
			return "right_face";
		case 90 :
			return "up_face";
		case 180 :
			return "left_face";
		case 270 :
			return "down_face";
		default:
			return "down_face";
	}
}

function check_for_interaction(){
	face_dir = get_facing(obj_player.facing);
    // Check for collision in all 4 directions
	if(obj_player.facing == 0 || obj_player.facing == 180){
		
	    if (place_meeting(x + face_dir, y, obj_environment)) {
			child_instance = instance_place(x + face_dir, y, obj_environment);
	        if (instance_exists(child_instance)) {
	                return child_instance; // Return the child instance if facing
	            
	        }
	    }
	}

	if(obj_player.facing == 90 || obj_player.facing == 270 ){
	        if (place_meeting(x, y + face_dir, obj_environment)) {
				child_instance = instance_place(x , y + face_dir, obj_environment);
		        if (instance_exists(child_instance)) {
		                return child_instance; // Return the child instance if facing
		        }
			}
	}
	    
    return noone; // Return noone if no interaction is found
}

function check_for_interaction_with(){
	
	face_dir = get_facing(obj_player.facing);
    // Check for collision in all 4 directions
	if(obj_player.facing == 0 || obj_player.facing == 180){
		
	    if (place_meeting(obj_player.x + face_dir, obj_player.y, obj_save)) {
			return true;
	            
	    }
	    
	}

	if(obj_player.facing == 90 || obj_player.facing == 270 ){
	        if (place_meeting(obj_player.x, obj_player.y + face_dir, obj_save)) {
				return true;
			}
	}
	    
    return false; // Return noone if no interaction is found
}


	

