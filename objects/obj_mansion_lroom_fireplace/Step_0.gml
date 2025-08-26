event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        sndfnt_array[0] = snd_talk_default;
        message[0] = "* (The fireplace is#  making the already-warm#  house warmer.)";
        
        if (other.npc_flag == 0 && global.party_member != -4)
        {
            sndfnt_array[1] = snd_talk_martlet;
            message[1] = "* Pretty#  counterproductive in a#  climate like this.";
            message[2] = "* Still, it looks#  beautiful.";
            prt[1] = spr_martlet_head_confused;
            prt[2] = spr_martlet_head_content;
        }
    }
    
    npc_flag = 1;
}
