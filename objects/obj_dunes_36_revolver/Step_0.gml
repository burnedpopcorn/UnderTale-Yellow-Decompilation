if ((keyboard_multicheck_pressed(vk_nokey) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
    waiter = 1;

if (waiter > 0)
{
    scr_text();
    
    with (msg)
    {
        portrait = false;
        sndfnt = sndfnt_default;
        message[0] = "* (It's a gun.)";
        message[1] = "* (Take it?)";
        
        if (outcome == 1 && message_current == 1)
        {
            if (global.player_weapon != "Wild Revolver")
            {
                global.player_weapon = "Wild Revolver";
                audio_play_sound(snd_success, 1, 0);
                scr_text();
                message[2] = "* (Got the Wild Revolver!)";
            }
            
            instance_destroy(other);
            other.waiter = 0;
        }
        
        if (outcome == 2 && message_current == 1)
        {
            global.dialogue_open = false;
            other.waiter = 0;
        }
        
        if ((message_current + 1) == 1)
        {
            ch_msg = 1;
            ch[1] = "Yes";
            ch[2] = "No";
        }
    }
}
