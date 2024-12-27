/// @description Insert description here
// You can write your code in this editor
//Variables
can_move = true;
movspeed = 2;
dashspeed = 4;
image_index = 0;
globalvar rate_mov;
globalvar pick_up;
globalvar x_spd,y_spd;

facing = 100000;
globalvar deletion_id;
deletion_id =-1;
directions = [
    [8, 8],     // bottom-right
    [-8, -8],   // top-left
    [8, -8],    // top-right
    [-8, 8],    // bottom-left
    [8, 0],     // right
    [0, -8],    // top
    [0, 8],     // bottom
    [-8, 0]  
];
pick_up = false;


//All animation frames structure
animations ={	
	idle:{frames:[0,0]},
	right:{frames:[2,2]},
	left:{frames:[1,1]},
	up:{frames:[4,4]},
	down:{frames:[0,0]},
};
//Function for animations
function set_animation_frame(status){
	
	new_animation = variable_struct_get(animations,status);
	animation_frames = new_animation.frames;
}
//Function for frame boundaries
function bound(index,bound_array){
	
	if(index>bound_array[1]+0.99 or index<bound_array[0]){
		return bound_array[0];
	}
	return index;
}
//default animations
set_animation_frame("idle");