if (keyboard_multicheck_pressed(vk_nokey) && scr_interact() && image_speed == 0)
{
    if (image_speed == 0)
    {
        scr_cutscene_start();
        image_speed = 0.3;
        audio_play_sound(snd_elevator_open, 1, 0);
        exit;
    }
}

if (floor(image_index) <= 0 && image_speed < 0)
{
    image_speed = 0;
    image_index = 0;
    
    if (global.cutscene == true)
        scr_cutscene_end();
}

if (image_index >= (image_number - 1) && image_speed > 0)
{
    image_speed = 0;
    instance_create(obj_pl.x, obj_pl.y, obj_npc_clover_dunes_12);
}
