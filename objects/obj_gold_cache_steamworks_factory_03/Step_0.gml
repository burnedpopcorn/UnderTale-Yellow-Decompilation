event_inherited();

if (waiter == 0)
{
    if (interact)
        waiter = 1;
}

if (waiter == 1)
{
    scr_text();
    
    if (npc_flag == 0)
    {
        with (msg)
        {
            message[0] = "* (60G sits abandoned in the#  machine.)";
            message[1] = "* (Take it?)";
            ch_msg = 1;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1)
            {
                message[2] = "* (You got 60 G!)";
                instance_create_depth(433, 424, 300, obj_factory_03_empty_cache);
                audio_play_sound(snd_success, 1, 0);
                global.player_gold += 60;
                other.npc_flag += 1;
                other.waiter = 0;
            }
            
            if (outcome == 2)
            {
                global.dialogue_open = false;
                other.waiter = 0;
            }
        }
    }
    else if (npc_flag == 1)
    {
        msg.message[0] = "* (The machine is now empty.)";
        waiter = 0;
    }
}
