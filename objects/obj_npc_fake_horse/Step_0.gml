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
                message[0] = "* Neigh!! Neigh!!!";
                message[1] = "* Neigh I say!";
                message[2] = "* For I am a horse, each and#  every day!";
                message[3] = "* I crunch upon carrots and munch#  upon hay,";
                message[4] = "* But a shy horse I am, so please#  go away!";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Sorry, I only had time to write#  one jingle.";
                message[1] = "* It took me all night.";
                message[2] = "* Maybe I'll think of another#  soon.";
                message[3] = "* ...";
                message[4] = "* That last line wasn't a joke,#  by the way.";
                message[5] = "* Being a horse is my only form#  of true expression.";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* NeeeiGH!!!!";
            }
            
            break;
    }
}

depth = -9999;
