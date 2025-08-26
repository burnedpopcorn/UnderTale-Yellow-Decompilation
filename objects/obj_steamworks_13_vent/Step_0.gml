if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
{
    if (global.sworks_flag[3] < 2 && global.route == 2)
    {
        scr_text();
        
        with (msg)
            message[0] = "* (The vent has a few loose#  screws.)";
    }
    else
    {
        global.cutscene = true;
        scene = 1;
        scr_cutscene_start();
        scr_text();
        
        with (msg)
        {
            message[0] = "* (The vent has a few loose#  screws.)";
            message[1] = "* (You finagle it open.)";
        }
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
    scr_change_room(162, 220, 120);
