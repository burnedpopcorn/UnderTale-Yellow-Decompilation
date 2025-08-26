event_inherited();

if (interact)
{
    if (global.party_member != -4)
    {
        if (npc_flag < 3)
        {
            scr_cutscene_start();
            scene = 1;
            exit;
        }
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
                message[0] = "* WHOA!";
                message[1] = "* Whoa whoa WHOA!";
                message[2] = "* How many times are you gonna#  bring me in? I TOLD you I'm not#  a—";
                message[3] = "* Oh, you're... not a member#  of the guard.";
                message[4] = "* Gah! I'm really really sorry!";
                message[5] = "* I've been mistaken for a human#  a few too many times.";
                message[6] = "* Some of 'em even recognize me#  now. Maybe I should get to know#  them better...";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* You kinda look like the same#  might've happened to you.";
                message[1] = "* Dressing the way a human#  wouldn't is a good start,";
                message[2] = "* but a lot of folks down here#  don't know the nuances of#  ~human fashion~.";
                message[3] = "* Maybe put on like, two or three#  more hats.";
                message[4] = "* Put hats on your feet too.#  Nobody will bother you then.";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* So, do you just walk up to#  people repeatedly and expect#  them to talk to you?";
                message[1] = "* ...Does it work?";
                message[2] = "* ...Should I try it?";
            }
            
            break;
        
        case 3:
            if (global.party_member != -4)
            {
                is_talking = false;
                
                with (msg)
                {
                    message[0] = "* (Red stares awkwardly.)";
                    message[1] = "* (She isn't prepared for a#  second conversation.)";
                }
            }
            else
            {
                with (msg)
                {
                    message[0] = "* Hopefully Martlet didn't give#  you too much trouble!";
                    message[1] = "* Not that she would.";
                    message[2] = "* If you want a Guard to mistake#  you for a human, she's#  definitely the best one.";
                }
                
                npc_flag = 4;
            }
            
            break;
        
        case 4:
            with (msg)
            {
                message[0] = "* ...Wait, did you get arrested#  on PURPOSE to try and make new#  friends?";
                message[1] = "* ....";
                message[2] = "* ...................";
                message[3] = "* ...You might be onto something,#  buster.";
            }
            
            npc_flag = 5;
            break;
        
        case 5:
            is_talking = false;
            
            with (msg)
                message[0] = "* (Red is in deep thought.)";
            
            break;
    }
}

switch (scene)
{
    case 1:
        with (obj_martlet_follower)
        {
            image_alpha = 0;
            other.martlet_npc = instance_create(x, y, obj_martlet_npc);
        }
        
        with (obj_pl)
            other.player_npc = instance_create(x, y, obj_player_npc);
        
        with (martlet_npc)
        {
            x_dest[0] = other.x - 20;
            y_dest[0] = other.y + 35;
            end_direction = "up";
            can_walk = true;
        }
        
        with (player_npc)
        {
            x_dest[0] = other.x + 20;
            y_dest[0] = other.y + 35;
            end_direction = "up";
            can_walk = true;
        }
        
        scene++;
        break;
    
    case 2:
        if (player_npc.npc_arrived && martlet_npc.npc_arrived)
        {
            player_npc.npc_arrived = false;
            martlet_npc.npc_arrived = false;
            timer = 30;
            scene++;
        }
        
        break;
    
    case 3:
        if (!scr_timer())
            exit;
        
        var martlet = martlet_npc;
        var red = id;
        scr_text();
        
        with (msg)
        {
            if (talker[message_current] == red)
                sndfnt = sndfnt_default;
            
            if (talker[message_current] == martlet || message_current == 0)
                sndfnt = snd_talk_martlet;
            
            talker[0] = martlet;
            message[0] = "* Ooooh! Oh, hey! Clover!";
            message[1] = "* Remember how I told you#  I apprehended a human#  last week?";
            message[2] = "* Thaaat's her!";
            prt[0] = spr_martlet_head_regular;
            prt[1] = spr_martlet_head_regular;
            prt[2] = spr_martlet_head_happy;
            talker[3] = red;
            message[3] = "* ?";
            message[4] = "* ????????????";
            message[5] = "* You STILL think I'm... your#  captain DID explain to you I'm#  not a human, right?";
            message[6] = "* Please tell me she did.";
            talker[7] = martlet;
            message[7] = "* Oh! I'm so sorry! I just#  thought you-";
            prt[7] = spr_martlet_head_surprised;
            talker[8] = red;
            message[8] = "* No, no, I'm sorry, I just...#  get it often.";
            message[9] = "* You MAY OR MAY NOT be the first#  that apprehended me repeatedly,#  though.";
            message[10] = "* Kinda put me on edge.";
            talker[9] = martlet;
            message[9] = "* It's totally fine!";
            message[10] = "* You wouldn't believe#  how many grumpy#  monsters I deal with.";
            message[11] = "* N-not that you're a#  grumpy monster!";
            message[12] = "* I'm sure you're very#  nice!";
            message[13] = "* Ahem. Anyway...";
            message[14] = "* What's your name?";
            ch_msg = 14;
            ch[1] = "It's Clover";
            message[15] = "* Huh? No, not you, silly,#  her!";
            prt[9] = spr_martlet_head_happy;
            prt[10] = spr_martlet_head_regular;
            prt[11] = spr_martlet_head_surprised;
            prt[12] = spr_martlet_head_nervous_smile;
            prt[13] = spr_martlet_head_suspiciouser;
            prt[14] = spr_martlet_head_melancholic;
            prt[15] = spr_martlet_head_surprised;
            talker[16] = red;
            message[16] = "* I.... Actually, how about#  \"Red?\"";
            message[17] = "* That's what your colleagues#  have kept calling me every time#  I get falsely apprehended.";
            message[18] = "* To be honest...";
            message[19] = "* I hoped that eventually I'd be#  \"caught\" enough that you'd all#  recognize me and it'd stop.";
            message[20] = "* It might just be wiser to JOIN#  the Guard at this point...";
            talker[21] = martlet;
            message[21] = "* Join?";
            message[22] = "* That would be fantastic!";
            message[23] = "* I'd be glad to show you#  the ropes of my job!";
            message[24] = "* You could even help me#  build puzzles!";
            message[25] = "* That might be a code#  violation now that I#  think about it...";
            message[26] = "* Aaahh, it's fine!";
            prt[21] = spr_martlet_head_surprised;
            prt[22] = spr_martlet_head_happy;
            prt[23] = spr_martlet_head_happy;
            prt[24] = spr_martlet_head_determined;
            prt[25] = spr_martlet_head_suspiciouser;
            prt[26] = spr_martlet_head_determined;
            talker[27] = red;
            message[27] = "* What?";
            message[28] = "* It can't be THAT easy to get in,#  right?";
            talker[29] = martlet;
            message[29] = "* I mean, they let me#  join.";
            message[30] = "* We'll figure it out!";
            message[31] = "* Me and Clover have some#  important business to#  attend to.";
            message[32] = "* But I should be free#  next week!";
            message[33] = "* You can find me doing#  my duty around Snowdin#  any day.";
            prt[29] = spr_martlet_head_wink;
            prt[30] = spr_martlet_head_determined;
            prt[31] = spr_martlet_head_wondering;
            prt[32] = spr_martlet_head_regular;
            prt[33] = spr_martlet_head_regular;
            talker[34] = red;
            message[34] = "* Oh.";
            message[35] = "* You're serious.";
            message[36] = "* Ah, ahahaha, I mean, haha,#  s-sure?";
            message[37] = "* S-sounds like a plan!!";
            message[38] = "* See you then!!";
            talker[39] = martlet;
            message[39] = "* See ya!";
            prt[39] = spr_martlet_head_content;
        }
        
        if (!global.dialogue_open)
        {
            scene++;
            obj_pl.image_alpha = 1;
            obj_pl.direction = 90;
            
            with (obj_martlet_follower)
            {
                x = other.martlet_npc.x;
                y = other.martlet_npc.y;
                npc_reset = true;
                dir_new[1] = 90;
                image_alpha = 1;
            }
            
            instance_destroy(martlet_npc);
            instance_destroy(player_npc);
            exit;
        }
        
        break;
    
    case 4:
        scene = 0;
        npc_flag = 3;
        scr_cutscene_end();
        break;
}
