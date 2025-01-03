//TEXTBOX START
textbox_width = 368;
textbox_height = 96;
border = 16;
line_sep = 16;
spr_tb = spr_dialogue_box;

line_width = textbox_width - border*2;

page = 0;
page_number = 0;
global.text = ["Default text"];
global.text_length[0] = string_length(global.text[0]);
global.display = false;
draw_char = 0;
text_speed = 1;

setup = false;

