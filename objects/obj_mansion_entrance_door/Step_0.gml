event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        sndfnt_array[0] = 391;
        message[0] = "* (The door is locked from the#  other side.)";
        
        if (other.npc_flag == 0 && global.party_member != -4)
        {
            sndfnt_array[1] = 102;
            message[1] = "* Locked, huh? Strange...";
            message[2] = "* Guess Ed and Star took#  another route.";
            prt[1] = 311;
            prt[2] = 324;
        }
    }
    
    npc_flag = 1;
}
