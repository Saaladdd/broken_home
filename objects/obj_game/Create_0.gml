window_set_caption("Broken Hearth");
globalvar paused,paused_surf;
paused = false;
paused_surf  = -1;

//TEXTBOX START
textbox_width = 368;
textbox_height = 96;
border = 4;
line_sep = 8;
spr_tb = spr_dialogue_box;

line_width = textbox_width - border*2;

page = 0;
page_number = 0;
text[0] = "";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_speed = 1;

setup = false;
