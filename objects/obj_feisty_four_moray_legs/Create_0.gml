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
hurt_sprite = 1739;
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

instance_create_depth(x, y - 154, depth - 2, obj_feisty_four_moray_head);
instance_create_depth(x - 38, y - 124, depth - 1, obj_feisty_four_moray_hand_left);
instance_create_depth(x + 14, y - 124, depth + 1, obj_feisty_four_moray_hand_right);
head_displacement_y_multiplier = (obj_feisty_four_moray_head.y - bbox_top) / sprite_height;
time_elapsed_decrease_head = 4;
hand_left_displacement_y_multiplier = (obj_feisty_four_moray_hand_left.y - bbox_top) / sprite_height;
time_elapsed_decrease_hand_left = 0;
hand_right_displacement_y_multiplier = (obj_feisty_four_moray_hand_right.y - bbox_top) / sprite_height;
time_elapsed_decrease_hand_right = 0;
