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
                message[0] = "* Now Charles, I know you've had#  a long day but...";
                message[1] = "* If the dishes in the sink#  aren't done, we can't eat#  dinner!";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Don't even think about heating#  up a TV dinner instead.";
                message[1] = "* Those do not have the#  nutrition my hubby needs to get#  big and strong!";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Oh my! We've been quarreling#  so long, it's way past dinner#  time now!";
                message[1] = "* I suppose we'll have to invent#  a fourth meal of the day.";
                message[2] = "* Schminner!";
                message[3] = "* Oh I love the sound of that#  already! Schminner time!";
            }
            
            npc_flag = 3;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* I ought to go into#  entrepreneurship, don't you#  think Charles?";
                message[1] = "* I'll invent many useful#  things, like a new attitude for#  you!";
            }
    }
}
