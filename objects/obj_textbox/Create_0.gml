globalvar chatterbox;
ChatterboxLoadFromFile("test2.yarn");

ChatterboxAddFunction("game_level",get_main_game_progress);
ChatterboxAddFunction("add",add_to_inv);
ChatterboxAddFunction("save",save_game);

chatterbox = ChatterboxCreate();
typist = scribble_typist();
typist.in(1,1);
scribble_font_set_default("Font2");

ChatterboxJump(chatterbox,cb_node,"test2.yarn");

chatterbox_update();


option_index = 0;
spr_tb = spr_dialogue_box;
textbox_width = 368;
textbox_height = 96;
border = 16;
line_width = textbox_width - border*2;
line_height = textbox_height - border;