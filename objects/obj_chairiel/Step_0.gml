if (is_reading == false)
{
    if (pause_time > 0)
    {
        pause_time--;
    }
    else
    {
        pause_time = pause_time_max;
        image_speed = 1;
        is_reading = true;
    }
}
else if (reading_time > 0)
{
    reading_time--;
}
else
{
    reading_time = irandom_range(30, 120);
    is_reading = false;
    image_speed = 0;
    image_index = 0;
}

if (floor(image_index) == 1 && talk_noloop == false && can_talk == true)
{
    var talk_noise = audio_play_sound(sndfnt_toriel, 1, 0);
    audio_sound_gain(talk_noise, 0.2, 0);
    talk_noloop = true;
}

if (floor(image_index) == 0)
    talk_noloop = false;
