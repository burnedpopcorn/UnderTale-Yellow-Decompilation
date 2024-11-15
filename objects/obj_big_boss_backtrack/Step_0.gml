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
                prt[0] = 359;
                prt[1] = 359;
                prt[2] = 359;
                prt[3] = 361;
                prt[4] = 362;
                prt[5] = 359;
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
                prt[0] = 359;
                prt[1] = 359;
                prt[2] = 359;
                prt[3] = 361;
                prt[4] = 362;
                prt[5] = 359;
            }
            
            npc_flag++;
            break;
        
        case 2:
            is_talking = true;
            scr_text();
            
            with (msg)
            {
                sndfnt = 99;
                message[0] = "* As my old man used to#  say: mine on, kid!\t";
                message[1] = "* ...\t";
                message[2] = "* Okay, he uh... he never#  said that. I said that.#  Just now.";
                prt[0] = 359;
                prt[1] = 361;
                prt[2] = 362;
            }
            
            break;
    }
}
