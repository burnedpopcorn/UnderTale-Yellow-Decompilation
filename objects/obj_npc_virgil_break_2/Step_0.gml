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
                message[0] = "* Hey! Go away before I'm caug-";
                message[1] = "* I mean, I was released by#  Star... Yeah.";
                message[2] = "* No problems here.";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* Shh... I'm not here.";
                message[1] = "* You never saw me.";
            }
            
            break;
    }
}
