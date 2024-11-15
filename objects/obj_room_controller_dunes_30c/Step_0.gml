var axis;

if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (obj_pl.y <= 600)
        {
            scr_cutscene_start();
            instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            cutscene_npc_walk(1168, 490, 520, 3, "y", "up");
            axis = "y";
            
            if (abs(obj_martlet_follower.y - obj_pl.y) < 10)
                axis = "x";
            
            cutscene_follower_into_actor();
            cutscene_npc_walk(1164, 460, 520, 3, axis, "up");
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
            talker[0] = 1164;
            message[0] = "* Wow... ";
            message[1] = "* I wish Chujin invited#  me over back in the day.";
            message[2] = "* This house is#  incredible... ";
            message[3] = "* Uh-Yeah! Let's get#  inside and see what the#  fuss is about.";
            prt[0] = 333;
            prt[1] = 321;
            prt[2] = 320;
            prt[3] = 328;
            
            if (message_current == 3)
                obj_martlet_npc.npc_direction = "right";
        }
        
        break;
    
    case 4:
        cutscene_npc_walk(1164, obj_pl.x, obj_pl.y + 20, 3, "y", "up");
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
        cutscene_npc_walk(1164, 470, 445, 3, "y", "down");
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
        cutscene_npc_walk(1168, 500, 445, 3, "y", "down");
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
            talker[0] = 1162;
            talker[5] = 1162;
            talker[1] = 1164;
            talker[10] = 1164;
            talker[13] = 1164;
            talker[7] = 1158;
            talker[11] = 1158;
            talker[9] = 1167;
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
            prt[0] = 451;
            prt[1] = 329;
            prt[2] = 317;
            prt[3] = 317;
            prt[4] = 329;
            prt[5] = 453;
            prt[6] = 453;
            prt[7] = 437;
            prt[8] = 439;
            prt[9] = 449;
            prt[10] = 311;
            prt[11] = 435;
            prt[12] = 435;
            prt[13] = 333;
            prt[14] = 329;
            
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
            talker[2] = 1164;
            talker[0] = 1158;
            message[0] = "* It's a long story...#  She fell down some time#  ago.";
            message[1] = "* Ceroba sent her to the#  Lab in hopes to remedy#  the situation.";
            message[2] = "* I had no idea...";
            message[3] = "* ...";
            prt[0] = 435;
            prt[1] = 435;
            prt[2] = 333;
            prt[3] = 329;
            
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
        cutscene_npc_direction(1164, "down");
        break;
    
    case 21:
        cutscene_dialogue();
        
        with (msg)
        {
            color = true;
            ch_msg = 15;
            col_modif[0] = 65535;
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
            talker[0] = 1164;
            talker[5] = 1164;
            talker[11] = 1164;
            talker[14] = 1164;
            talker[28] = 1164;
            talker[31] = 1164;
            talker[35] = 1164;
            talker[1] = 1162;
            talker[10] = 1162;
            talker[13] = 1162;
            talker[17] = 1162;
            talker[20] = 1162;
            talker[3] = 1165;
            talker[34] = 1165;
            talker[18] = 1158;
            talker[24] = 1158;
            talker[26] = 1167;
            talker[30] = 1167;
            talker[33] = 1167;
            prt[0] = 308;
            prt[1] = 453;
            prt[2] = 451;
            prt[3] = 455;
            prt[4] = 462;
            prt[5] = 308;
            prt[6] = 338;
            prt[7] = 321;
            prt[8] = 308;
            prt[9] = 313;
            prt[10] = 454;
            prt[11] = 321;
            prt[12] = 321;
            prt[13] = 454;
            prt[14] = 338;
            prt[15] = 321;
            prt[16] = 338;
            prt[17] = 453;
            prt[18] = 437;
            prt[19] = 439;
            prt[20] = 454;
            prt[21] = 453;
            prt[22] = 451;
            prt[23] = 451;
            prt[24] = 435;
            prt[25] = 435;
            prt[26] = 449;
            prt[27] = 445;
            prt[28] = 317;
            prt[29] = 320;
            prt[30] = 449;
            prt[31] = 320;
            prt[32] = 324;
            prt[33] = 445;
            prt[34] = 463;
            prt[35] = 321;
            prt[36] = 328;
            
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
                        prt[34] = 458;
                    }
                
                case 35:
                    obj_player_npc.npc_direction = "left";
                    obj_martlet_npc.npc_direction = "right";
                    break;
            }
        }
        
        break;
    
    case 22:
        cutscene_npc_direction(1168, "down");
        break;
    
    case 23:
        cutscene_npc_walk(1164, 485, 485, 2, "x", "down");
        break;
    
    case 24:
        cutscene_npc_action_sprite(1164, 275, 0.4, true, 0);
        break;
    
    case 25:
        scr_audio_fade_out(568, 1500);
        instance_destroy(obj_martlet_npc);
        cutscene_advance();
        break;
    
    case 26:
        cutscene_wait(0.75);
        break;
    
    case 27:
        cutscene_npc_walk(1168, 485, 470, 2, "x", "down");
        break;
    
    case 28:
        cutscene_wait(0.75);
        break;
    
    case 29:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1162;
            talker[1] = 1167;
            talker[2] = 1165;
            talker[3] = 1158;
            talker[4] = 1162;
            message[0] = "* I uh... wish you luck#  with this, seriously.";
            message[1] = "* Yeah, I bet we'll all#  be catching bandits#  again shortly!";
            message[2] = "* I'll be sure to save#  you a spot at our next#  nap time!";
            message[3] = "* Just don't do anything#  stupid.";
            message[4] = "* See ya later... Deputy.";
            prt[0] = 454;
            prt[1] = 445;
            prt[2] = 458;
            prt[3] = 439;
            prt[4] = 451;
        }
        
        break;
    
    case 30:
        cutscene_npc_walk(1162, 490, 650, 2, "x", "down");
        scene++;
        break;
    
    case 31:
        cutscene_wait(0.65);
        break;
    
    case 32:
        cutscene_npc_walk(1158, 500, 650, 2, "x", "down");
        scene++;
        break;
    
    case 33:
        cutscene_wait(0.65);
        break;
    
    case 34:
        cutscene_npc_walk(1165, 480, 650, 3, "x", "down");
        scene++;
        break;
    
    case 35:
        cutscene_wait(0.4);
        break;
    
    case 36:
        cutscene_npc_walk(1167, 490, 590, 2, "x", "down");
        break;
    
    case 37:
        cutscene_wait(0.5);
        break;
    
    case 38:
        cutscene_npc_direction(1167, "up");
        break;
    
    case 39:
        cutscene_wait(1);
        break;
    
    case 40:
        cutscene_npc_walk(1167, 490, 690, 2, "x", "down");
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
        cutscene_npc_walk(1168, obj_player_npc.x, 590, 2, "y", "down");
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
        cutscene_npc_action_sprite(3194, 242, 0.2, false);
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
            talker[0] = 3194;
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
            prt[0] = 348;
            prt[1] = 348;
            prt[2] = 347;
            prt[3] = 349;
            prt[4] = 349;
            prt[5] = 3251;
            prt[6] = 347;
            prt[7] = 348;
            prt[8] = 348;
            prt[9] = 347;
            prt[10] = 349;
            prt[11] = 348;
            prt[12] = 348;
            prt[13] = 348;
            prt[14] = 3251;
        }
        
        break;
    
    case 51:
        if (cutscene_npc_action_sprite_reverse(3194, 242, 0.2, true, 0))
        {
            instance_destroy(obj_flowey_npc);
            cutscene_end();
            global.dunes_flag[41] = 6;
            global.party_member = -4;
            instance_destroy(obj_postgame_walk_blocker);
        }
        
        break;
}
