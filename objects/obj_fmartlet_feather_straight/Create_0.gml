if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("martlet", "void", "void");
state = 0;
image_speed = 0;
image_index = 0;
image_alpha = 0;
target_angle = 180;
speed_charge_max = 3;
attack_speed = 28;
in_box = false;
warning_line_color = 65535;
warning_line_alpha = 0;
can_play_sound = false;
x_list = ds_list_create();
y_list = ds_list_create();
angle_list = ds_list_create();
max_points_trail = 10;
trail_sprite = sprite_index;
trail_cc_max = 3;
trail_cc_start = trail_cc_max - 1;
trail_cc_current = trail_cc_start;
