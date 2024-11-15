script_execute(scr_depth);

if (image_index >= 16 && image_speed > 0)
{
    image_speed = 0;
    image_index = 17;
}

if (floor(image_index) == 10)
{
    image_speed = 0;
    
    if (!alarm[0])
        alarm[0] = 10;
}

if (floor(image_index) == 11)
{
    if (!audio_is_playing(snd_groundbreak))
        audio_play_sound(snd_groundbreak, 1, 0);
    
    shake = true;
    alarm[1] = 1;
    alarm[2] = 25;
}
