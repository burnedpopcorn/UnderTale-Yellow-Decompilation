if (live_call())
    return global.live_result;

scr_screenshake_battle(3, 1);
audio_play_sound(snd_undertale_explosion, 1, 0);
instance_create_depth(x, y, -100, obj_battle_enemy_attack_axis_beams);
