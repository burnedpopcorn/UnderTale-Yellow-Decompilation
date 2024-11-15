if (image_alpha == 0)
{
    if (!audio_is_playing(snd_bullet_warning))
        audio_play_sound(snd_bullet_warning, 1, 0);
    
    image_alpha = 1;
    flash_count -= 1;
}
else
{
    image_alpha = 0;
    
    if (flash_count <= 0)
        instance_destroy();
}

alarm[0] = 15;
