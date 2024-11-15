if (image_index == 0)
{
    audio_play_sound(snd_electric_flash, 1, 0);
    image_index = 1;
    flash_count -= 1;
}
else
{
    image_index = 0;
}

if (flash_count > 0)
    alarm[0] = 4;
