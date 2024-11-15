var current_world_value;

depth = -y;

if (instance_exists(obj_dialogue) && obj_dialogue.sndfnt == 96)
{
    if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
    {
        image_speed = 0;
        image_index = 0;
    }
    else
    {
        image_speed = 0.2;
    }
}

if (waiter > 0 && waiter < 3)
{
    switch (direction div 90)
    {
        case 0:
            sprite_index = rightsprite;
            break;
        
        case 1:
            sprite_index = upsprite;
            break;
        
        case 2:
            sprite_index = leftsprite;
            break;
        
        case 3:
            sprite_index = downsprite;
            break;
    }
}

if (waiter == 1)
{
    if (global.flowey_death_pop)
    {
        scr_text();
        
        with (msg)
        {
            sndfnt = 96;
            message[0] = "* Welcome back!";
            prt[0] = 348;
        }
        
        if (!global.dialogue_open)
        {
            waiter = 3;
            sprite_index = leavesprite;
            image_speed = 0.2;
        }
        
        exit;
    }
    else if (global.dunes_flag[41] >= 5)
    {
        scr_save_flowey_endgame();
    }
    else
    {
        current_world_value = scr_determine_world_value_yellow();
        
        switch (current_world_value)
        {
            case 1:
                scr_save_flowey_dark_ruins();
                break;
            
            case 2:
                scr_save_flowey_snowdin();
                break;
            
            case 3:
                scr_save_flowey_dunes();
                break;
            
            case 4:
                scr_save_flowey_steamworks();
                break;
            
            case 5:
                scr_save_flowey_endgame();
                break;
        }
    }
    
    waiter = 2;
}

if (!instance_exists(obj_dialogue) && waiter == 2)
{
    box = instance_create(__view_get(e__VW.XView, 0) + 160, __view_get(e__VW.YView, obj_quote_battle_ceroba_outro_4) + 120, obj_savebox);
    audio_play_sound(snd_mainmenu_select, 1, 0);
    waiter = 3;
}
