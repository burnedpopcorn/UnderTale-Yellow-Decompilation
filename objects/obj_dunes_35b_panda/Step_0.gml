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
                message[0] = "* Have you given up your life#  of being a wrangler to#  experience MODERNISM?";
                message[1] = "* I highly suggest doing so,#  it is the most prestigious#  life one could choose.";
                message[2] = "* Chic architecture, light#  switches, latte machines...#  it's all here.";
                message[3] = "* Once you indulge, you#  can't stop!";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* Why do I choose to live in#  the Dunes and not somewhere#  modern like Hotland?";
                message[1] = "* Because I wanna feel#  important.";
                message[2] = "* If I walk around using tech#  in front of monsters who#  don't, I'm the cool one.";
                message[3] = "* I'm probably the most#  secure monster around.";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* I need to invest in a nice#  suit to really sell my#  status.";
                message[1] = "* Gotta say, there's something#  incredibly unsettling about#  not wearing clothes.";
            }
            
            break;
    }
}
