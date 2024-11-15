event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        sndfnt_array[0] = 391;
        message[0] = "* (You open a dresser#  drawer and see many#  neatly folded shirts.)";
        
        if (other.npc_flag == 0 && global.party_member != -4)
        {
            sndfnt_array[1] = 102;
            message[1] = "* I don't think we need#  to look in there.";
            prt[1] = 338;
        }
    }
    
    npc_flag = 1;
}
