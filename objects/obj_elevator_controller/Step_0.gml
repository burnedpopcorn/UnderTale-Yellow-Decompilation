var shake = false;

if (scene == 1)
{
    shake = true;
    
    if (shake_int > 0)
        shake_int -= 0.2;
    else if (!alarm[1])
        alarm[1] = 50;
}

if (scene == 2)
{
    if (irandom(60) == 1)
    {
        darkness_alpha = 0.15;
        audio_play_sound(snd_electric_flash, 1, 0);
    }
    else
    {
        darkness_alpha = 0;
    }
    
    shake_int = 1;
    shake = true;
}

if (scene == 3)
{
    shake = true;
    
    if (shake_int > 0)
        shake_int -= 0.2;
    else if (!alarm[3])
        alarm[3] = 50;
}

if (shake)
{
    __view_set(e__VW.XView, 0, 0);
    __view_set(e__VW.YView, 0, 0);
    __view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0) + random_range(-shake_int, shake_int));
    __view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) + random_range(-shake_int * 0.75, shake_int * 0.75));
}
