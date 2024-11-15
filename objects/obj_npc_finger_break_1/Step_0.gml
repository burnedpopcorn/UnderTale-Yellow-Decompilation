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
                message[0] = "* I'll come right out and say#  it: Yes, I am a finger.";
                message[1] = "* I came free with the last#  shipment of bottles.";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* ...What else do you want me to#  say?";
                message[1] = "* Stop poking around in my#  business.";
            }
            
            break;
    }
}
