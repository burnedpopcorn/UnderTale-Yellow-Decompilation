event_inherited();

if (scene == 0)
{
    if (interact)
    {
        drawing_poster = 1;
        scene = 1;
        audio_play_sound(snd_mainmenu_select, 1, 0);
        scr_cutscene_start();
        exit;
    }
}
else if (scene == 1)
{
    if (drawing_poster == 1)
    {
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
            scene = 2;
        }
    }
}
else if (scene == 2)
{
    scene = 0;
    global.cutscene = false;
    
    if (npc_flag == 0 && global.party_member != -4)
    {
        scr_text();
        
        with (msg)
        {
            sndfnt = 102;
            message[0] = "* I can't stand looking#  at that...";
            message[1] = "* It's...";
            message[2] = "* ...Let's just move on.";
            prt[0] = 329;
            prt[1] = 329;
            prt[2] = 317;
        }
        
        npc_flag = 1;
    }
}
