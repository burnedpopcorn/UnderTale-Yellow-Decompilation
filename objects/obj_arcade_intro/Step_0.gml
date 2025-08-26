if (arc_controls_open == true)
{
    if (keyboard_multicheck_pressed(vk_nokey) || keyboard_multicheck_pressed(vk_anykey))
    {
        arc_controls_open = false;
        audio_play_sound(snd_arc_menu_select, 1, 0);
    }
    
    exit;
}

if (overlay_alpha > 0)
    overlay_alpha -= 0.1;

if (end_game)
{
    if (!audio_is_playing(snd_mew_seeya) && !instance_exists(obj_transition))
    {
        global.cutscene = false;
        var trn = instance_create(0, 0, obj_transition);
        
        with (trn)
        {
            newRoom = 125;
            xx = 43;
            yy = 78;
        }
    }
    
    exit;
}

switch (scene)
{
    case 3:
        if (arc_title_x > 160)
            arc_title_x -= 5;
        else
            scene++;
        
        break;
    
    case 4:
        if (!alarm[4])
            alarm[4] = 15;
        
        break;
    
    case 5:
        if (global.down_keyp)
        {
            if (arc_cursor_pos < 3)
                arc_cursor_pos++;
            else
                arc_cursor_pos = 1;
            
            audio_play_sound(snd_arc_menu_move, 1, 0);
        }
        
        if (global.up_keyp)
        {
            if (arc_cursor_pos > 1)
                arc_cursor_pos--;
            else
                arc_cursor_pos = 3;
            
            audio_play_sound(snd_arc_menu_move, 1, 0);
        }
        
        if (keyboard_multicheck_pressed(vk_nokey))
        {
            switch (arc_cursor_pos)
            {
                case 1:
                    scene++;
                    audio_play_sound(snd_arc_menu_select, 1, 0);
                    break;
                
                case 2:
                    arc_controls_open = true;
                    arc_cursor_pos = 1;
                    audio_play_sound(snd_arc_menu_select, 1, 0);
                    break;
                
                case 3:
                    end_game = true;
                    audio_play_sound(snd_mew_seeya, 1, 0);
                    break;
            }
        }
        
        break;
    
    case 6:
        if (!alarm[5])
            alarm[5] = 30;
        
        break;
}

if (scene < 5)
{
    if (keyboard_multicheck_pressed(vk_nokey))
    {
        arc_title_x = 160;
        arc_draw_menu_options = true;
        audio_stop_all();
        audio_play_sound(snd_mew_title, 1, 0);
        scene = 5;
        
        for (var i = 0; i < 12; i++)
        {
            if (alarm_get(i) > 0)
                alarm_set(i, -1);
        }
    }
}
