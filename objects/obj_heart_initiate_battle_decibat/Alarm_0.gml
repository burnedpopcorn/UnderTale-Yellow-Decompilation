if (image_alpha == 0)
{
    audio_play_sound(snd_soul_battle_flash, 20, false);
    image_alpha = 1;
    flash_count += 1;
}
else
{
    image_alpha = 0;
}

no_loop = false;
