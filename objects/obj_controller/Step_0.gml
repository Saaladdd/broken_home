//code to check and toggle pause menu if escape is pressed

if (keyboard_check_pressed(vk_escape)) {
    global.paused = !global.paused;

    if (global.paused) {
        instance_deactivate_all(true);
        instance_activate_object(obj_controller);
        instance_create_layer(0, 0, "GUI", obj_pause_menu);
    } else {
        instance_activate_all();
        if (instance_exists(obj_pause_menu)) {
            instance_destroy(obj_pause_menu);
        }
    }
}