with (obj_martlet_g_body)
{
    id_martlet_fight_mode = -4;
    scr_audio_stop_sound(0);
    audio_sound_gain(mus_apprehension_yellow, 1, 0);
    audio_sound_pitch(mus_apprehension_yellow, 1);
    audio_play_sound(mus_apprehension_yellow, 20, true);
    event_user(15);
}
