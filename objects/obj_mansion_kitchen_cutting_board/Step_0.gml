event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        sndfnt_array[0] = 391;
        message[0] = "* (You decide to keep a safe#  distance between you and the#  knife.)";
        
        if (other.npc_flag == 0 && global.party_member != -4)
        {
            sndfnt_array[1] = 102;
            message[0] = "* (You reach for the#  knife on the counter.)";
            message[1] = "* Nuh-uh!";
            message[2] = "* Kids shouldn't mess#  with knives.";
            message[3] = "* ...Kids shouldn't mess#  with guns either.";
            message[4] = "* ...";
            message[5] = "* I think I might be#  guilty of child#  endangerment.";
            prt[1] = 308;
            prt[2] = 334;
            prt[3] = 335;
            prt[4] = 335;
            prt[5] = 323;
        }
    }
    
    npc_flag = 1;
}
