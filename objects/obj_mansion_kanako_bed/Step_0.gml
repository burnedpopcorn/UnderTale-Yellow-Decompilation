event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        sndfnt_array[0] = snd_talk_default;
        message[0] = "* (The sturdy bed sits#  bathing in the warm glow#  of the Dunes.)";
        
        if (other.npc_flag == 0 && global.party_member != -4)
        {
            sndfnt_array[1] = snd_talk_martlet;
            message[1] = "* What a masterwork.#  Hand-carved and#  everything...";
            message[2] = "* It's hard to believe#  Chujin had the time to#  craft all of this.";
            prt[1] = spr_martlet_head_surprised;
            prt[2] = spr_martlet_head_melancholic;
        }
    }
    
    npc_flag = 1;
}
