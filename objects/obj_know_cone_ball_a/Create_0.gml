starting_point_x = x;
starting_point_y = y;
draw_position_x = starting_point_x;
draw_position_y = starting_point_y;
damage_disjoint_x = 0;
damage_disjoint_y = 0;
damage_disjoint_count = 0;
no_loop_damage_disjoint_count = false;
image_speed = 0;
image_index = 0;

with (obj_know_cone_body_a)
{
    ball_displacement_y_value = y - obj_know_cone_ball_a.y;
    time_elapsed_decrease_ball = 10;
}
