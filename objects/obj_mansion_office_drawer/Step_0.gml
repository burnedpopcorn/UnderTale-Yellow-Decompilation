event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        sndfnt_array[0] = snd_talk_default;
        message[0] = "* (A drawer full of#  videotapes.)";
        message[1] = "* (A label on the front#  reads: \"Home movies.\")";
        
        if (other.npc_flag == 0 && global.party_member != -4)
        {
            sndfnt_array[2] = snd_talk_martlet;
            message[2] = "* While I'm sure these#  are adorable...";
            message[3] = "* We don't have time to#  watch them.";
            message[4] = "* Gotta keep looking for#  whatever spooked Ed and#  Star.";
            prt[2] = spr_martlet_head_melancholic;
            prt[3] = spr_martlet_head_wondering;
            prt[4] = spr_martlet_head_moderate;
        }
    }
    
    npc_flag = 1;
}
