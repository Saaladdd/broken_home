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
	
//Type the text
if draw_char < text_length[page]{
	draw_char += text_speed;
	draw_char = clamp(draw_char,0,text_length[page]);
}

//Draw the textbox
textbox_spr_w = sprite_get_width(spr_tb);
textbox_spr_h = sprite_get_height(spr_tb);
if(!keyboard_check_pressed(vk_space)){
	draw_sprite_ext(spr_tb,1,textbox_x,textbox_y,textbox_width/textbox_spr_w,textbox_height/textbox_spr_h,0,c_white,1);

	//Text	
	var draw_txt = string_copy(text[page],1,draw_char);
	draw_text_ext(textbox_x+border,textbox_y+border,draw_txt,line_sep,line_width);
}