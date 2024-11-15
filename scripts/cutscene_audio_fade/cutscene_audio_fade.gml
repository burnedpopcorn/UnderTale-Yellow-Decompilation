function cutscene_audio_fade()
{
    audio_sound_gain(argument[0], argument[1], argument[2]);
    
    if (argument[4] == false)
    {
        if (audio_sound_get_gain(argument[0]) <= argument[3])
        {
            cutscene_advance();
            
            if (argument_count > 5 && argument[5] == true)
                audio_stop_sound(argument[0]);
            
            return true;
        }
    }
    else if (audio_sound_get_gain(argument[0]) >= argument[3])
    {
        cutscene_advance();
        
        if (argument_count > 5 && argument[5] == true)
            audio_stop_sound(argument[0]);
        
        return true;
    }
    
    return false;
}
