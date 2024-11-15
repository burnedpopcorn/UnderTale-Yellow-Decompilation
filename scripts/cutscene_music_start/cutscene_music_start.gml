function cutscene_music_start()
{
    if (cutscene_music != 0)
        scr_audio_fade_out(cutscene_music, 150);
    
    cutscene_music = audio_play_sound(argument[0], 20, 1);
    audio_sound_gain(cutscene_music, 1, 0);
    
    if (argument_count > 1)
        audio_sound_gain(obj_radio.current_song, 0, argument[1]);
    
    cutscene_advance();
    return true;
}
