event_inherited();

if (interact)
{
    scr_text();
    is_talking = true;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* I'm not up to anything#  suspicious, okay?";
                message[1] = "* There is no treasure behind#  this wall, okay?";
                message[2] = "* Don't rat me out, okay?";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* This is my TNT, okay?";
                message[1] = "* I didn't steal it from my#  brother at the mines, okay?";
                message[2] = "* This X was here before I#  arrived, okay?";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* I'm just waiting out the storm,#  okay?";
                message[1] = "* Get off my case......";
                message[2] = "* please.";
            }
            
            break;
    }
}
