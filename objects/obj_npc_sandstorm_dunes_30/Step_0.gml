event_inherited();

if (interact)
{
    if (global.party_member != -4)
    {
        scr_text();
        
        with (msg)
        {
            sndfnt = 102;
            message[0] = "* (We need to stay#  focused.)";
            message[1] = "* (Let's not bother the#  townsfolk with our#  problems.)";
            prt[0] = 321;
            prt[1] = 338;
        }
        
        exit;
    }
    
    scr_text();
    is_talking = true;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Gotta beat this heat.";
                message[1] = "* I'm losin' it.";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Mirrages, man...";
                message[1] = "* Can't trust your eyes out#  here.";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* Stay away from precarious#  paths.";
                message[1] = "* You'll just turn up back where#  you started, for real.";
            }
            
            npc_flag += 1;
            break;
        
        case 3:
            with (msg)
                message[0] = "* Gotta beat this heat.";
            
            break;
    }
}
