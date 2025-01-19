function interact_with_items(){
	face = obj_player.facing;
	if(face == 90 or face == 270){
		global.instance_ = instance_place(obj_player.x,obj_player.y+get_facing(),obj_items);
	}
	else if(face == 0 or face == 180){
		global.instance_ = instance_place(obj_player.x+get_facing(),obj_player.y,obj_items);
	}
	else
		global.instance_ = noone;
		
}