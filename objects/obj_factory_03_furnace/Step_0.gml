if (state == 1 && image_speed == 0)
{
    if (!alarm[0])
    {
        alarm[0] = active_timer;
        audio_play_sound(snd_fire_ignite, 1, 0);
        fire_loop = audio_play_sound(snd_fire_loop, 1, 1);
        image_speed = 1;
    }
    
    if (child_light == -4)
        child_light = instance_create_depth(x + 52, y - 6, depth - 1, obj_factory_03_furnace_light);
}

if (state == 2)
{
    if (image_index <= 0)
    {
        image_index = 0;
        image_speed = 0;
        state = 0;
    }
}

if (state == 1)
{
    if (text_alpha < 0.8)
        text_alpha += 0.05;
}
else if (text_alpha > 0)
{
    text_alpha -= 0.05;
}
