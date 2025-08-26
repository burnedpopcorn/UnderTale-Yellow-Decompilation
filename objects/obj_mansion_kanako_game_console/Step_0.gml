event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        sndfnt_array[0] = snd_talk_default;
        message[0] = "* (An old TV and game console#  gathering dust.)";
        
        if (other.npc_flag == 0 && global.party_member != -4)
        {
            sndfnt_array[1] = snd_talk_martlet;
            message[1] = "* The game case has a#  hand-made cover slip.   #  ";
            message[2] = "* \"Surface Tycoon\" it#  says.    ";
            message[3] = "* Chujin programmed a#  video game for Kanako?  #   ";
            message[4] = "* Wow... Must've been#  awesome to have him as a#  dad.";
            prt[1] = spr_martlet_head_regular;
            prt[2] = spr_martlet_head_questioning;
            prt[3] = spr_martlet_head_surprised;
            prt[4] = spr_martlet_head_melancholic;
        }
    }
    
    npc_flag = 1;
}
