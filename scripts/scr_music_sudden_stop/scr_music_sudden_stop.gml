function scr_music_sudden_stop(argument0, argument1, argument2)
{
    with (instance_create(0, 0, obj_audio_sudden_stop_helper))
    {
        audio_to_fade = argument0;
        fade_strength = argument1 / 100;
        audio_stop = argument2;
        
        if (audio_stop == false)
            audio_resume_sound(argument0);
    }
}
