if (live_call())
    return global.live_result;

if (!instance_exists(obj_pl))
    exit;

if (point_in_rectangle(obj_pl.x, obj_pl.y, x_min[0], y_min[0], x_max[0], y_max[0]))
    current_area = 0;
else if (point_in_rectangle(obj_pl.x, obj_pl.y, x_min[1], y_min[1], x_max[1], y_max[1]))
    current_area = 1;
else if (point_in_rectangle(obj_pl.x, obj_pl.y, x_min[2], y_min[2], x_max[2], y_max[2]))
    current_area = 2;
else if (point_in_rectangle(obj_pl.x, obj_pl.y, x_min[3], y_min[3], x_max[3], y_max[3]))
    current_area = 3;
else if (point_in_rectangle(obj_pl.x, obj_pl.y, x_min[4], y_min[4], x_max[4], y_max[4]))
    current_area = 4;
else if (point_in_rectangle(obj_pl.x, obj_pl.y, x_min[5], y_min[5], x_max[5], y_max[5]))
    current_area = 5;

var cam_x = (obj_pl.x - cam_width_half) + x_offset;
var cam_y = (obj_pl.y + 30) - cam_height_half;
var cam_x_min = x_min[current_area] - 60;
var cam_y_min = y_min[current_area] - 35;
var cam_x_max = x_max[current_area] - 120 - 160;
var cam_y_max = y_max[current_area] + 95;

if (current_area == 0)
{
    cam_x_min = x_min[current_area];
    cam_y_min = y_min[current_area];
    cam_x_max = x_max[current_area];
    cam_y_max = y_max[current_area];
}
else if (current_area == 1)
{
    camera_set_view_pos(view_camera[0], 320, 0);
    exit;
}

camera_set_view_pos(view_camera[0], clamp(cam_x, cam_x_min, cam_x_max), clamp(cam_y, cam_y_min, cam_y_max));
