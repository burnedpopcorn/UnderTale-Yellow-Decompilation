var sound;

if (live_call())
    return global.live_result;

state = 1;
spin_default_x = x;
spin_default_y = y;
spin_direction = angle_position_current;

switch (sprite_index)
{
    case spr_battle_enemy_attack_martlet_feather_1:
    case spr_battle_enemy_attack_martlet_feather_2:
    case spr_battle_enemy_attack_martlet_feather_3:
        sound = audio_play_sound(snd_mart_spiral_attack_2, 20, 0);
        break;
    
    case spr_battle_enemy_attack_martlet_feather_4:
    case spr_battle_enemy_attack_martlet_feather_5:
        sound = audio_play_sound(snd_mart_spiral_attack_1, 20, 0);
        break;
    
    default:
        sound = audio_play_sound(snd_mart_spiral_attack_1, 20, 0);
}

audio_sound_gain(sound, 0.2, 0);
