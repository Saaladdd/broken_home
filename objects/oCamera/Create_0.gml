target = main_player;
cameraHeight = 300;
cameraWidth = 400;
cameraScale = 3;


global.camera = camera_create_view(0,0,cameraWidth,cameraHeight);
camera_set_view_target(global.camera,target);
camera_set_view_border(global.camera,cameraWidth,cameraHeight);

view_enabled = true;
view_visible[0] = true;
view_set_camera(0,global.camera);

//Viewport
window_set_size(cameraWidth*cameraScale, cameraHeight*cameraScale);
surface_resize(application_surface, cameraWidth*cameraScale, cameraHeight*cameraScale);

var windowWidth = cameraWidth*cameraScale;
var windowHeight = cameraHeight*cameraScale;
window_set_position(display_get_width()/2-windowWidth/2,display_get_height()/2-windowHeight/2);
