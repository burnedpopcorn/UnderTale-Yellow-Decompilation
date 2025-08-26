if (live_call())
    return global.live_result;

walk_speed = global.speed_self + (1 * sign(global.current_sp_self));

if (room == rm_battle_flowey_phase_2)
    walk_speed += 2;

base_sprite = 1662;
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
var player_character = global.player_character;
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
trail_sprite = 1677;
shoot_delay = 5;
shoot_buffer = 0;
can_shoot = true;
can_charge = true;
turn_angle_target = 90;
turn_state = 0;
charge_percentage = 0;
charge_time = 30;
charge_time_max = 30;
is_charged = false;
is_charging = false;
charge_sound = 0;
charged_shot_type = 1;
blast_is_firing = false;

switch (global.battle_enemy_name)
{
    case "martlet genocide final":
        charged_shot_type = 2;
        break;
    
    default:
        charged_shot_type = 1;
        break;
}

dash_buffered = false;
dash_overlay = 0;
dash_speed = walk_speed * 3;
is_dashing = false;
dash_distance = 4;
dash_timer = dash_distance;
move_x_dash = 0;
move_y_dash = 0;
dash_delay = 4;
dash_delay_max = 4;
dash_grace = 0;
dash_grace_max = 3;
can_dash = true;
can_cancel_dash = true;
draw_sprite_hurt = false;

if (room == rm_battle_flowey_phase_2)
    sprite_index = spr_heart_yellow_down;
