var target, sound;

if (live_call())
    return global.live_result;

trail_cc_current = trail_cc_start;
target_speed = spin_angle_speed;
x_destination = obj_heart_battle_fighting_parent.x;
y_destination = obj_heart_battle_fighting_parent.y;
angle_destination = point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);
target_direction = 1;
spawner_id.x_store = x_destination;
spawner_id.y_store = y_destination;
spawner_id.angle_store = angle_destination;
global.id_store = id;
target = instance_create_depth(x_destination, y_destination, -100, obj_battle_enemy_attack_martlet_feather_circle_final_target_1_axis);
target.image_angle = angle_destination;
id_target = global.id_store;
state = 2;

switch (sprite_index)
{
    case spr_battle_enemy_attack_martlet_feather_1:
        sound = audio_play_sound(snd_mart_feather_atk3, 20, 0);
        break;
    
    case spr_battle_enemy_attack_martlet_feather_2:
    case spr_battle_enemy_attack_martlet_feather_3:
        sound = audio_play_sound(snd_mart_feather_atk1, 20, 0);
        break;
    
    case spr_battle_enemy_attack_martlet_feather_4:
    case spr_battle_enemy_attack_martlet_feather_5:
        sound = audio_play_sound(snd_mart_feather_atk2, 20, 0);
        break;
    
    default:
        sound = audio_play_sound(snd_mart_feather_atk1, 20, 0);
}

audio_sound_gain(sound, 0.2, 0);
