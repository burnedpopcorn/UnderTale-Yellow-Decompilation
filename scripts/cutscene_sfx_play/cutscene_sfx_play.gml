function cutscene_sfx_play(argument0, argument1)
{
    if (!audio_is_playing(argument0))
    {
        audio_play_sound(argument0, 1, 0);
        audio_sound_gain(argument0, argument1, 0);
    }
    
    cutscene_advance();
    return true;
}
