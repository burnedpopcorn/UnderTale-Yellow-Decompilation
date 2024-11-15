if (waiter == 0)
{
    if (image_xscale > 1.6 && image_yscale > 1.6)
    {
        image_xscale -= 0.6;
        image_yscale -= 0.6;
        image_alpha += 0.1;
    }
    else
    {
        image_xscale = 1;
        image_yscale = 1;
        image_alpha = 1;
        image_speed = 0.3;
        audio_play_sound(snd_feisty_mission_fanfare_oopsy, 10, 0);
        instance_create(x, y, obj_wild_east_stamp_particles);
        scr_screenshake(5, 2);
        waiter = 1;
    }
}

if (image_index >= (image_number - 1))
    image_speed = 0;

if (waiter == 1)
    overlay_alpha = image_alpha;
