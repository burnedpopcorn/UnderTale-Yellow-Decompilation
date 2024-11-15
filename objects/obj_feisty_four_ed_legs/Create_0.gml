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
hurt_sprite = spr_feisty_four_ed_hurt;
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

instance_create_depth(x - 42, y - 114, depth - 3, obj_feisty_four_ed_head);
instance_create_depth(x, y - 122, depth - 1, obj_feisty_four_ed_body);
instance_create_depth(x - 92, y - 122, depth + 1, obj_feisty_four_ed_hand_left);
instance_create_depth(x + 52, y - 148, depth - 2, obj_feisty_four_ed_hand_right);
head_displacement_y_multiplier = (obj_feisty_four_ed_head.y - bbox_top) / sprite_height;
time_elapsed_decrease_head = 4;
body_displacement_y_multiplier = (obj_feisty_four_ed_body.y - bbox_top) / sprite_height;
time_elapsed_decrease_body = 0;
hand_left_displacement_y_multiplier = (obj_feisty_four_ed_hand_left.y - bbox_top) / sprite_height;
time_elapsed_decrease_hand_left = 0;
hand_right_displacement_y_multiplier = (obj_feisty_four_ed_hand_right.y - bbox_top) / sprite_height;
time_elapsed_decrease_hand_right = 0;
