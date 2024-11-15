if (fill == 1)
{
    if (image_index < 9)
    {
        image_speed = 0.2;
    }
    else
    {
        instance_destroy(part_drops_puzzle);
        image_speed = 0;
    }
}

if (fill == 2)
{
    if (image_index < 25 && !instance_exists(obj_transition))
    {
        image_speed = 0.2;
    }
    else
    {
        image_speed = 0;
        global.snowdin_flag[12] = 2;
        instance_destroy(part_drops_puzzle);
        
        if (instance_exists(obj_snowdin_19_woodbars))
        {
            if (obj_snowdin_19_woodbars.slide == false)
            {
                obj_snowdin_19_woodbars.slide = true;
                audio_play_sound(snd_slidedoor_open, 1, 0);
            }
        }
    }
}
