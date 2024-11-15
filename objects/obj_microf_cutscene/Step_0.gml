if (global.flag[18] == 2)
{
    global.cutscene = false;
    instance_destroy();
    exit;
}

if (global.flag[18] == 0)
{
    if (obj_pl.x >= 200 && waiter == 0)
    {
        audio_play_sound(snd_tinyfroggit, 1, 0);
        audio_sound_pitch(snd_tinyfroggit, 1.5);
        global.cutscene = true;
        obj_pl.image_speed = 0;
        obj_pl.image_index = 0;
        waiter = 1;
        alarm[0] = 30;
    }
    
    if (obj_pl.x >= 450 && waiter == 1)
    {
        obj_pl.image_speed = 0;
        obj_pl.image_index = 0;
        global.cutscene = true;
        audio_play_sound(snd_tinyfroggit, 1, 0);
        audio_sound_gain(snd_tinyfroggit, 2, 0);
        audio_sound_pitch(snd_tinyfroggit, 1.5);
        waiter = 2;
    }
    
    if (waiter > 1 && waiter < 100)
        waiter++;
    
    if (waiter == 45)
        obj_pl.direction = 180;
    
    if (waiter == 100)
    {
        obj_darkness.fadeout = true;
        instance_create(300, obj_pl.y + 10, obj_mfnpc);
        waiter = 101;
    }
}

if (global.flag[18] == 1)
{
    obj_pl.direction = 0;
    
    if (!instance_exists(obj_mfnpc))
        instance_create(550, 175, obj_mfnpc);
}
