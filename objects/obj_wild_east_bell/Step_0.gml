if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
{
    if (waiter == 0)
    {
        waiter = 1;
        image_speed = 1/3;
        alarm[0] = 60;
        audio_play_sound(snd_wild_east_bell, 1, 0);
    }
}
