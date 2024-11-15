if (live_call())
    return global.live_result;

laser_width = 5;
draw_alpha = 0;
dir_speed = 0;
dir_speed_max = 6;
direction = irandom_range(0, 360);
point_x_1 = x;
point_y_1 = y;
point_x_2 = x + lengthdir_x(1200, direction - laser_width);
point_y_2 = y + lengthdir_y(1200, direction - laser_width);
point_x_3 = x + lengthdir_x(1200, direction + laser_width);
point_y_3 = y + lengthdir_y(1200, direction + laser_width);
scene = 0;
alarm[0] = 20;
