function cutscene_sfx_play(arg0, arg1)
{
    if (!audio_is_playing(arg0))
    {
        audio_play_sound(arg0, 1, 0);
        audio_sound_gain(arg0, arg1, 0);
    }
    
    cutscene_advance();
    return true;
}
