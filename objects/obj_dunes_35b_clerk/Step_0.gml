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
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* I would sell you something,#  but I'm on strike. The owner#  needs to better themself.";
                message[1] = "* That's me. I'm the owner.";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Run along now. I don't see#  myself improving anytime soon.";
            }
            
            break;
    }
}
