var fcreate_x = x_center + (feather_angle_radius * cos(degtorad(feather_angle_master)));
var fcreate_y = y_center - (feather_angle_radius * sin(degtorad(feather_angle_master)));
instance_create(fcreate_x, fcreate_y, obj_battle_enemy_attack_martlet_ff_1_feather);
id_feather[feather_count] = global.id_store;

with (id_feather[feather_count])
{
    sprite_index = obj_battle_enemy_attack_martlet_ff_1_checker.feather_sprite;
    image_index = 0;
    image_speed = 0;
    image_alpha = 0;
    image_angle = obj_battle_enemy_attack_martlet_ff_1_checker.feather_angle_master;
    trail_sprite = sprite_index;
    spin_default_x = x;
    spin_default_y = y;
    spin_direction = obj_battle_enemy_attack_martlet_ff_1_checker.feather_angle_master;
    
    switch (sprite_index)
    {
        case spr_battle_enemy_attack_martlet_feather_1:
        case spr_battle_enemy_attack_martlet_feather_2:
        case spr_battle_enemy_attack_martlet_feather_3:
            audio_play_sound(snd_mart_spiral_attack_2, 20, 0);
            break;
        
        case spr_battle_enemy_attack_martlet_feather_4:
        case spr_battle_enemy_attack_martlet_feather_5:
            audio_play_sound(snd_mart_spiral_attack_1, 20, 0);
            break;
        
        default:
            audio_play_sound(snd_mart_spiral_attack_1, 20, 0);
    }
}

feather_angle_master += feather_angle_speed;

if (feather_angle_master >= 360)
    feather_angle_master -= 360;
else if (feather_angle_master < 0)
    feather_angle_master += 360;

feather_angle_total += abs(feather_angle_speed);
feather_count += 1;

if (feather_angle_total < feather_angle_total_max)
    alarm[0] = 8;
