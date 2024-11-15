event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        sndfnt_array[0] = 391;
        message[0] = "* (The fireplace is#  making the already-warm#  house warmer.)";
        
        if (other.npc_flag == 0 && global.party_member != -4)
        {
            sndfnt_array[1] = 102;
            message[1] = "* Pretty#  counterproductive in a#  climate like this.";
            message[2] = "* Still, it looks#  beautiful.";
            prt[1] = 311;
            prt[2] = 312;
        }
    }
    
    npc_flag = 1;
}
