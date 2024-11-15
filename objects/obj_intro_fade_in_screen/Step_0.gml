if (image_alpha < 1)
{
    image_alpha += fade_speed;
    
    if (image_alpha == 1)
    {
        audio_stop_sound(mus_intro);
        alarm[0] = 5;
    }
}
