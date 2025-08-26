event_inherited();

if (interact)
{
    if (global.party_member != -4)
    {
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            message[0] = "* (We need to stay#  focused.)";
            message[1] = "* (Let's not bother the#  townsfolk with our#  problems.)";
            prt[0] = spr_martlet_head_moderate;
            prt[1] = spr_martlet_head_wondering;
        }
        
        exit;
    }
    
    scr_text();
    is_talking = true;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Something going on at the old#  Ketsukane residence?";
                message[1] = "* I've noticed an unusual number#  of monsters visiting.";
                message[2] = "* Guess there's never a bad time#  to pay your respects. \t";
                message[3] = "* Brilliant minds, the#  Ketsukanes'.";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Have you seen our little#  sapling south of here?";
                message[1] = "* Well, perhaps I shouldn't call#  it \"little\" anymore.";
                message[2] = "* Its rate of growth has been#  unprecedented.";
                message[3] = "* My latest botanical methods#  seem to be working better than#  expected.";
                message[4] = "* The Meadow is sure to return#  in the coming years. I truly#  believe it.";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* Patience is a virtue.";
                message[1] = "* You will get what you put in#  but it may take time.";
                message[2] = "* Remember that.";
            }
            
            break;
    }
}
