event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        sndfnt_array[0] = snd_talk_default;
        message[0] = "* (Several building bricks are#  scattered around a stuffed#  animal.)";
        
        if (other.npc_flag == 0 && global.party_member != -4)
        {
            sndfnt_array[1] = snd_talk_martlet;
            message[1] = "* ...Almost looks like#  it's watching me.";
            message[2] = "* Not sure I like this#  room...";
            prt[1] = spr_martlet_head_questioning;
            prt[2] = spr_martlet_head_sad;
        }
    }
    
    npc_flag = 1;
}
