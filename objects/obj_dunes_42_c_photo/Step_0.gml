if (scene == 0)
{
    if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
    {
        drawing_poster = 1;
        scene = 1;
        scr_cutscene_start();
        scr_text();
        
        with (msg)
        {
            if (global.route == 3)
                message[0] = "* (A picture of two monsters#  you've met.)";
            else
                message[0] = "* (A picture of Starlo and#  Ceroba as teenagers.)";
        }
        
        exit;
    }
}
else if (scene == 1)
{
    if (instance_exists(obj_dialogue))
        exit;
    
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
            scene = 0;
            global.cutscene = false;
        }
    }
}
