event_inherited();

if (interact)
{
    scr_text();
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                talker[0] = other;
                message[0] = "* What's out there? What's out#  there??";
                message[1] = "* No! Follow the path. FOLLOW#  THE PATH.";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                talker[0] = other;
                message[0] = "* WHO'S PULLING THE STRINGS,#  HUH???";
                message[1] = "* A WILL AIN'T FREE. LOSS IS#  CERTAIN.";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                talker[0] = other;
                message[0] = "* hNNNNNNG.";
            }
            
            break;
    }
}
