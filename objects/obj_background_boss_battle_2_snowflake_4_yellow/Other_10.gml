var random_number;

fall_speed = irandom_range(1, 1);
x_point = x;
y_point = y;
angle_pos = 270;
angle_pos_default = angle_pos;
angle_pos_max = 15 * fall_speed;
angle_radius = 5;
angle_increase = 6 * fall_speed;
starting_position_x = x;
starting_position_y = y;
animation_disjoint_x = 0;
animation_disjoint_y = 0;
can_move = false;
random_number = irandom_range(1, 4);

switch (random_number)
{
    case 1:
        sprite_index = spr_background_boss_battle_2_snowflake_4_1_yellow;
        break;
    
    case 2:
        sprite_index = spr_background_boss_battle_2_snowflake_4_2_yellow;
        break;
    
    case 3:
        sprite_index = spr_background_boss_battle_2_snowflake_4_3_yellow;
        break;
    
    case 4:
        sprite_index = spr_background_boss_battle_2_snowflake_4_4_yellow;
        break;
    
    default:
        sprite_index = spr_background_boss_battle_2_snowflake_4_1_yellow;
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
max_rise = 5 * fall_speed * irandom_range(1, 2);
