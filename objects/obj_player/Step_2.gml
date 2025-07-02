var len =1;

var facing_x = x + lengthdir_x(len,facing);
var facing_y = y + lengthdir_y(len,facing);

var environment_obj = instance_position(facing_x,facing_y,obj_environment);

if(environment_obj != noone){
	show_debug_message("Yep proper");	
}

