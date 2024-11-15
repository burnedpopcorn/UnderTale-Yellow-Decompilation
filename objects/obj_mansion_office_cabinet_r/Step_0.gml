event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        sndfnt_array[0] = 391;
        message[0] = "* (Expertly organized#  files, labeled with#  numerous monster names.)";
        
        if (other.npc_flag == 0 && global.party_member != -4)
        {
            sndfnt_array[1] = 102;
            message[1] = "* Did he keep records of#  everyone he befriended?";
            message[2] = "* Sandra, Luis, Dr. Fish,#  Rosa, Martlet...";
            message[3] = "* Wait, Martlet???";
            message[4] = "* He found another#  monster with my name???";
            message[5] = "* I can't believe that#  never came up!#";
            prt[1] = 338;
            prt[2] = 324;
            prt[3] = 333;
            prt[4] = 330;
            prt[5] = 311;
        }
    }
    
    npc_flag = 1;
}
