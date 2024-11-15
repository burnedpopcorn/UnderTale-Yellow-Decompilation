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
                message[0] = "* I wonder if only children have#  to deal with this.";
                message[1] = "* Monsters climbing all over your#  head, I mean.";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
                message[0] = "* Got any good tips on getting#  footprints out of fur?";
            
            break;
    }
}
