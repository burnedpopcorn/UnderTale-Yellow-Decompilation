if (live_call())
    return global.live_result;

position = 0;
position_max = 7;

if (!audio_is_playing(mus_menu_options))
    audio_play_sound(mus_menu_options, 20, 1);
