function scr_talking_guardener()
{
    var voice_pitch, gardener_talknoise;
    
    voice_pitch = 0.25;
    
    if (argument_count > 0)
        voice_pitch = argument[0];
    
    switch (current_char)
    {
        case " ":
        case "*":
            break;
        
        default:
            gardener_talknoise = 111;
            audio_sound_pitch(gardener_talknoise, voice_pitch);
            audio_stop_sound(gardener_talknoise);
            audio_play_sound(gardener_talknoise, 20, false);
    }
    
    switch (current_char)
    {
        case ".":
        case ",":
        case "?":
        case "!":
            break;
        
        default:
            can_talk = true;
    }
}
