event_inherited();
npc_dynamic_depth = false;

if (interact)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                message[0] = "* Gragbh... Blaffm.....#  Clfmph......\t";
                message[1] = "* (Howdy human!)";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* Fribb... Jiblem..... ";
                message[1] = "* Hick...";
                message[2] = "* Blpshm......";
                message[3] = "* (Give me a drink, bartender!)";
            }
            
            break;
    }
}

depth = -9999;
