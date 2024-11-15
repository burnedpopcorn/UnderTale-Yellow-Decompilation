var random_number;

if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("martlet", "void", "void");
state = 0;
alarm[0] = 1;
fall_speed = irandom_range(3, 5);
x_point = x;
y_point = y;
starting_position_x = x;
starting_position_y = y;
animation_disjoint_x = 0;
animation_disjoint_y = 0;
can_move = false;
explosion_angle = 0;
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
random_number = irandom_range(0, 1);

if (random_number == 0)
    random_number = -1;

sign_modifier = random_number;
time_elapsed = 0;
time_max = 30 + (15 * (fall_speed - 1));
time_increase = 1;
max_rise = 10 * fall_speed * irandom_range(1, 2);
time_elapsed_increase_fall = round(time_max / 3);
spin_speed = 25;
no_loop_spin = false;
attack_speed = 10;
in_box = false;
x_list = ds_list_create();
y_list = ds_list_create();
angle_list = ds_list_create();
max_points_trail = 10;
trail_sprite = sprite_index;
trail_cc_max = 3;
trail_cc_start = trail_cc_max - 1;
trail_cc_current = -1;
feather_targetted = true;
feather_create_count = 7;
