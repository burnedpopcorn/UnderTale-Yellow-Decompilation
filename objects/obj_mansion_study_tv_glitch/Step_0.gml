if (obj_pl.y < 210)
{
    if (effect_counter > 0)
    {
        effect_counter--;
    }
    else if (image_alpha == 0)
    {
        image_alpha = 1;
        image_speed = 1;
        audio_play_sound(snd_mansion_tv_glitch, 1, 0);
    }
}
