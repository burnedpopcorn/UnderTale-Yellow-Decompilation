if (live_call())
    return global.live_result;

sprite_index = sprite_index_og;
image_alpha = 1;
image_speed = 1;
audio_play_sound(snd_ceroba_bullet_rise, 1, 0);
