event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        sndfnt_array[0] = snd_talk_default;
        message[0] = "* (You open a dresser#  drawer and see many#  neatly folded shirts.)";
        
        if (other.npc_flag == 0 && global.party_member != -4)
        {
            sndfnt_array[1] = snd_talk_martlet;
            message[1] = "* I don't think we need#  to look in there.";
            prt[1] = spr_martlet_head_wondering;
        }
    }
    
    npc_flag = 1;
}
