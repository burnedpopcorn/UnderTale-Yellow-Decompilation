event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        sndfnt_array[0] = 391;
        message[0] = "* (A drawer full of#  videotapes.)";
        message[1] = "* (A label on the front#  reads: \"Home movies.\")";
        
        if (other.npc_flag == 0 && global.party_member != -4)
        {
            sndfnt_array[2] = 102;
            message[2] = "* While I'm sure these#  are adorable...";
            message[3] = "* We don't have time to#  watch them.";
            message[4] = "* Gotta keep looking for#  whatever spooked Ed and#  Star.";
            prt[2] = 320;
            prt[3] = 338;
            prt[4] = 321;
        }
    }
    
    npc_flag = 1;
}
