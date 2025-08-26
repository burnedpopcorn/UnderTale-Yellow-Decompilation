event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* So you're the new kid\t, eh?";
                message[1] = "* I've heard the townsfolk raving#  about you and all.";
                message[2] = "* Not to burst your bubble,#  but I could totally go toe#  to toe with you.";
                message[3] = "* I know for a fact I could win#  an arm wrestle with you right#  now, no training.";
                message[4] = "* If I wanted, I could snap all#  thirteen of my fingers and get#  the deputy position.";
                message[5] = "* If that upsets you, I'm not#  sorry.";
                message[6] = "* Heh, yeah. I wouldn't cross me#  if I were me.";
            }
            
            npc_flag++;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* You see me sitting at this bar?";
                message[1] = "* Yeah. It's because I'm a cool#  adult, unlike you.";
                message[2] = "* I can do cool adult things like#  cry and also weep.";
                message[3] = "* Am I being mean? No. It's just#  the hard truth.";
            }
            
            npc_flag++;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* If you're only talking to#  me to hear my silky smooth#  voice, give it up.";
                message[1] = "* I won't let you in on my#  secrets.";
            }
            
            npc_flag++;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Blembino. Remember the name.";
            }
            
            break;
    }
}
