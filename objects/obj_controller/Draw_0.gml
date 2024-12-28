if paused == true
{
if !surface_exists(paused_surf)
    {
    if paused_surf == -1
        {
		paused_surf = surface_create(display_get_width(), display_get_height());
        instance_deactivate_all(true);
		instance_activate_object(obj_camera);
        }
	  //camera width and height form obj_camera

	

	surface_set_target(paused_surf);
    draw_surface(application_surface, 400, 300); //400 and 300 are the camera width and height in obj_camera
    surface_reset_target();
    }else
    {
    draw_surface(paused_surf, 0, 0);
    //draw_set_alpha(0.5);   makes the screen dim , player dissapears for some reason so alpha is set to 1 to hide issue(fix later)
	draw_set_font(pixelfont);
    draw_rectangle_colour(0, 0, display_get_width(), display_get_height(), c_black, c_black, c_black, c_black, false); //draw rectangle covering whole screen with alpha 0.5
    draw_set_alpha(1);
    draw_set_halign(fa_center);
	draw_text_transformed_colour(room_width / 2, (room_height / 2)-20, "PAUSED", 2, 2, 0,c_aqua, c_aqua, c_aqua, c_aqua, 1);  //draw paused text at center
	draw_text_transformed_colour(room_width / 2, (room_height / 2)+30, "ESC TO QUIT", 2, 2, 0,c_aqua, c_aqua, c_aqua, c_aqua, 1);
    draw_set_halign(fa_left);
    }
}