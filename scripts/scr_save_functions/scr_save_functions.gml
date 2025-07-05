function save_room(){
	var room_items = array_create(0);
	for(var i = 0;i < instance_number(obj_items);i++){
		var _inst = instance_find(obj_items,i);
		room_items[i] = {
							obj: _inst.object_index,
							inst_id : _inst,
							x:_inst.x,
							y:_inst.y
		}
		
		
	}
	global.room_data[$ room_get_name(room)] = room_items;


	
}

function load_room(){
	var room_name = room_get_name(room);
	if (!variable_struct_exists(global.room_data, room_name)) {
        exit;
	}
	
	room_items = global.room_data[$ room_name];
	{instance_destroy(obj_items);}
	for(var i = 0; i < array_length(room_items); i++ ){
		var _inst = room_items[i];
		instance_create_layer(_inst.x,_inst.y,"Instances_1",_inst.obj);
	}
	
}

	


function save_game(){
	//Game state
	save_room();
	
	//Player save Data
	global.save_data.player_room = room;
	global.save_data.player_x = obj_player.x;
	global.save_data.player_y = obj_player.y;
	global.save_data.player_facing = obj_player.facing;
	global.save_data.inv = global.player_inventory;
	
	
	
	//Room save Data
	var flat_room_data = array_create(0);
    var keys = variable_struct_get_names(global.room_data);

    for (var i = 0; i < array_length(keys); i++) { 
        var k = keys[i];                        
        array_push(flat_room_data, k);           
        array_push(flat_room_data, global.room_data[$ k]);
    }

	//Save array
	var save_array = array_create(0);
	array_push(save_array,global.game_progress);
	array_push(save_array,global.save_data);
	array_push(save_array, flat_room_data);
	
	
	//Save File
	var filename = "save1.sav";
	var json =json_stringify(save_array);
	var buffer = buffer_create(string_byte_length(json)+1,buffer_fixed,1);
	
	buffer_write(buffer,buffer_string,json);
	buffer_save(buffer,filename);
	
	buffer_delete(buffer);
	
	
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
	room_to_go = global.save_data.player_room
	room_goto(room_to_go);
	var raw_room_data = array_get(load_array, 2);                        
    for (var i = 0; i < array_length(raw_room_data); i += 2) {
        var key = raw_room_data[i];               
        var val = raw_room_data[i + 1];           
        global.room_data[$ key] = val;              
    } 
	if(instance_exists(obj_player)){
		obj_player.x = global.save_data.player_x;
		obj_player.y = global.save_data.player_y;
		obj_player.facing =global.save_data.player_facing;
		global.player_inventory = global.save_data.inv;
	}
	load_room();
	
	
	
}


















	
