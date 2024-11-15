event_inherited();

if (interact == 1)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
                message[0] = "* My poor boy... where did you#  go?";
            
            break;
    }
}
