if (live_call())
    return global.live_result;

x_destination = x_target_override;
y_destination = y_target_override;
angle_destination = point_direction(x, y, x_destination, y_destination);

if (angle_difference(image_angle, angle_destination) > 0)
    spin_direction = 1;
else
    spin_direction = -1;

global.id_store = id;

with (instance_create_depth(x_destination, y_destination, -100, obj_martlet_attack_splitting_feather_target_axis))
    geno_target_angle = other.explosion_angle;

id_target = global.id_store;
state = 1;

switch (sprite_index)
{
    case spr_battle_enemy_attack_martlet_feather_1:
        audio_play_sound(snd_mart_feather_atk3, 20, 0);
        break;
    
    case spr_battle_enemy_attack_martlet_feather_2:
    case spr_battle_enemy_attack_martlet_feather_3:
        audio_play_sound(snd_mart_feather_atk1, 20, 0);
        break;
    
    case spr_battle_enemy_attack_martlet_feather_4:
    case spr_battle_enemy_attack_martlet_feather_5:
        audio_play_sound(snd_mart_feather_atk2, 20, 0);
        break;
    
    default:
        audio_play_sound(snd_mart_feather_atk1, 20, 0);
}
