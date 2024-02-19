var camera = view_get_camera(0)

x = camera_get_view_x(camera)+375;
y = camera_get_view_y(camera)+100;
if (fade_out) {
    alpha -= 0.05;
	room_restart();
}

if (alpha <= 0) {
    instance_destroy();
}