if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
{
    drawing_poster = 1;
    audio_play_sound(snd_mainmenu_select, 1, 0);
    scr_cutscene_start();
    exit;
}

if (drawing_poster == 1)
{
    if (draw_alpha < 1)
        draw_alpha += 0.2;
    
    if (keyboard_multicheck_pressed(vk_nokey) || keyboard_multicheck_pressed(vk_anykey))
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
