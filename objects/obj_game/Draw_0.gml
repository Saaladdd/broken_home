textbox_x = camera_get_view_x(global.camera) + (cameraWidth - textbox_width)/2 ;
textbox_y = camera_get_view_y(global.camera) + (cameraHeight - textbox_height);

if(!setup){
	setup = true;
	//draw_set_font(Font);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	page_number = array_length(text);
	for(var i=0;i< page_number;i++){
		text_length[i] = string_length(text[i]);
	}
	
	
}
	
//Draw the textbox
textbox_spr_w = sprite_get_width(spr_tb);
textbox_spr_h = sprite_get_height(spr_tb);

if(draw)
	draw_sprite_ext(spr_tb,100,textbox_x,textbox_y,textbox_width/textbox_spr_w,textbox_height/textbox_spr_h,0,c_white,1);
