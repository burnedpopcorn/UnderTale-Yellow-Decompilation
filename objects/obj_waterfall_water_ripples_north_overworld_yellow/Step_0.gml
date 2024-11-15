var starting_y, target_y, y_offset, crash_prevent;

if (live_call())
    return global.live_result;

starting_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + 2.5 + 20;
target_y = camera_get_view_y(view_camera[0]) - 2.5;

if (y < target_y && wrap_around == true)
{
    y_offset = target_y - y;
    y = starting_y - y_offset;
    crash_prevent = 5;
    
    do
        x = irandom_range(210, 265);
    until (abs(x - obj_water_ripple_controller_waterfall.x_last) > 25);
    
    obj_water_ripple_controller_waterfall.x_last = x;
}

if (can_move == true)
    y -= 1;

image_speed = 0.1;
