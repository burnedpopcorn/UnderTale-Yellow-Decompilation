var random_number, battle_box;

if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("martlet", "void", "void");
image_blend = c_yellow;

if (!instance_exists(obj_feather_fall_final_holder))
    instance_create(0, 0, obj_feather_fall_final_holder);

state = 0;
fall_speed = 10;
x_point = x;
y_point = y;
angle_pos = 270;
angle_pos_default = angle_pos;
angle_pos_max = 15 * fall_speed;
angle_radius = 10;
starting_position_x = x;
starting_position_y = y;
animation_disjoint_x = 0;
animation_disjoint_y = 0;
can_move = true;
explosion_angle = irandom_range(0, 360);
random_number = irandom_range(1, 3);

switch (random_number)
{
    case 1:
        sprite_index = spr_battle_enemy_attack_martlet_feather_1;
        break;
    
    case 2:
        sprite_index = spr_battle_enemy_attack_martlet_feather_2;
        break;
    
    case 3:
        sprite_index = spr_battle_enemy_attack_martlet_feather_3;
        break;
    
    case 4:
        sprite_index = spr_battle_enemy_attack_martlet_feather_4;
        break;
    
    case 5:
        sprite_index = spr_battle_enemy_attack_martlet_feather_5;
        break;
    
    default:
        sprite_index = spr_battle_enemy_attack_martlet_feather_1;
}

image_speed = 0;
image_index = 0;
image_alpha = 0;
battle_box = 3154;

if (x < battle_box.x)
    random_number = 1;
else
    random_number = -1;

sign_modifier = random_number;
time_elapsed = 0;
time_max = 30 + (15 * (fall_speed - 1));
time_increase = 1;
max_rise = 10 * fall_speed * 2;
time_elapsed_increase_fall = round(time_max / 3);
spin_speed = 25;
no_loop_spin = false;
attack_speed = 32;
in_box = false;
x_list = ds_list_create();
y_list = ds_list_create();
angle_list = ds_list_create();
max_points_trail = 10;
trail_sprite = sprite_index;
trail_cc_max = 3;
trail_cc_start = trail_cc_max - 1;
trail_cc_current = trail_cc_start;
bullet_hit_points = 1;
bullet_hit_draw_timer = 0;
bullet_destroy_self = false;
alarm[0] = 30;
