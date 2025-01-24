function get_facing(){
	switch(obj_player.facing){
		case 0:
			return +2;
		case 90:
			return -2;
		case 180:
			return -2;
		case 270:
			return +2;
		default:
			return 0;
	}
}

function get_collision(val){
	if(place_meeting(obj_player.x+x_spd,obj_player.y,val)){
		x_spd = 0
		if(place_meeting(obj_player.x,obj_player.y+y_spd,val))
			y_spd=0;
		return true;
	}
	else if(place_meeting(obj_player.x,obj_player.y+y_spd,val)){
		y_spd = 0;
		if(place_meeting(obj_player.x+x_spd,obj_player.y,val))
			x_spd=0
		return true;
	}
	else
		return false;
	
}

function interact(val){
	face = obj_player.facing;
	if(face == 90 or face == 270){
		global.instance_ = instance_place(obj_player.x,obj_player.y+get_facing(),val);
		
	}
	else if(face == 0 or face == 180){
		global.instance_ = instance_place(obj_player.x+get_facing(),obj_player.y,val);
	}
	else
		global.instance_ = noone;
		
		
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




	

