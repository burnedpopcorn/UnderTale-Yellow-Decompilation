if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (obj_pl.y <= 600)
        {
            scr_cutscene_start();
            instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            cutscene_npc_walk(obj_player_npc, 490, 520, 3, "y", "up");
            var axis = "y";
            
            if (abs(obj_martlet_follower.y - obj_pl.y) < 10)
                axis = "x";
            
            cutscene_follower_into_actor();
            cutscene_npc_walk(obj_martlet_npc, 460, 520, 3, axis, "up");
            scene = 1;
        }
        
        break;
    
    case 1:
        cutscene_camera_move(490, 400, 2);
        break;
    
    case 2:
        cutscene_wait(2);
        break;
    
    case 3:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* Wow... ";
            message[1] = "* I wish Chujin invited#  me over back in the day.";
            message[2] = "* This house is#  incredible... ";
            message[3] = "* Uh-Yeah! Let's get#  inside and see what the#  fuss is about.";
            prt[0] = spr_martlet_head_surprised;
            prt[1] = spr_martlet_head_moderate;
            prt[2] = spr_martlet_head_melancholic;
            prt[3] = spr_martlet_head_regular;
            
            if (message_current == 3)
                obj_martlet_npc.npc_direction = "right";
        }
        
        break;
    
    case 4:
        cutscene_npc_walk(obj_martlet_npc, obj_pl.x, obj_pl.y + 20, 3, "y", "up");
        break;
    
    case 5:
        cutscene_actor_into_follower();
        break;
    
    case 6:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 3);
        break;
    
    case 7:
        cutscene_camera_reset();
        break;
    
    case 8:
        instance_destroy(obj_player_npc);
        cutscene_end();
        global.dunes_flag[41] = 2;
        break;
    
    case 9:
        scr_cutscene_start();
        instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        obj_player_npc.image_alpha = 0;
        obj_player_npc.npc_direction = "down";
        instance_create(obj_pl.x, obj_pl.y, obj_martlet_npc);
        obj_martlet_npc.image_alpha = 0;
        obj_martlet_npc.npc_direction = "down";
        obj_martlet_npc.can_walk = false;
        cutscene_camera_freeze(obj_pl.x, obj_pl.y);
        break;
    
    case 10:
        with (obj_martlet_npc)
        {
            if (image_alpha < 1)
                image_alpha += 0.1;
            else
                other.scene++;
        }
        
        break;
    
    case 11:
        cutscene_npc_walk(obj_martlet_npc, 470, 445, 3, "y", "down");
        break;
    
    case 12:
        with (obj_player_npc)
        {
            if (image_alpha < 1)
                image_alpha += 0.1;
            else
                other.scene++;
        }
        
        break;
    
    case 13:
        cutscene_npc_walk(obj_player_npc, 500, 445, 3, "y", "down");
        break;
    
    case 14:
        cutscene_camera_move(485, 480, 2);
        break;
    
    case 15:
        cutscene_wait(1);
        break;
    
    case 16:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ed_npc;
            talker[5] = obj_ed_npc;
            talker[1] = obj_martlet_npc;
            talker[10] = obj_martlet_npc;
            talker[13] = obj_martlet_npc;
            talker[7] = obj_ace_npc;
            talker[11] = obj_ace_npc;
            talker[9] = obj_moray_npc;
            message[0] = "* So, you figured it out?";
            message[1] = "* ...Yes.";
            message[2] = "* Ceroba was trying to#  carry out a plan Chujin#  left for her.";
            message[3] = "* Something involving#  Clover's SOUL and a Boss#  Monster SOUL...";
            message[4] = "* ...Which happens to#  reside in Kanako.";
            message[5] = "* What the...#  So she lied to us?";
            message[6] = "* About the mission to#  retrieve Kanako?";
            message[7] = "* She wasn't lying about#  finding Kanako. ";
            message[8] = "* ...That's the alarming#  part.";
            message[9] = "* So Kanako is alive and#  well? Thank goodness...";
            message[10] = "* Alive? Am I missing#  something?";
            prt[0] = spr_portrait_ed_normal;
            prt[1] = spr_martlet_head_sad;
            prt[2] = spr_martlet_head_downer;
            prt[3] = spr_martlet_head_downer;
            prt[4] = spr_martlet_head_sad;
            prt[5] = spr_portrait_ed_mad;
            prt[6] = spr_portrait_ed_mad;
            prt[7] = spr_portrait_ace_concealed;
            prt[8] = spr_portrait_ace_hand;
            prt[9] = spr_portrait_moray_plain;
            prt[10] = spr_martlet_head_confused;
            prt[11] = spr_portrait_ace_stern;
            prt[12] = spr_portrait_ace_stern;
            prt[13] = spr_martlet_head_surprised;
            prt[14] = spr_martlet_head_sad;
            
            switch (message_current)
            {
                case 7:
                    obj_ace_npc.npc_direction = "left";
                    break;
                
                case 9:
                    obj_ace_npc.npc_direction = "up";
                    obj_moray_npc.npc_direction = "left";
                    break;
                
                case 10:
                    obj_moray_npc.npc_direction = "up";
            }
        }
        
        break;
    
    case 17:
        cutscene_wait(1);
        break;
    
    case 18:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[2] = obj_martlet_npc;
            talker[0] = obj_ace_npc;
            message[0] = "* It's a long story...#  She fell down some time#  ago.";
            message[1] = "* Ceroba sent her to the#  Lab in hopes to remedy#  the situation.";
            message[2] = "* I had no idea...";
            message[3] = "* ...";
            prt[0] = spr_portrait_ace_stern;
            prt[1] = spr_portrait_ace_stern;
            prt[2] = spr_martlet_head_surprised;
            prt[3] = spr_martlet_head_sad;
            
            switch (message_current)
            {
                case 3:
                    obj_martlet_npc.npc_direction = "left";
                    break;
            }
        }
        
        break;
    
    case 19:
        cutscene_wait(1);
        break;
    
    case 20:
        cutscene_npc_direction(obj_martlet_npc, "down");
        break;
    
    case 21:
        cutscene_dialogue();
        
        with (msg)
        {
            color = true;
            ch_msg = 15;
            col_modif[0] = c_yellow;
            ch[1] = "The Lab,\nmost likely";
            message[0] = "* Okay. Where was the#  last place you saw#  Ceroba go, Ed?";
            message[1] = "* You ain't takin' Clover#  straight to her, are ya?";
            message[2] = "* That's exactly what she#  wants, right?";
            message[3] = "* Yeah, Clover needs to#  stay safe with us! ";
            message[4] = "* She can't accomplish#  her goal if Clover's#  nowhere to be found!";
            message[5] = "* We aren't going to let#  her accomplish her goal.#  And anyway...";
            message[6] = "* The Wild East is a#  tourist destination -#  a public place.";
            message[7] = "* My colleagues probably#  know a human is in the#  Underground by now.";
            message[8] = "* If Clover stayed here#  they would eventually#  tear the town up!";
            message[9] = "* Better to be on the#  move, yeah?";
            message[10] = "* I-";
            message[11] = "* Look, I need to fly#  ahead to scout out the#  situation.";
            message[12] = "* So, again, where did#  the two go?";
            message[13] = "* I don't think";
            message[14] = "* Clover, you were there.";
            message[15] = "* Where did they go?";
            message[16] = "* That lines up...#  Hotland it is.";
            message[17] = "* Hey, I gave Star my#  word!";
            message[18] = "* Let them do it, Ed. ";
            message[19] = "* Clover is the only one#  who can put this to#  rest.";
            message[20] = "* ...";
            message[21] = "* ...Alright.";
            message[22] = "* They took the westmost#  elevator in the#  Steamworks.";
            message[23] = "* You can use a laundry#  chute to get there#  quicker.";
            message_col[23][0] = "                laundry#  chute                        ";
            message[24] = "* That elevator's#  destination sits near#  the CORE...";
            message[25] = "* Ask around if someone#  spotted which direction#  they went from there.";
            message[26] = "* Wait, we need to go#  too, right?";
            message[27] = "* You need all the help#  you can get!";
            message[28] = "* Appreciate the offer#  but please don't. This#  might get dangerous.";
            message[29] = "* Stay here and keep the#  townsfolk happy like you#  always have.";
            message[30] = "* ...Okay. But please be#  safe!";
            message[31] = "* I'll try. Thanks for#  all of your help.";
            message[32] = "* ...Even if you locked#  me in a jail cell for#  hours on end.";
            message[33] = "* Hey, what are friends#  for?";
            message[34] = "* I can think of a few#  things... I mean-yeah,#  no problem!";
            message[35] = "* Clover, meet me on the#  rooftop of UG Apartments#  asap.";
            message_col[35][0] = "                                      UG Apartments        ";
            message[36] = "* We'll figure this out,#  I promise!";
            talker[0] = obj_martlet_npc;
            talker[5] = obj_martlet_npc;
            talker[11] = obj_martlet_npc;
            talker[14] = obj_martlet_npc;
            talker[28] = obj_martlet_npc;
            talker[31] = obj_martlet_npc;
            talker[35] = obj_martlet_npc;
            talker[1] = obj_ed_npc;
            talker[10] = obj_ed_npc;
            talker[13] = obj_ed_npc;
            talker[17] = obj_ed_npc;
            talker[20] = obj_ed_npc;
            talker[3] = obj_mooch_npc;
            talker[34] = obj_mooch_npc;
            talker[18] = obj_ace_npc;
            talker[24] = obj_ace_npc;
            talker[26] = obj_moray_npc;
            talker[30] = obj_moray_npc;
            talker[33] = obj_moray_npc;
            prt[0] = spr_martlet_head_angrier;
            prt[1] = spr_portrait_ed_mad;
            prt[2] = spr_portrait_ed_normal;
            prt[3] = spr_portrait_mooch_normal;
            prt[4] = spr_portrait_mooch_smile;
            prt[5] = spr_martlet_head_angrier;
            prt[6] = spr_martlet_head_wondering;
            prt[7] = spr_martlet_head_moderate;
            prt[8] = spr_martlet_head_angrier;
            prt[9] = spr_martlet_head_determined;
            prt[10] = spr_portrait_ed_mutter;
            prt[11] = spr_martlet_head_moderate;
            prt[12] = spr_martlet_head_moderate;
            prt[13] = spr_portrait_ed_mutter;
            prt[14] = spr_martlet_head_wondering;
            prt[15] = spr_martlet_head_moderate;
            prt[16] = spr_martlet_head_wondering;
            prt[17] = spr_portrait_ed_mad;
            prt[18] = spr_portrait_ace_concealed;
            prt[19] = spr_portrait_ace_hand;
            prt[20] = spr_portrait_ed_mutter;
            prt[21] = spr_portrait_ed_mad;
            prt[22] = spr_portrait_ed_normal;
            prt[23] = spr_portrait_ed_normal;
            prt[24] = spr_portrait_ace_stern;
            prt[25] = spr_portrait_ace_stern;
            prt[26] = spr_portrait_moray_plain;
            prt[27] = spr_portrait_moray_normal;
            prt[28] = spr_martlet_head_downer;
            prt[29] = spr_martlet_head_melancholic;
            prt[30] = spr_portrait_moray_plain;
            prt[31] = spr_martlet_head_melancholic;
            prt[32] = spr_martlet_head_questioning;
            prt[33] = spr_portrait_moray_normal;
            prt[34] = spr_portrait_mooch_smirk;
            prt[35] = spr_martlet_head_moderate;
            prt[36] = spr_martlet_head_regular;
            
            switch (message_current)
            {
                case 13:
                    message_timer = 10;
                    skippable = false;
                    break;
                
                case 14:
                    message_timer = -1;
                    skippable = true;
                    obj_martlet_npc.npc_direction = "right";
                    obj_player_npc.npc_direction = "left";
                    break;
                
                case 17:
                    obj_martlet_npc.npc_direction = "down";
                    obj_player_npc.npc_direction = "down";
                    break;
                
                case 18:
                    obj_ace_npc.npc_direction = "left";
                    obj_ed_npc.npc_direction = "right";
                    break;
                
                case 21:
                    obj_ace_npc.npc_direction = "up";
                    obj_ed_npc.npc_direction = "up";
                    break;
                
                case 26:
                    obj_moray_npc.npc_direction = "left";
                    break;
                
                case 27:
                    obj_moray_npc.npc_direction = "up";
                    break;
                
                case 34:
                    obj_mooch_npc.npc_direction = "down";
                    
                    if (cutoff >= 35)
                    {
                        obj_mooch_npc.npc_direction = "up";
                        prt[34] = spr_portrait_mooch_happy;
                    }
                
                case 35:
                    obj_player_npc.npc_direction = "left";
                    obj_martlet_npc.npc_direction = "right";
                    break;
            }
        }
        
        break;
    
    case 22:
        cutscene_npc_direction(obj_player_npc, "down");
        break;
    
    case 23:
        cutscene_npc_walk(obj_martlet_npc, 485, 485, 2, "x", "down");
        break;
    
    case 24:
        cutscene_npc_action_sprite(obj_martlet_npc, spr_martlet_fly_away, 0.4, true, 0);
        break;
    
    case 25:
        scr_audio_fade_out(mus_the_trek, 1500);
        instance_destroy(obj_martlet_npc);
        cutscene_advance();
        break;
    
    case 26:
        cutscene_wait(0.75);
        break;
    
    case 27:
        cutscene_npc_walk(obj_player_npc, 485, 470, 2, "x", "down");
        break;
    
    case 28:
        cutscene_wait(0.75);
        break;
    
    case 29:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ed_npc;
            talker[1] = obj_moray_npc;
            talker[2] = obj_mooch_npc;
            talker[3] = obj_ace_npc;
            talker[4] = obj_ed_npc;
            message[0] = "* I uh... wish you luck#  with this, seriously.";
            message[1] = "* Yeah, I bet we'll all#  be catching bandits#  again shortly!";
            message[2] = "* I'll be sure to save#  you a spot at our next#  nap time!";
            message[3] = "* Just don't do anything#  stupid.";
            message[4] = "* See ya later... Deputy.";
            prt[0] = spr_portrait_ed_mutter;
            prt[1] = spr_portrait_moray_normal;
            prt[2] = spr_portrait_mooch_happy;
            prt[3] = spr_portrait_ace_hand;
            prt[4] = spr_portrait_ed_normal;
        }
        
        break;
    
    case 30:
        cutscene_npc_walk(obj_ed_npc, 490, 650, 2, "x", "down");
        scene++;
        break;
    
    case 31:
        cutscene_wait(0.65);
        break;
    
    case 32:
        cutscene_npc_walk(obj_ace_npc, 500, 650, 2, "x", "down");
        scene++;
        break;
    
    case 33:
        cutscene_wait(0.65);
        break;
    
    case 34:
        cutscene_npc_walk(obj_mooch_npc, 480, 650, 3, "x", "down");
        scene++;
        break;
    
    case 35:
        cutscene_wait(0.4);
        break;
    
    case 36:
        cutscene_npc_walk(obj_moray_npc, 490, 590, 2, "x", "down");
        break;
    
    case 37:
        cutscene_wait(0.5);
        break;
    
    case 38:
        cutscene_npc_direction(obj_moray_npc, "up");
        break;
    
    case 39:
        cutscene_wait(1);
        break;
    
    case 40:
        cutscene_npc_walk(obj_moray_npc, 490, 690, 2, "x", "down");
        break;
    
    case 41:
        with (obj_actor_npc_base)
        {
            if (object_index != obj_player_npc)
                instance_destroy();
        }
        
        scene++;
        break;
    
    case 42:
        cutscene_wait(0.5);
        break;
    
    case 43:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 1);
        break;
    
    case 44:
        cutscene_camera_reset();
        break;
    
    case 45:
        cutscene_wait(1.5);
        break;
    
    case 46:
        cutscene_npc_walk(obj_player_npc, obj_player_npc.x, 590, 2, "y", "down");
        scr_cutscene_start();
        break;
    
    case 47:
        instance_create(485, 496, obj_flowey_npc);
        obj_flowey_npc.image_alpha = 0;
        scene++;
        break;
    
    case 48:
        obj_flowey_npc.image_alpha = 1;
        obj_flowey_npc.npc_direction = "down";
        cutscene_npc_action_sprite(obj_flowey_npc, spr_floweyrise, 0.2, false);
        break;
    
    case 49:
        obj_player_npc.npc_direction = "up";
        obj_pl.direction = 90;
        scene++;
        break;
    
    case 50:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* Howdy!";
            message[1] = "* Long time no see,#  buddy!";
            message[2] = "* I've been wantin' to#  tell ya something.";
            message[3] = "* It's been weighing on#  my mind so I truly mean#  it when I say...";
            message[4] = "* Told ya so!";
            message[5] = "* Haha, sorry! Couldn't#  pass that up!";
            message[6] = "* Now I know this is the#  part I tell you to#  ignore Ceroba but...";
            message[7] = "* I have a strong feeling#  that wouldn't sway you#  at this point.";
            message[8] = "* Honestly, I'm starting#  to wanna see this play#  out!";
            message[9] = "* After all...";
            message[10] = "* That fox wants to waste#  your SOUL on a science#  fair project!";
            message[11] = "* No good!";
            message[12] = "* I'm in your corner like#  I've always been so#  don't worry!";
            message[13] = "* We'll get rid of her#  and continue down our#  path, easy peasy!";
            message[14] = "* It'll all work out in#  the end, pal! ";
            prt[0] = flowey_nice;
            prt[1] = flowey_nice;
            prt[2] = flowey_niceside;
            prt[3] = flowey_smirk;
            prt[4] = flowey_smirk;
            prt[5] = flowey_wink;
            prt[6] = flowey_niceside;
            prt[7] = flowey_nice;
            prt[8] = flowey_nice;
            prt[9] = flowey_niceside;
            prt[10] = flowey_smirk;
            prt[11] = flowey_nice;
            prt[12] = flowey_nice;
            prt[13] = flowey_nice;
            prt[14] = flowey_wink;
        }
        
        break;
    
    case 51:
        if (cutscene_npc_action_sprite_reverse(obj_flowey_npc, spr_floweyrise, 0.2, true, 0))
        {
            instance_destroy(obj_flowey_npc);
            cutscene_end();
            global.dunes_flag[41] = 6;
            global.party_member = -4;
            instance_destroy(obj_postgame_walk_blocker);
        }
        
        break;
}
