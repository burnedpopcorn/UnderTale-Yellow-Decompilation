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
                message[0] = "* Leave us alone will you?";
                message[1] = "* This is a family matter.";
            }
            
            break;
    }
}
