if (waiter == 0)
{
    if (image_xscale > 1.4)
    {
        image_xscale -= 0.4;
        image_yscale -= 0.4;
        image_alpha += 0.1;
    }
    else
    {
        image_xscale = 1;
        image_yscale = 1;
        image_alpha = 1;
        alarm[0] = animation_delay;
        audio_play_sound(event_sound, 10, 0);
        instance_create(x, y, obj_wild_east_stamp_particles);
        scr_screenshake(shake_intensity, 2);
        waiter = 1;
    }
}

if (image_index >= (image_number - 1))
    image_speed = 0;

if (waiter == 1)
    overlay_alpha = image_alpha;

if (fade_timer > 0)
    fade_timer -= 1;
else if (image_alpha > 0)
    image_alpha -= 0.1;
