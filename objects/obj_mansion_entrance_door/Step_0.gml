event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        sndfnt_array[0] = snd_talk_default;
        message[0] = "* (The door is locked from the#  other side.)";
        
        if (other.npc_flag == 0 && global.party_member != -4)
        {
            sndfnt_array[1] = snd_talk_martlet;
            message[1] = "* Locked, huh? Strange...";
            message[2] = "* Guess Ed and Star took#  another route.";
            prt[1] = spr_martlet_head_confused;
            prt[2] = spr_martlet_head_questioning;
        }
    }
    
    npc_flag = 1;
}
