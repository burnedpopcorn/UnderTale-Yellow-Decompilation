var random_number;

damage_number = scr_determine_damage_number_enemy("martlet", "void", "void");
state = 0;
fly_speed = irandom_range(3, 5);
x_point = x;
y_point = y;

if (y < 320)
    angle = 270;
else
    angle = 90;

angle_movement = choose(-1, 1);
angle_max = angle + 45;
angle_min = angle - 45;
angle_sway = 3;
feather_explode_counter = 0;
feather_explode_timer = 10;
can_move = false;
fade_out = false;

if (!instance_exists(obj_martlet_body))
{
    random_number = irandom_range(1, 3);
    alarm[1] = 45 * (3 / fly_speed);
}
else
{
    random_number = irandom_range(1, 5);
}

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
image_angle = angle;
alarm[0] = 90 * (3 / fly_speed);
