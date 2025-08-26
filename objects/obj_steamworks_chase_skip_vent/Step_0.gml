if (live_call())
    return global.live_result;

visible = true;

if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
{
    scr_cutscene_start();
    scene = 0;
}

if (scene == 0)
{
    scr_text();
    
    with (msg)
    {
        message[0] = "* (Crawl through the vent?)";
        ch[1] = "Yes";
        ch[2] = "No";
        ch_msg = 0;
        
        if (outcome == 1)
            other.scene += 1;
        
        if (outcome == 2)
        {
            scr_cutscene_end();
            other.scene = -1;
        }
    }
}

if (scene == 1)
{
    if (global.dialogue_open)
        exit;
    
    scene = 2;
    scr_audio_fade_out(obj_radio.current_song, 500);
}

if (scene == 2)
    cutscene_wait(0.5);

if (scene == 3)
{
    if (draw_alpha < 1)
    {
        show_debug_message(draw_alpha);
        draw_alpha += 0.1;
    }
    else
    {
        cutscene_advance();
    }
}

if (scene == 4)
{
    scr_change_room(room_target, x_target, y_target);
    instance_create(0, 0, obj_controller_steamworks_20_vent);
}
