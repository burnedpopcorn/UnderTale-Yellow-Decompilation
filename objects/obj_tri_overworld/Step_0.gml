event_inherited();

if (interact == 1)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                message[0] = "* I'm so relieved now.";
                message[1] = "* Everyone's on the ground safe.";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* I love the ground here,";
                message[1] = "* Lotsa soft snow for a safe#  landing.";
            }
            
            break;
    }
}
