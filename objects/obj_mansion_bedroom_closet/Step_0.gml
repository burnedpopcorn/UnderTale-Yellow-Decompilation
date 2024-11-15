event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        sndfnt_array[0] = 391;
        message[0] = "* (Ceroba's many outfits hang in#  the closet.)";
        message[1] = "* (You can see someone else's#  clothes hidden behind the front#  row.)";
        
        if (other.npc_flag == 0 && global.party_member != -4)
        {
            sndfnt_array[2] = 102;
            message[2] = "* Ceroba knows what she#  likes, huh?";
            message[3] = "* Usually I'd be envious#  of such intense resolve#  but...\t";
            message[4] = "* ...I'm not so sure it's#  a good trait anymore.";
            prt[2] = 311;
            prt[3] = 324;
            prt[4] = 329;
        }
    }
    
    npc_flag = 1;
}
