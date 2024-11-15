x_destination = obj_heart_battle_fighting_parent.x;
y_destination = obj_heart_battle_fighting_parent.y;
angle_destination = point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);

if (angle_difference(image_angle, angle_destination) > 0)
    spin_direction = 1;
else
    spin_direction = -1;

obj_battle_enemy_attack_martlet_feather_fall_checker.x_store = x_destination;
obj_battle_enemy_attack_martlet_feather_fall_checker.y_store = y_destination;
obj_battle_enemy_attack_martlet_feather_fall_checker.angle_store = angle_destination;
global.id_store = id;

with (instance_create(x_destination, y_destination, obj_battle_enemy_attack_martlet_feather_fall_target_1_axis))
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
