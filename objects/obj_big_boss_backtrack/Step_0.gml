event_inherited();

if (interact)
{
    switch (npc_flag)
    {
        case 0:
            is_talking = 1;
            scr_text();
            
            with (msg)
            {
                message[0] = "* I figured out where#  those boulders were#  coming from.\t";
                message[1] = "* Turns out North Star#  set the machines up for#  \"Feisty Missions.\"\t";
                message[2] = "* Had a friendly chat#  with him about it all.\t";
                message[3] = "* He immediately#  apologized so... I#  forgave him.\t";
                message[4] = "* How could I say no to#  his overwhelming charm?\t";
                message[5] = "* I'm only monster.";
                prt[0] = spr_gilbert_head;
                prt[1] = spr_gilbert_head;
                prt[2] = spr_gilbert_head;
                prt[3] = spr_gilbert_head_sweat;
                prt[4] = spr_gilbert_head_blush;
                prt[5] = spr_gilbert_head;
            }
            
            npc_flag++;
            break;
        
        case 1:
            is_talking = 1;
            scr_text();
            
            with (msg)
            {
                message[0] = "* I figured out where#  those boulders were#  coming from.\t";
                message[1] = "* Turns out North Star#  set the machines up for#  \"Feisty Missions.\"\t";
                message[2] = "* Had a friendly chat#  with him about it all.\t";
                message[3] = "* He immediately#  apologized so... I#  forgave him.\t";
                message[4] = "* How could I say no to#  his overwhelming charm?\t";
                message[5] = "* I'm only monster.";
                prt[0] = spr_gilbert_head;
                prt[1] = spr_gilbert_head;
                prt[2] = spr_gilbert_head;
                prt[3] = spr_gilbert_head_sweat;
                prt[4] = spr_gilbert_head_blush;
                prt[5] = spr_gilbert_head;
            }
            
            npc_flag++;
            break;
        
        case 2:
            is_talking = true;
            scr_text();
            
            with (msg)
            {
                sndfnt = sndfnt_default;
                message[0] = "* As my old man used to#  say: mine on, kid!\t";
                message[1] = "* ...\t";
                message[2] = "* Okay, he uh... he never#  said that. I said that.#  Just now.";
                prt[0] = spr_gilbert_head;
                prt[1] = spr_gilbert_head_sweat;
                prt[2] = spr_gilbert_head_blush;
            }
            
            break;
    }
}
