if (!instance_exists(obj_pl))
    exit;

if (global.flag[4] == true && image_index == 0)
    swit = true;

if (keyboard_multicheck_pressed(vk_nokey))
{
    if (scr_interact() == true)
    {
        if (swit == false)
        {
            swit = true;
            audio_play_sound(snd_switch, 1, 0);
            global.flag[4] = true;
        }
    }
}

if (swit == true)
    image_index = 1;

if (swit == false)
    image_index = 0;

if (image_index == 1)
{
    with (obj_spikes)
        image_index = 1;
}
else if (image_index == 0)
{
    with (obj_spikes)
        image_index = 0;
}
