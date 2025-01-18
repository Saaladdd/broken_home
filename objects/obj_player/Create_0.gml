/// @description Insert description here
// You can write your code in this editor
//Variables
movspeed = 2
global.can_move = true;
dashspeed = 2.8;
image_index = 0;
globalvar rate_mov;
globalvar pick_up;
globalvar x_spd,y_spd;
globalvar col;
x_spd = 0;
y_spd = 0;

facing = 100000;
globalvar deletion_id;

deletion_id =-1;
col = false;
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
	right:{frames:[8,11]},
	left:{frames:[4,7]},
	up:{frames:[12,15]},
	down:{frames:[0,3]},
	right_face:{frames:[8,8]},
	left_face:{frames:[4,4]},
	up_face:{frames:[12,12]},
	down_face:{frames:[0,0]}
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

