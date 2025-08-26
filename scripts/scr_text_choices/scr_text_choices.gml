function scr_text_choices()
{
    if (live_call())
        return global.live_result;
    
    if (variable_instance_exists(id, "ch_delay"))
    {
        if (ch_delay > 0)
        {
            ch_delay--;
            exit;
        }
        else
        {
            ch_delay = -1;
        }
    }
    
    if (variable_instance_exists(id, "ch_alpha") && variable_instance_exists(id, "alpha_fade"))
    {
        if (variable_instance_exists(id, "alpha_fade_out") && alpha_fade_out == true)
        {
            if (ch_alpha > 0.01)
            {
                ch_alpha = lerp(ch_alpha, 0, 0.2);
                exit;
            }
            else
            {
                ch_alpha = 0;
                outcome = p;
                choice = false;
                alpha_fade_out = false;
                alpha_fade = false;
            }
        }
        else if (alpha_fade == true)
        {
            if (ch_alpha < 0.99)
                ch_alpha = lerp(ch_alpha, 1, 0.15);
            else
                ch_alpha = 1;
            
            if (ch_alpha < 0.75)
                exit;
        }
    }
    
    if (outcome == p && choice == false)
    {
        if ((message_current + 1) < array_length_1d(message))
        {
            message_current += 1;
            cutoff = 0;
        }
        else
        {
            global.dialogue_open = false;
        }
        
        outcome = 0;
    }
    
    if (message_current == ch_msg)
        choice = true;
    
    if (choice == true && cutoff >= string_length(message[message_current]))
    {
        switch (p)
        {
            case 1:
                if (global.right_keyp && ch[2] != "")
                    p = 2;
                
                if (global.down_keyp && ch[3] != "")
                    p = 3;
                
                break;
            
            case 2:
                if (global.left_keyp)
                    p = 1;
                
                if (global.down_keyp)
                {
                    if (ch[4] != "")
                        p = 4;
                    else if (ch[3] != "")
                        p = 3;
                }
                
                break;
            
            case 3:
                if (global.right_keyp && ch[4] != "")
                    p = 4;
                
                if (global.up_keyp)
                    p = 1;
                
                break;
            
            case 4:
                if (global.up_keyp)
                    p = 2;
                
                if (global.left_keyp)
                    p = 3;
                
                break;
        }
        
        if (ch[2] != "" && (global.right_keyp || global.down_keyp || global.up_keyp || global.left_keyp))
            audio_play_sound(snd_mainmenu_select, 1, 0);
        
        if (keyboard_multicheck_pressed(vk_nokey))
        {
            if (variable_instance_exists(id, "alpha_fade") && alpha_fade == true)
            {
                alpha_fade_out = true;
            }
            else
            {
                outcome = p;
                choice = false;
            }
            
            audio_play_sound(snd_confirm, 1, 0);
        }
    }
}
