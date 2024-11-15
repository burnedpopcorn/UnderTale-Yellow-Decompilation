game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
animation_disjoint_x = sign_modifier * (max_rise - round(game_maker_cannot_do_math));
time_elapsed += time_increase;

if (time_elapsed >= time_max)
{
    time_elapsed = 0;
    sign_modifier = -sign_modifier;
}

x_point = starting_position_x + animation_disjoint_x;
animation_disjoint_y += fall_speed;
y_point = round(starting_position_y + animation_disjoint_y);
position_factor = (x_point - starting_position_x) / max_rise;
angle_pos = angle_pos_default + (angle_pos_max * position_factor);
x = x_point + (angle_radius * cos(angle_pos * 0.008726646259971648));
y = y_point - (angle_radius * sin(angle_pos * 0.008726646259971648));
image_angle += (angle_increase * position_factor);

if (bbox_top > __view_get(e__VW.HView, 0))
    instance_destroy();
