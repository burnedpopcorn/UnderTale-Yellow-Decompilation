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
                message[0] = "* Oh, hey.";
                message[1] = "* I'm just uh, admiring the#  view.";
                message[2] = "* I was just on my way to talk#  to the Foreman. Yep.";
            }
            
            npc_flag++;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* The boulders stopped falling a#  while ago.";
                message[1] = "* My teacher never taught me it#  could rain rocks down here.";
                message[2] = "* Weather... crazy stuff.";
            }
            
            npc_flag++;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Well, I'm gonna go soon.";
                message[1] = "* Hope my eternal gratitude#  helped you!";
            }
            
            break;
    }
}
