function wrap_options(val,_min,_max){
	if val > _max return _min;
	else if val < _min return _max;
	return val
}

function draw_rectangle_center(_x, _y, _width, _height, _outline, _colour, _alpha) {
    var old_colour = draw_get_colour();
    var old_alpha = draw_get_alpha();

    draw_set_colour(_colour);
    draw_set_alpha(_alpha);

    draw_rectangle(_x - _width / 2, _y - _height / 2, _x + _width / 2, _y + _height / 2, _outline);

    draw_set_colour(old_colour);
    draw_set_alpha(old_alpha);
}

function get_main_game_progress(){
	return global.game_progress[0][0]
}

function chatterbox_update() {
    cb_node = ChatterboxGetCurrent(chatterbox);
	cb_speaker = ChatterboxGetContentSpeaker(chatterbox,0);
    cb_text = ChatterboxGetContentSpeech(chatterbox,0);
}	