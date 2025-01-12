globalvar chatterbox;

ChatterboxLoadFromFile("test2.yarn");
chatterbox = ChatterboxCreate();

ChatterboxJump(chatterbox,cb_node,"test2.yarn");

chatterbox_update();
option_index = 0;

spr_tb = spr_dialogue_box;
textbox_width = 368;
textbox_height = 96;
border = 16;
line_sep = 16;
line_width = textbox_width - border*2;
