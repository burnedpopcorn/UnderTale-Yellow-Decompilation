starting_point_x = x;
starting_point_y = y;
starting_point_xscale = 1;
starting_point_yscale = 1;
draw_position_x = starting_point_x;
draw_position_y = starting_point_y;
draw_position_xscale = starting_point_xscale;
draw_position_yscale = starting_point_yscale;
damage_disjoint_x = 0;
damage_disjoint_y = 0;
damage_disjoint_count = 0;
hurt_sprite = 3192;
no_loop_damage_disjoint_count = false;
no_loop_create_clouds = false;
animating = false;
vanish = false;
vanish_state = 1;
sign_modifier = 1;
time_elapsed = 0;
time_max = 60;
time_increase = 1;
max_rise = 0.025;
max_rise_ext = 0.01;

if (instance_exists(obj_background_feisty_four_yellow))
    depth = obj_background_feisty_four_yellow.depth - 1;

instance_create_depth(x, y - 106, depth - 2, obj_feisty_four_ace_head);
instance_create_depth(x + 18, y - 96, depth - 1, obj_feisty_four_ace_arm);
head_displacement_y_multiplier = (obj_feisty_four_ace_head.y - bbox_top) / sprite_height;
time_elapsed_decrease_head = 4;
hand_displacement_y_multiplier = (obj_feisty_four_ace_arm.y - bbox_top) / sprite_height;
time_elapsed_decrease_hand = 0;
