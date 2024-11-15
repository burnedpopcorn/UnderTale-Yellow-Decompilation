var player_character;

image_speed = 0;
image_index = 0;
vulnerable = true;
moveable = false;
x_previous = x;
created_selection = false;
buffer_current = 0;
buffer_max = 2;
box = 3154;
pos_y = box.bbox_top + 202;
pos_x_left = box.bbox_left + 29;
pos_x_center = box.bbox_left + 79;
pos_x_right = box.bbox_left + 129;
pos_x_previous = pos_x_center;
grace_period_duration = 5;
last_move_x = 0;
move_x_count = 0;
idle_x_count = 0;
max_move_counter = 100;
player_character = global.player_character;

switch (player_character)
{
    default:
        sprite_index = spr_heart_yellow_down;
}

instance_create(x, y, obj_heart_yellow_rhythm_hitbox);

if (global.current_pp_self > 0)
    instance_create(x, y, obj_heart_battle_effect_glow);

event_user(0);
x_list = ds_list_create();
y_list = ds_list_create();
max_points_trail = 5;
trail_cc_max = 3;
trail_cc_start = trail_cc_max - 1;
trail_cc_current = trail_cc_start;
trail_sprite = spr_heart_white;
