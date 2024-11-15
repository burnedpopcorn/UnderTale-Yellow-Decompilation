event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        sndfnt_array[0] = 391;
        message[0] = "* (Books of a novice#  reading level lie in the#  basket.)";
        message[1] = "* (They carry#  similarities to books#  you've recently read.)";
        
        if (other.npc_flag == 0 && global.party_member != -4)
        {
            sndfnt_array[2] = 102;
            message[2] = "* Aww, I remember reading#  those as a birdling.";
            message[3] = "* Not to brag, but I#  finished them all in one#  day.    ";
            message[4] = "* I may have exceeded my#  classmates by several#  grades...";
            prt[2] = 312;
            prt[3] = 331;
            prt[4] = 331;
        }
    }
    
    npc_flag = 1;
}
