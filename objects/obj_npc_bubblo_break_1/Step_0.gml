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
                message[0] = "* The saloon isn't always this#  crowded.";
                message[1] = "* It's Happy Hour, you see? Half#  price drinks!";
                message[2] = "* But you don't know that so#  they'll continue to sell you#  full price drinks.";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* Whatever you do, do NOT come#  here during Crappy Hour!";
                message[1] = "* The drinks are TWICE as#  expensive and Dina throws a#  punch at whoever orders one!";
                message[2] = "* Upside is you get a coupon for#  10% off your clinic visit at#  the end.";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* I would love to stick around#  for your stay but I got a#  cactus to hug.";
                message[1] = "* ...What's with the look?";
                message[2] = "* So I have a boyfriend. Get#  over it???";
            }
            
            break;
    }
}
