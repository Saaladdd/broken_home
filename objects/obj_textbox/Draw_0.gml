if (global.display) {
    // Ensure setup is performed only once
    if (!setup) {
        setup = true;
        page_number = array_length(global.text);
        global.text_length = []; // Ensure array is cleared
        for (var i = 0; i < page_number; i++) {
            global.text_length[i] = string_length(global.text[i]);
        }
        draw_char = 0;
        page = 0;
    }

    // Position the textbox relative to the camera
    textbox_x = camera_get_view_x(global.camera) + (cameraWidth - textbox_width) / 2;
    textbox_y = camera_get_view_y(global.camera) + (cameraHeight - textbox_height);

    // Typing effect: increment characters drawn
    if (draw_char < global.text_length[page]) {
        draw_char += text_speed;
        draw_char = clamp(draw_char, 0, global.text_length[page]);
    }

    // Key input logic for interaction
    if (interact_z()) {
        if (draw_char == global.text_length[page]) {
            // Advance to the next page or close the textbox
            if (page < page_number - 1) {
                page++;
                draw_char = 0; // Reset for next page
            } else {
                page = 0;        // Reset to first page
                setup = false;   // Allow setup for next use
                global.display = false;// Close textbox
				global.can_move = true;
            }
        } else {
            draw_char = global.text_length[page]; // Skip typing effect
        }
    }

    // Draw the textbox sprite
    var textbox_spr_w = sprite_get_width(spr_tb);
    var textbox_spr_h = sprite_get_height(spr_tb);
	draw_set_font(pixelfont);
    draw_sprite_ext(spr_tb, 1, textbox_x, textbox_y, textbox_width / textbox_spr_w, textbox_height / textbox_spr_h, 0, c_white, 1);

    // Draw the text
    var draw_txt = string_copy(global.text[page], 1, draw_char);
    draw_text_ext(textbox_x + border, textbox_y + border, draw_txt, line_sep, line_width);
}
