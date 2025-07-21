/// @description Insert description here
// You can write your code in this editor
//Variables
globalvar rate_mov;
globalvar pick_up;
globalvar x_spd,y_spd;
globalvar col;
globalvar deletion_id;

movspeed = 2;
dashspeed = 3;
facing = -1;

image_index = 0;

x_spd = 0;
y_spd = 0;
deletion_id =-1;
col = false;
pick_up = false;

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



//All animation frames structure
animations ={	
	idle:{frames:[0,0]},
	right:{frames:[10,13]},
	left:{frames:[5,8]},
	up:{frames:[15,18]},
	down:{frames:[0,3]},
	right_face:{frames:[10,10]},
	left_face:{frames:[5,5]},
	up_face:{frames:[15,15]},
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

