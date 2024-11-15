if (keyboard_multicheck_pressed(0) && scr_interact())
{
    drawing_poster = 1;
    audio_play_sound(snd_mainmenu_select, 1, 0);
    scr_text();
    
    with (msg)
    {
        if (global.route == 3)
        {
            message[0] = "* (Some blueprints...)";
        }
        else
        {
            message[0] = "* (Rolled-up blueprints lie in#  the box.)    ";
            message[1] = "* (You take a look.)";
        }
    }
    
    scr_cutscene_start();
    exit;
}

if (drawing_poster == 1)
{
    if (global.dialogue_open)
        exit;
    
    if (draw_alpha < 1)
        draw_alpha += 0.2;
    
    if (keyboard_multicheck_pressed(0) || keyboard_multicheck_pressed(1))
    {
        drawing_poster = 2;
        audio_play_sound(snd_fail, 1, 0);
        scr_cutscene_end();
    }
}

if (drawing_poster == 2)
{
    if (draw_alpha > 0)
    {
        draw_alpha -= 0.2;
    }
    else
    {
        drawing_poster = 0;
        scr_cutscene_end();
    }
}
