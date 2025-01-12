textbox_x = camera_get_view_x(global.camera) + (cameraWidth - textbox_width) / 2;
textbox_y = camera_get_view_y(global.camera) + (cameraHeight - textbox_height);
var textbox_spr_w = sprite_get_width(spr_tb);
var textbox_spr_h = sprite_get_height(spr_tb);
draw_set_font(pixelfont);
//show_message(chatterbox);
if IsChatterbox(chatterbox) and cb_text != undefined
{
	draw_sprite_ext(spr_tb, 1, textbox_x, textbox_y, textbox_width / textbox_spr_w, textbox_height / textbox_spr_h, 0, c_white, 1);
    draw_text_ext(textbox_x + border, textbox_y + border, cb_text, line_sep, line_width);

    //If there are options, draw them to the center of the screen

	/*
    if (ChatterboxGetOptionCount(chatterbox))
    {
        draw_set_halign(fa_center);

        var _width = 400;
        var _height = 64;

        for (var i = 0; i < ChatterboxGetOptionCount(chatterbox); i++)
        {
            if (ChatterboxGetOptionConditionBool(chatterbox, i))
            {
                _xx = room_width / 2;
                _yy = (room_height / 6) * (i + 2);

                draw_rectangle_center(_xx, _yy, _width, _height, false, c_black, 0.5);

                var _icon = "";
                if (option_index == i) _icon = ">";
				var _option = ChatterboxGetOption(chatterbox,i);
                draw_text(_xx, _yy, _icon + _option);
            }
        }
    }
	*/
}
