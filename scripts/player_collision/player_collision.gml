//Player collision
function player_collision(){
	if(place_meeting(x+x_spd,y,obj_items)){
		facing = point_direction(0,0,x_spd,y_spd);
		x_spd = 0; // Stop horizontal movement if colliding with an item
	}
	if(place_meeting(x,y+y_spd,obj_items)){
		facing = point_direction(0,0,x_spd,y_spd);
	    y_spd = 0; // Stop vertical movement if colliding with an item
	}
	
	//Environment
	if(place_meeting(x+x_spd,y,obj_environment)){
		facing = point_direction(0,0,x_spd,y_spd);
	    x_spd = 0; // Stop horizontal movement if colliding with an item
		
	}
	if(place_meeting(x,y+y_spd,obj_environment)){
		facing = point_direction(0,0,x_spd,y_spd);
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