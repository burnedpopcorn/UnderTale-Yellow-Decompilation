if (live_call())
    return global.live_result;

if (global.down_keyp)
{
    if (position < position_max)
        position += 1;
    else
        position = 0;
    
    audio_play_sound(snd_mainmenu_select, 1, 0);
}

if (global.up_keyp)
{
    if (position > 0)
        position -= 1;
    else
        position = position_max;
    
    audio_play_sound(snd_mainmenu_select, 1, 0);
}

if (keyboard_multicheck_pressed(vk_nokey))
{
    audio_play_sound(snd_confirm, 1, 0);
    
    switch (position)
    {
        case 0:
            if (!file_exists("Save.sav"))
                room_goto(rm_mmfirst);
            else
                room_goto(rm_mainmenu);
            
            audio_stop_sound(mus_menu_options);
            scr_savecontrols();
            break;
        
        case 1:
            room_goto(rm_joystickconfig);
            break;
        
        case 2:
            if (global.option_screenshake_toggle == true)
                global.option_screenshake_toggle = false;
            else
                global.option_screenshake_toggle = true;
            
            break;
        
        case 3:
            if (global.option_retry_toggle == true)
                global.option_retry_toggle = false;
            else
                global.option_retry_toggle = true;
            
            break;
        
        case 4:
            if (global.option_autorun == true)
                global.option_autorun = false;
            else
                global.option_autorun = true;
            
            break;
        
        case 5:
            if (global.option_autoshoot == true)
                global.option_autoshoot = false;
            else
                global.option_autoshoot = true;
            
            break;
        
        case 6:
            if (global.option_autorhythm == true)
                global.option_autorhythm = false;
            else
                global.option_autorhythm = true;
            
            break;
        
        case 7:
            if (global.option_easymode == true)
                global.option_easymode = false;
            else
                global.option_easymode = true;
            
            break;
    }
}
