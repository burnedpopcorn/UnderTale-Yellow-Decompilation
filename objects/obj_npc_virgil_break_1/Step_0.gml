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
                message[0] = "* You gotta get me outta here,#  kid!";
                message[1] = "* I have a family! Hopes! Dreams!#  TV programs I've missed!";
                message[2] = "* I didn't do nothin' bad, I#  swear!";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* North Star will pay for this...";
                message[1] = "* Ah-I mean I bought a drink for#  him the other day.";
                message[2] = "* He needs to pay me back... Yeah.";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* I wonder where I could buy a#  train...";
                message[1] = "* What? I'm just talkin' to#  myself. Ignore me.";
            }
            
            break;
    }
}
