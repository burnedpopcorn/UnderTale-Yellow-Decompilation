if (live_call())
    return global.live_result;

var shot = instance_create_depth(x + 5, y, depth + 1, obj_battle_space_frog_bullet);
shot.hspeed = 10;
audio_play_sound(snd_yellow_soul_shoot, 1, 0);
