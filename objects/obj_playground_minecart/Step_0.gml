if (keyboard_multicheck_pressed(vk_nokey) && scr_interact() && can_rumble == false)
{
    alarm[0] = 90;
    can_rumble = true;
    image_speed = 0.2;
    audio_play_sound(snd_dunes_28_cart, 1, 0);
}

if (image_speed > 0 && can_rumble == false)
{
    if (on_animation_end())
    {
        image_speed = 0;
        image_index = 0;
    }
}
