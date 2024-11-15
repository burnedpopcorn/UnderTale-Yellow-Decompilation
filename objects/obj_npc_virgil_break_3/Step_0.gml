event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                message[0] = "* I'm not up to anything, I#  swear!";
                message[1] = "* Can't a monster appreciate a#  fence in peace?";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
                message[0] = "* Leave me be! I'm clearly busy!";
            
            break;
    }
}
