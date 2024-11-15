if (live_call())
    return global.live_result;

instance_destroy();

if (play_sound)
    audio_play_sound(snd_undertale_spearrise, 1, 0);

instance_create(x, y, obj_flowey_battle_ow_vine);
