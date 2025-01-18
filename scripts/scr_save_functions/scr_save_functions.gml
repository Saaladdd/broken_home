function save_game(){
	//Game state
	
	//Player save Data
	global.save_data.player_room = room_get_name(room);
	global.save_data.player_x = obj_player.x;
	global.save_data.player_y = obj_player.y;
	global.save_data.player_facing = obj_player.facing;
	
	
	//Save array
	var save_array = array_create(0);
	array_push(save_array,global.game_progress);
	array_push(save_array,global.save_data);
	
	
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
	
	room_goto(asset_get_index(global.save_data.player_room));
	
	obj_player.x = global.save_data.player_x;
	obj_player.y = global.save_data.player_y;
	obj_player.facing =global.save_data.player_facing;
	
	
}


















	
