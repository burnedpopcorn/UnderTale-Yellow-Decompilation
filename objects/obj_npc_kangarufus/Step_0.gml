event_inherited();

if (interact)
    waiter = 1;

if (waiter == 1)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                message[0] = "* Stick  'em up, partner! This is#  a robbery!";
                message[1] = "* (You got 20G)";
                message[2] = "* Darn! I always get that part#  wrong!";
                
                if (message_current == 1)
                {
                    audio_play_sound(snd_success, 1, 0);
                    global.player_gold += 20;
                    other.waiter = 0;
                    other.npc_flag = 1;
                }
            }
            
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* Let me try again.";
                message[1] = "* Stick 'em up, partner! This is#  another robbery!";
                message[2] = "* ...";
                message[3] = "* (You got 5G)";
                message[4] = "* At least it's less than before?";
                
                if (message_current == 3)
                {
                    audio_play_sound(snd_success, 1, 0);
                    global.player_gold += 5;
                    other.waiter = 0;
                    other.npc_flag = 2;
                }
            }
            
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* I can't risk another robbery.";
                message[1] = "* My wallet is hurtin'!";
            }
            
            break;
    }
}

if (!global.dialogue_open && waiter == 1)
    waiter = 0;
