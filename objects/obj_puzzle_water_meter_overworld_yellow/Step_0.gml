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
    if (image_index < 25)
    {
        image_speed = 0.2;
    }
    else
    {
        image_speed = 0;
        
        if (instance_exists(obj_snowdin06_woodbars))
        {
            if (obj_snowdin06_woodbars.slide == false)
            {
                obj_snowdin06_woodbars.slide = true;
                audio_play_sound(snd_slidedoor_open, 1, 0);
            }
        }
    }
}
