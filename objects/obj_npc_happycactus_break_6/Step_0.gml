event_inherited();

if (interact)
    waiter = 1;

if (waiter == 1)
{
    scr_text();
    is_talking = 1;
    
    if (global.dunes_flag[24] == 1)
    {
        switch (npc_flag)
        {
            case 0:
                with (msg)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* Oh ho! Why if it isn't the#  Deputy!";
                    message[1] = "* Will you sign my needle? ";
                    message[2] = "* Please do!";
                    ch_msg = 2;
                    ch[1] = "Yes";
                    ch[2] = "No";
                    
                    if (outcome == 1)
                    {
                        message[3] = "* How exciting! Here's a pen!";
                        message[4] = "* (You make a few scribbles on#  one of the fellow's needles.)";
                        message[5] = "* Oh boy!";
                        message[6] = "* Hope you don't mind if I sell#  that needle online!";
                        message[7] = "* Ta-ta!";
                    }
                    
                    if (outcome == 2)
                        message[3] = "* Boo-hoo.";
                    
                    if (outcome != 0)
                    {
                        waiter = 0;
                        other.npc_flag++;
                    }
                }
                
                break;
            
            case 1:
                waiter = 0;
                
                with (msg)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* Good luck with the new job! Ah#  ha!!";
                }
                
                break;
        }
    }
    else if (global.dunes_flag[24] == 2)
    {
        waiter = 0;
        
        switch (npc_flag)
        {
            case 0:
                with (msg)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* Why if it isn't the Deputy!\t";
                    message[1] = "* Do you think the Feisty Five#  will ever get back together!\t";
                    message[2] = "* I hope-hope-hope they do!\t";
                    message[3] = "* It isn't any fun being apart,#  no ho!";
                }
                
                npc_flag += 1;
                break;
            
            case 1:
                with (msg)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* You're Star's right-hand man,#  correct?\t";
                    message[1] = "* If you see him, tell him we#  all miss his leadership!\t";
                    message[2] = "* That we do!";
                }
                
                break;
        }
    }
}
