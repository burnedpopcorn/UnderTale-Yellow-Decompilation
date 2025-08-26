if (scr_interact() && obj_pl.direction == 90 && keyboard_multicheck_pressed(vk_nokey) && !global.cutscene)
{
    scr_cutscene_start();
    audio_play_sound(snd_paperfall, 1, 0);
    audio_play_sound(snd_bloop, 1, 0);
    
    if (image_index == 0)
    {
        obj_shadow_collider.y = 0;
        image_speed = 1;
    }
    else if (image_index == (image_number - 1))
    {
        obj_shadow_collider.y = -1000;
        image_speed = -1;
    }
}

if ((image_speed == 1 && image_index >= (image_number - 1)) || (image_speed == -1 && image_index <= 0))
{
    image_speed = 0;
    image_index = round(image_index);
    scr_cutscene_end();
}
