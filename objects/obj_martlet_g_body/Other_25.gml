fight_mode = true;
starting_point_x = x;
starting_point_y = y;
starting_point_xscale = 1;
starting_point_yscale = 1;
draw_position_x = starting_point_x;
draw_position_y = starting_point_y;
draw_position_xscale = starting_point_xscale;
draw_position_yscale = starting_point_yscale;
sprite_index = spr_martlet_g_body;
image_speed = 0;
image_index = 0;
image_xscale = 1;
image_yscale = 1;
global.enemy_target_x = obj_martlet_g_body.x - 10;
sign_modifier_g = 1;
time_elapsed_g = 0;
time_max_g = 20;
time_increase_g = 1;
max_rise_g = 0.025;
max_rise_ext_g = 0.01;
head_displacement_y_multiplier_g = 2 / sprite_height;
time_elapsed_decrease_head_g = 2;
hand_left_displacement_y_multiplier_g = 20 / sprite_height;
time_elapsed_decrease_hand_left_g = 0;
hand_right_displacement_y_multiplier_g = 20 / sprite_height;
time_elapsed_decrease_hand_right_g = 0;

with (obj_martlet_g_head)
{
    x = obj_martlet_g_body.x - 10;
    y = obj_martlet_g_body.y - 132;
    starting_point_x = x;
    starting_point_y = y;
    starting_point_xscale = 1;
    starting_point_yscale = 1;
    draw_position_x = starting_point_x;
    draw_position_y = starting_point_y;
    draw_position_xscale = starting_point_xscale;
    draw_position_yscale = starting_point_yscale;
    sprite_index = spr_martlet_head_angry;
    image_speed = 0;
    image_index = 0;
    image_xscale = 1;
    image_yscale = 1;
    head_sprite = spr_martlet_head_angry;
}

with (obj_martlet_g_hand_left)
{
    x = obj_martlet_g_body.x - 36;
    y = obj_martlet_g_body.y - 114;
    starting_point_x = x;
    starting_point_y = y;
    starting_point_xscale = 1;
    starting_point_yscale = 1;
    draw_position_x = starting_point_x;
    draw_position_y = starting_point_y;
    draw_position_xscale = starting_point_xscale;
    draw_position_yscale = starting_point_yscale;
    sprite_index = spr_martlet_g_hand_left;
    image_speed = 0;
    image_index = 0;
    image_xscale = 1;
    image_yscale = 1;
    hand_left_sprite = spr_martlet_g_hand_left;
}

with (obj_martlet_g_hand_right)
{
    x = obj_martlet_g_body.x + 14;
    y = obj_martlet_g_body.y - 114;
    starting_point_x = x;
    starting_point_y = y;
    starting_point_xscale = 1;
    starting_point_yscale = 1;
    draw_position_x = starting_point_x;
    draw_position_y = starting_point_y;
    draw_position_xscale = starting_point_xscale;
    draw_position_yscale = starting_point_yscale;
    sprite_index = spr_martlet_g_hand_right;
    image_speed = 0;
    image_index = 0;
    image_xscale = 1;
    image_yscale = 1;
    hand_left_sprite = spr_martlet_g_hand_right;
}
