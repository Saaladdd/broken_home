function add_to_inv(){
	var _val = global.instance_;
	if _val.item.is_key_item == true
		array_push(global.player_inventory.key_items,_val.item);
	else
		array_push(global.player_inventory.items,_val.item);
	instance_destroy(_val);
}
