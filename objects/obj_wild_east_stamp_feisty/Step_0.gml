if (waiter == 0)
{
    if (overlay_alpha < 1)
    {
        overlay_alpha += 0.1;
    }
    else
    {
        image_alpha = 1;
        image_speed = 1/3;
        audio_play_sound(snd_feisty_title_card, 1, 0);
        waiter = 1;
    }
}

if (waiter == 1)
{
    if (image_index >= (image_number - 1))
    {
        image_speed = 0;
        
        if (!alarm[0])
            alarm[0] = 75;
    }
}

if (waiter == 2)
{
    if (image_alpha > 0)
        image_alpha -= 0.1;
    else
        instance_destroy();
    
    overlay_alpha = image_alpha;
}
