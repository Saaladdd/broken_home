function save_room(){
	room_items = array_create(0);
	for(var i = 0;i < instance_number(obj_items);i++){
		var _inst = instance_find(obj_items,i);
		room_items[i] = {
							obj: _inst.object_index,
							inst_id : _inst,
							x:_inst.x,
							y:_inst.y
		}
		
		
	}
	global.room_data.room = room_items;
	show_message(global.room_data);
}

function load_room(){
	room_items = global.room_data.rm_player_room_data;
	if array_length(room_items) ==0 {exit;}
	if(instance_exists(obj_items)){instance_destroy(obj_items);}
	for(var i = 0; i < array_length(room_items); i++ ){
		var _inst = room_items[i];
		instance_create_layer(_inst.x,_inst.y,"Instances_1",_inst.obj);
	}
	
}

	


function save_game(){
	//Game state
	save_room();
	
	//Player save Data
	global.save_data.player_room = room_get_name(room);
	global.save_data.player_x = obj_player.x;
	global.save_data.player_y = obj_player.y;
	global.save_data.player_facing = obj_player.facing;
	global.save_data.inv = global.player_inventory;
	
	//Room save Data
	
	
	//Save array
	var save_array = array_create(0);
	array_push(save_array,global.game_progress);
	array_push(save_array,global.save_data);
	array_push(save_array,global.room_data.rm_player_room_data);
	
	
	//Save File
	var filename = "save1.sav";
	var json =json_stringify(save_array);
	var buffer = buffer_create(string_byte_length(json)+1,buffer_fixed,1);
	
	buffer_write(buffer,buffer_string,json);
	buffer_save(buffer,filename);
	
	buffer_delete(buffer);
	load_room();
	
}

function load_game(){
	var filename = "save1.sav";
	if !file_exists(filename)
		exit;
	
	//Create buffer
	var buffer = buffer_load(filename);
	var json = buffer_read(buffer,buffer_string);
	buffer_delete(buffer);
	
	//Load array
	var load_array = json_parse(json);
	global.game_progress = array_get(load_array,0);
	global.save_data = array_get(load_array,1);
	global.room_data.rm_player_room_data = array_get(load_array,2);
	show_message(global.room_data);
	room_goto(asset_get_index(global.save_data.player_room));
	
	
	
	
	
	
	obj_player.x = global.save_data.player_x;
	obj_player.y = global.save_data.player_y;
	obj_player.facing =global.save_data.player_facing;
	global.player_inventory = global.save_data.inv;
	
	load_room();
	
	
}


















	
