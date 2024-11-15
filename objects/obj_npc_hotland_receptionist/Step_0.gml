event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        if (global.hotland_flag[1] > 0 && global.party_member != -4)
        {
            other.is_talking = 0;
            sndfnt = 102;
            message[0] = "* (We need to stay#  focused.)";
            message[1] = "* (Let's not bother#  others with our#  problems.)";
            prt[0] = 321;
            prt[1] = 329;
        }
        else
        {
            switch (other.npc_flag)
            {
                case 0:
                    message[0] = "* Blub blub...";
                    message[1] = "* I apologize but we're all out#  of reservations tonight.";
                    message[2] = "* A large party of ghosts are#  here and the kitchen doesn't#  know how to make ghost food.";
                    message[3] = "* Please come back in a few#  days. Please...";
                    break;
            }
        }
    }
}
