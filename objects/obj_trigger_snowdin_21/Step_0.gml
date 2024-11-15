if (active == true)
{
    if (scr_camera_move(220, 180, 2))
    {
        with (obj_martlet_snowdin_21)
        {
            image_speed = 0.2;
            scr_audio_fade_out(obj_radio.current_song, 500);
        }
        
        instance_destroy();
    }
}
