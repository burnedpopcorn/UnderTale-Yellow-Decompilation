switch (room)
{
    case rm_dunes_18:
        if (instance_exists(obj_transition))
        {
            scr_audio_fade_out(dynamic_song, 600);
            audio_sound_gain(current_song, 1, 400);
        }
        
        break;
}
