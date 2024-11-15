event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
                message[0] = "* (You sense cannibalistic#  intent.)";
            
            break;
    }
}
