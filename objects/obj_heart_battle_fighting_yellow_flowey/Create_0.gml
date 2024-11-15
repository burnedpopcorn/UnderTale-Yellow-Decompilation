var player_character;

walk_speed = global.speed_self + (1 * sign(global.current_sp_self));
image_speed = 0;
image_index = 0;
vulnerable = true;
moveable = false;
hsp_factor = 0;
vsp_factor = 0;
x_previous = x;
y_previous = y;
last_move_x = 0;
last_move_y = 0;
move_x_count = 0;
move_y_count = 0;
idle_x_count = 0;
idle_y_count = 0;
max_move_counter = 100;
last_hsp = 0;
last_vsp = 0;
move_hsp_count = 0;
move_vsp_count = 0;
idle_hsp_count = 0;
idle_vsp_count = 0;
max_speed_counter = 100;
player_character = global.player_character;

switch (player_character)
{
    case "CLOVER":
        sprite_index = spr_heart_yellow_down;
        break;
}

instance_create(x, y, obj_heart_red_hitbox);

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
shoot_delay = 10;
can_shoot = true;
