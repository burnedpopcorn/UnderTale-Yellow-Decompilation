event_inherited();

if (interact && !can_talk)
{
    can_talk = true;
    is_talking = 1;
    scr_text();
}

if (can_talk)
{
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                message[0] = "* One day, I'm gonna travel down#  this belt myself.\t";
                message[1] = "* I wanna see where it leads!";
                ch_msg = 1;
                ch[1] = "Bad idea";
                ch[2] = "Do it!";
                
                if (outcome == 1)
                {
                    message[2] = "* You think that's dangerous? ";
                    message[3] = "* I've got a hardhat, don't I?";
                    message[4] = "* Come on, you'll never have any#  fun if you're uptight all the#  time!";
                    other.can_talk = false;
                    other.npc_flag++;
                }
                
                if (outcome == 2)
                {
                    message[2] = "* I'll have to wait until the#  shift's over.";
                    message[3] = "* Thanks for the confidence#  boost!";
                    other.can_talk = false;
                    other.npc_flag++;
                }
            }
            
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* I gotta say, sorting through#  the same gemstones every day is#  getting old.\t";
                message[1] = "* I bet the Surface has a ton#  we've never heard about!\t";
                message[2] = "* Ironic that the first thing I#  wanna do when we're free is#  explore more caves, haha!";
            }
            
            can_talk = false;
            npc_flag++;
            break;
        
        case 2:
            with (msg)
                message[0] = "* Welp, gotta get back to it!";
            
            can_talk = false;
            break;
    }
}
