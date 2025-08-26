event_inherited();

if (interact)
{
    if (global.party_member != -4)
    {
        if (npc_flag < 3)
            npc_flag = 3;
        
        switch (npc_flag)
        {
            case 3:
                scr_text();
                
                with (msg)
                {
                    message[0] = "* Hello, sir!";
                    message[1] = "* I'm guessing you're the#  boss of this#  mine.";
                    message[2] = "* Well, not for much#  longer.";
                    message[3] = "* Oh? Why's that?";
                    message[4] = "* I'm preparing for#  retirement!";
                    message[5] = "* It'll be sad to leave#  this place behind but I#  feel it's time.";
                    message[6] = "* Hey, that's not all#  bad! I WISH I could#  retire.";
                    message[7] = "* Yeah, it'll be nice.#  Just gotta find someone#  to replace me.";
                    message[8] = "* I have a few#  ideas.\t";
                    message[9] = "* Well, good luck with#  everything!";
                    message[10] = "* Thank you!";
                    prt[0] = spr_martlet_head_content;
                    prt[1] = spr_martlet_head_regular;
                    prt[2] = spr_gilbert_head_sweat;
                    prt[3] = spr_martlet_head_confused;
                    prt[4] = spr_gilbert_head_blush;
                    prt[5] = spr_gilbert_head;
                    prt[6] = spr_martlet_head_regular;
                    prt[7] = spr_gilbert_head;
                    prt[8] = spr_gilbert_head;
                    prt[9] = spr_martlet_head_content;
                    prt[10] = spr_gilbert_head_blush;
                    talker[0] = obj_martlet_follower;
                    talker[2] = obj_dunes_25b_gilbert;
                    talker[3] = obj_martlet_follower;
                    talker[4] = obj_dunes_25b_gilbert;
                    talker[6] = obj_martlet_follower;
                    talker[7] = obj_dunes_25b_gilbert;
                    talker[9] = obj_martlet_follower;
                    talker[10] = obj_dunes_25b_gilbert;
                    sndfnt_array[0] = snd_talk_martlet;
                    sndfnt_array[2] = snd_talk_default;
                    sndfnt_array[3] = snd_talk_martlet;
                    sndfnt_array[4] = snd_talk_default;
                    sndfnt_array[6] = snd_talk_martlet;
                    sndfnt_array[7] = snd_talk_default;
                    sndfnt_array[9] = snd_talk_martlet;
                    sndfnt_array[10] = snd_talk_default;
                }
                
                npc_flag += 1;
                break;
            
            case 4:
                scr_text();
                
                with (msg)
                {
                    message[0] = "* Finally figured out how#  to turn these machines#  off.";
                    message[1] = "* Me and North Star need#  to have a chat.";
                    prt[0] = spr_gilbert_head;
                    prt[1] = spr_gilbert_head;
                    talker[0] = obj_dunes_25b_gilbert;
                }
                
                break;
        }
    }
    else
    {
        if (npc_flag >= 3)
            npc_flag = 0;
        
        switch (npc_flag)
        {
            case 0:
                scr_text();
                
                with (msg)
                {
                    talker[0] = obj_dunes_25b_gilbert;
                    message[0] = "* I figured out where#  those boulders were#  coming from.\t";
                    message[1] = "* Turns out North Star#  set the machines up for#  \"Feisty Missions.\"\t";
                    message[2] = "* Had a friendly chat#  with him about it all.\t";
                    message[3] = "* He immediately#  apologized so... I#  forgave him.\t";
                    message[4] = "* How could I say no to#  his overwhelming charm?\t";
                    message[5] = "* I'm only monster.";
                    prt[0] = spr_gilbert_head;
                    prt[1] = spr_gilbert_head_sweat;
                    prt[2] = spr_gilbert_head;
                    prt[3] = spr_gilbert_head_blush;
                    prt[4] = spr_gilbert_head_sweat;
                    prt[5] = spr_gilbert_head;
                }
                
                npc_flag += 1;
                break;
            
            case 1:
                scr_text();
                
                with (msg)
                {
                    talker[0] = obj_dunes_25b_gilbert;
                    message[0] = "* Things were already#  running well earlier but#  now they're even better!\t";
                    message[1] = "* Glad my legacy in this#  place will be nothing#  but positive memories!";
                    prt[0] = spr_gilbert_head_blush;
                    prt[1] = spr_gilbert_head_blush;
                }
                
                npc_flag += 1;
                break;
            
            case 2:
                scr_text();
                
                with (msg)
                {
                    talker[0] = obj_dunes_25b_gilbert;
                    message[0] = "* As my old man used to#  say: mine on, kid!\t";
                    message[1] = "* ...\t";
                    message[2] = "* Okay, he uh... he never#  said that. I said that.#  Just now.";
                    prt[0] = spr_gilbert_head;
                    prt[1] = spr_gilbert_head_sweat;
                    prt[2] = spr_gilbert_head;
                }
                
                break;
        }
    }
}
