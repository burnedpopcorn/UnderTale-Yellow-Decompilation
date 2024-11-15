event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        switch (other.npc_flag)
        {
            case 0:
                message[0] = "* I'm not sure I meet the#  requirements to set foot in the#  club.";
                message[1] = "* My age isn't the problem, it's#  that I never got my Dancer's#  License.";
                other.npc_flag++;
                break;
            
            case 1:
                message[0] = "* I'm tired of putting in effort#  for entertainment.";
                message[1] = "* When will someone come along#  that spoon-feeds fun to me?";
                message[2] = "* That will be the day.";
                other.npc_flag++;
                break;
            
            case 2:
                message[0] = "* Guess it won't hurt to wait in#  line a little longer.";
                break;
        }
    }
}
