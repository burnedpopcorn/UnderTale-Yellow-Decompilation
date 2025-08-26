event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        sndfnt_array[0] = snd_talk_default;
        message[0] = "* (The cabinet contains#  thesis papers on many#  different subjects.)";
        
        if (other.npc_flag == 0 && global.party_member != -4)
        {
            sndfnt_array[1] = snd_talk_martlet;
            message[1] = "* Whoa...";
            message[2] = "* These are all typed on#  cardstock...";
            message[3] = "* How wealthy was#  Chujin...?";
            prt[1] = spr_martlet_head_surprised;
            prt[2] = spr_martlet_head_wondering;
            prt[3] = spr_martlet_head_questioning;
        }
    }
    
    npc_flag = 1;
}
