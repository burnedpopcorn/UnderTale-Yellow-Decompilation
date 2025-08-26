function scr_music_sudden_stop(arg0, arg1, arg2)
{
    with (instance_create(0, 0, obj_audio_sudden_stop_helper))
    {
        audio_to_fade = arg0;
        fade_strength = arg1 / 100;
        audio_stop = arg2;
        
        if (audio_stop == false)
            audio_resume_sound(arg0);
    }
}
