//Player collision
function player_collision(){
	if(place_meeting(x+x_spd,y,obj_items)){
		x_spd = 0; // Stop horizontal movement if colliding with an item
	}
	if(place_meeting(x,y+y_spd,obj_items)){
	    y_spd = 0; // Stop vertical movement if colliding with an item
	}
	//Environment
	if(place_meeting(x+x_spd,y,obj_environment)){
	    x_spd = 0; // Stop horizontal movement if colliding with an item
	}
	if(place_meeting(x,y+y_spd,obj_environment)){
	    y_spd = 0; // Stop vertical movement if colliding with an item
	}
	/*
	if(place_meeting(x,y,obj_roomswitch)){
	    x_spd = 0; // Stop horizontal movement on room switch collision
	}
	if(place_meeting(x,y,obj_roomswitch)){
	    y_spd = 0; // Stop vertical movement on room switch collision
	}
	*/
}