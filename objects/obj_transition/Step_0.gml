if (fadein == false)
    fadealpha += fade_in_speed;

if (fadein == true)
{
    fadealpha -= fade_out_speed;
    
    if (fadealpha <= 0)
        instance_destroy();
}

if (fadealpha >= 1)
{
    if (fade_wait_time > 0 && !alarm[0])
        alarm[0] = fade_wait_time;
    
    if (room == rm_battle)
    {
        with (obj_radio)
        {
            audio_resume_sound(bgm);
            audio_sound_gain(bgm, 0, 0);
            audio_sound_gain(bgm, 1, 2500);
        }
    }
    
    room_goto(newRoom);
    waiter = 1;
    
    if (instance_exists(obj_pl))
    {
        obj_pl.x = xx;
        obj_pl.y = yy;
        
        if (new_dir != -1)
            obj_pl.direction = new_dir;
    }
    else
    {
        instance_create(xx, yy, obj_pl);
    }
    
    fadein = true;
}
