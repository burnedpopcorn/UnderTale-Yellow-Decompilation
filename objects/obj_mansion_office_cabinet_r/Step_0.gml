event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        sndfnt_array[0] = snd_talk_default;
        message[0] = "* (Expertly organized#  files, labeled with#  numerous monster names.)";
        
        if (other.npc_flag == 0 && global.party_member != -4)
        {
            sndfnt_array[1] = snd_talk_martlet;
            message[1] = "* Did he keep records of#  everyone he befriended?";
            message[2] = "* Sandra, Luis, Dr. Fish,#  Rosa, Martlet...";
            message[3] = "* Wait, Martlet???";
            message[4] = "* He found another#  monster with my name???";
            message[5] = "* I can't believe that#  never came up!#";
            prt[1] = spr_martlet_head_wondering;
            prt[2] = spr_martlet_head_questioning;
            prt[3] = spr_martlet_head_surprised;
            prt[4] = spr_martlet_head_shocked;
            prt[5] = spr_martlet_head_confused;
        }
    }
    
    npc_flag = 1;
}
