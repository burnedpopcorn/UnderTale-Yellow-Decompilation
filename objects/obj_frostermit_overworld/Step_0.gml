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
                message[0] = "* Pinch pinch!";
                message[1] = "* Just kidding!";
                message[2] = "* I'm so glad the Royal Guard#  protects our home.";
                message[3] = "* Well, not my home really.";
                message[4] = "* My home is on my back and I#  protect it at all costs!";
                message[5] = "* Or... it protects me?";
                message[6] = "* It's a mutually beneficial#  relationship!";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* I've been thinking of moving#  soon actually.";
                message[1] = "* There are so many cool places#  out there!";
                message[2] = "* I took a vacation to the Wild#  East a while back.";
                message[3] = "* Maybe I'll move there, it#  seemed really cool.";
                message[4] = "* At least based on my experience#  as a tourist.";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* Pinch pinch!";
                message[1] = "* Hehe!";
            }
            
            break;
    }
}
