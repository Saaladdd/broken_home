function add_to_inv(){
	val = global.instance_;
	if val.is_key_item == true
		array_push(global.player_inventory.key_items,val.item_name);
	else
		array_push(global.player_inventory.items,val.item_name);
	instance_destroy(val);
}
