var cam_x, cam_max, cam_percentage;

if (live_call())
    return global.live_result;

cam_x = camera_get_view_x(view_camera[0]);
cam_max = 1660;
cam_percentage = cam_x / cam_max;
layer_x(fg_layer_id, cam_percentage * -1660);
depth = -239;
