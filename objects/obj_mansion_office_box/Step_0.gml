event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        sndfnt_array[0] = snd_talk_default;
        message[0] = "* (A few unfinished#  robots poke out from the#  box.)";
        
        if (other.npc_flag == 0 && global.party_member != -4)
        {
            sndfnt_array[1] = snd_talk_martlet;
            message[1] = "* Huh...";
            message[2] = "* I heard about Chujin's#  interest in robotics#  once.";
            message[3] = "* Guess this is as far as#  he ever got?";
            prt[1] = spr_martlet_head_surprised;
            prt[2] = spr_martlet_head_questioning;
            prt[3] = spr_martlet_head_confused;
        }
    }
    
    npc_flag = 1;
}
