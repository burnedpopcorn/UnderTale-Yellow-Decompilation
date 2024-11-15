if (active == true)
{
    if (x > x_target)
    {
        if (!audio_is_playing(snd_rumble))
            audio_play_sound(snd_rumble, 1, 1);
        
        scr_screenshake(9999, 1);
        x -= 5;
    }
    else
    {
        x = x_target;
        instance_destroy(obj_screenshake_player);
        scr_screenshake(10, 2);
        audio_play_sound(snd_rock_break, 1, 0);
        audio_stop_sound(snd_rumble);
        active = false;
    }
}
