var dist_cam, dist_cam_y;

if (live_call())
    return global.live_result;

parallax_x_multiplier[0] = 0.05;
parallax_x_multiplier[1] = 0.07142857142857142;
parallax_x_multiplier[2] = 0.1;
dist_cam = x - (camera_get_view_x(view_camera[0]) + 160);
parallax_x[0] = x + (dist_cam * parallax_x_multiplier[0]);
parallax_x[1] = x + (dist_cam * parallax_x_multiplier[1]);
parallax_x[2] = x + (dist_cam * parallax_x_multiplier[2]);
parallax_y_multiplier[0] = 0.2;
parallax_y_multiplier[1] = 0.1;
parallax_y_multiplier[2] = 0;
dist_cam_y = y - (camera_get_view_y(view_camera[0]) + 120);
parallax_y[0] = (y - 20) + parallax_y_multiplier[0] + (dist_cam_y * parallax_y_multiplier[0]);
parallax_y[1] = y + (parallax_y_multiplier[1] * 120) + (dist_cam_y * parallax_y_multiplier[1]);
parallax_y[2] = y + (parallax_y_multiplier[2] * 60) + (dist_cam_y * parallax_y_multiplier[2]);
