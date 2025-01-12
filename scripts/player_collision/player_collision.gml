//Player collision


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
	switch(obj_player.facing){
		case 0 :
			 if (place_meeting(obj_player.x + 2, obj_player.y, obj_environment)) {
			child_instance = instance_place(obj_player.x + 2, obj_player.y, obj_environment);
	        if (instance_exists(child_instance)) {
	                return child_instance; // Return the child instance if facing
	            
	        }
			 }
		case 45 :
			 if (place_meeting(obj_player.x + 2, obj_player.y-2, obj_environment)) {
			child_instance = instance_place(obj_player.x + 2, obj_player.y-2, obj_environment);
	        if (instance_exists(child_instance)) {
	                return child_instance; // Return the child instance if facing
	            
	        }
			 }
		case 90 :
			 if (place_meeting(obj_player.x , obj_player.y-2, obj_environment)) {
				child_instance = instance_place(obj_player.x, obj_player.y-2, obj_environment);
				 if (instance_exists(child_instance)) {
	                return child_instance; // Return the child instance if facing
	            
				 }
			 }
		case 180 :
			 if (place_meeting(obj_player.x - 2, obj_player.y, obj_environment)) {
			child_instance = instance_place(obj_player.x - 2, obj_player.y, obj_environment);
	        if (instance_exists(child_instance)) {
	                return child_instance; // Return the child instance if facing
	            
	        }
			 }
		case 270 :
			 if (place_meeting(obj_player.x , obj_player.y+2, obj_environment)) {
				child_instance = instance_place(obj_player.x, obj_player.y+2, obj_environment);
				 if (instance_exists(child_instance)) {
	                return child_instance; // Return the child instance if facing
	            
				 }
			 }
		default:
			return noone;
	}

}


	

