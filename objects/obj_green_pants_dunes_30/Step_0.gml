event_inherited();

if (live_call())
    return global.live_result;

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
            message[0] = "* (You found 30G in one of the#  pants' pockets!)";
            message[1] = "* (Take it?)";
            ch_msg = 1;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1)
            {
                message[2] = "* (You got 30G!)";
                audio_play_sound(snd_success, 1, 0);
                global.player_gold += 30;
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
        if (global.route == 3)
            msg.message[0] = "* (A tacky pair of pants.)";
        else
            msg.message[0] = "* (Neon green pants. Your#  favorite!)";
        
        waiter = 0;
    }
}
