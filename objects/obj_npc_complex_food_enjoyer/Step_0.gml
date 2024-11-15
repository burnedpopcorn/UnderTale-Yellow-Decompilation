event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    if (global.hotland_flag[1] > 0 && global.party_member != -4)
    {
        with (msg)
        {
            other.is_talking = 0;
            sndfnt = 102;
            message[0] = "* (We need to stay#  focused.)";
            message[1] = "* (Let's not bother#  others with our#  problems.)";
            prt[0] = 321;
            prt[1] = 329;
        }
    }
    else
    {
        switch (npc_flag)
        {
            case 0:
                with (msg)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* This has got to be the best#  restaurant in the Underground.#  Seriously.";
                    message[1] = "* You can't beat the food, the#  service, the atmosphere...";
                    message[2] = "* Something has always puzzled#  me though...";
                    message[3] = "* ...Where is the kitchen?";
                }
                
                npc_flag = 1;
                break;
            
            case 1:
                with (msg)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* I must confess, there is ONE#  thing about this place that#  gets me down.";
                    message[1] = "* The music.";
                    message[2] = "* Like, this band is FINE. A#  little too \"new wave\" for my#  taste.";
                    message[3] = "* I miss the acts of my youth.";
                    message[4] = "* There was this lounge singer#  they'd host... ";
                    message[5] = "* Bea-u-ti-ful!";
                    message[6] = "* I mean, wowza!! MEEE-OWW!!!";
                    message[7] = "* sorry.";
                }
                
                npc_flag = 2;
                break;
            
            case 2:
                with (msg)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* My food should be out any#  minute. Can't wait!";
                }
        }
    }
}
