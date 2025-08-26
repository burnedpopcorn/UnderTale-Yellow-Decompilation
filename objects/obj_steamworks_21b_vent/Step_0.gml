if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
{
    if (switch_no_crawl == false)
    {
        global.cutscene = true;
        scene = 1;
    }
    else
    {
        obj_pl.state = scr_frozen_state;
        scene = 5;
    }
}

if (scene == 1)
{
    if (global.dialogue_open)
        exit;
    
    if (image_speed == 0)
    {
        audio_play_sound(snd_steamworks_13_vent, 20, 0);
        image_speed = 1/3;
    }
    
    if (image_index >= (image_number - 1))
    {
        image_speed = 0;
        image_index = image_number - 1;
        scene = 2;
        scr_audio_fade_out(obj_radio.current_song, 500);
    }
}

if (scene == 2)
    cutscene_wait(0.5);

if (scene == 3)
{
    if (draw_alpha < 1)
        draw_alpha += 0.1;
    else
        cutscene_advance();
}

if (scene == 4)
{
    scr_change_room(170, 100, 150);
    instance_create(0, 0, obj_controller_steamworks_20_vent);
}

if (scene == 5)
    cutscene_change_room(rm_steamworks_20, 100, 150, 0.1);
