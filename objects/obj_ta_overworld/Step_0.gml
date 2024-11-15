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
                message[0] = "* Hey, where you going to next?";
                message[1] = "* Anywhere exciting?";
                message[2] = "* Can I come?";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* I can be helpful if you let me#  come!";
                message[1] = "* I can be, um, uh-a hat!";
                message[2] = "* I'll be a great hat! Keep your#  head nice an' toasty!";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* You want a nice snuggly hat?";
                message[1] = "* I can keep your ears warm!";
            }
            
            break;
    }
}
