starting_point_x = x;
starting_point_y = y;
draw_position_x = starting_point_x;
draw_position_y = starting_point_y;
y_increase = 1;
fade_direction = "in";
alarm[0] = 30;
image_alpha = 0;
image_alpha_factor = 0;

if (obj_insomnitot_body_a.sprite_index == spr_insomnitot_body_critical)
    sprite_index = spr_insomnitot_bubble_critical;

sign_modifier = -1;
time_elapsed = 0;
time_max = 30;
time_increase = 1;
max_rise = 10;
