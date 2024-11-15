if (live_call())
    return global.live_result;

switch (scene)
{
    case -1:
        cutscene_camera_freeze(163, 240);
        break;
    
    case 0:
        cutscene_wait(1.5);
        break;
    
    case 1:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            message[0] = "* Ugh...";
            prt[0] = 416;
        }
        
        break;
    
    case 2:
        cutscene_npc_action_sprite(1169, 693, 1, false);
        break;
    
    case 3:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            message[0] = "* Ceroba...";
            prt[0] = 416;
        }
        
        break;
    
    case 4:
        cutscene_advance();
        break;
    
    case 5:
        cutscene_npc_direction(1169, "up");
        break;
    
    case 6:
        cutscene_wait(0.5);
        break;
    
    case 7:
        instance_create_depth(obj_starlo_npc.x, obj_starlo_npc.y - 40, -500, obj_cutscene_ex);
        cutscene_sfx_play(362, 0.7);
        break;
    
    case 8:
        cutscene_wait(0.8);
        break;
    
    case 9:
        instance_destroy(obj_cutscene_ex);
        cutscene_npc_walk(1169, 192, obj_starlo_npc.y, 3, "x", "up");
        break;
    
    case 10:
        cutscene_wait(0.5);
        break;
    
    case 11:
        cutscene_npc_direction(1169, "right");
        break;
    
    case 12:
        cutscene_wait(0.5);
        break;
    
    case 13:
        cutscene_npc_direction(1169, "down");
        break;
    
    case 14:
        cutscene_wait(0.5);
        break;
    
    case 15:
        cutscene_npc_direction(1169, "up");
        break;
    
    case 16:
        cutscene_wait(0.5);
        break;
    
    case 17:
        cutscene_npc_direction(1169, "left");
        break;
    
    case 18:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            message[0] = "* Where is Ceroba!?";
            message[1] = "* Clover?";
            message[2] = "* Clover, where did she#  go?";
            prt[0] = 421;
            prt[1] = 418;
            prt[2] = 416;
            ch_msg = 2;
            ch[1] = "...";
            ch[2] = "I'm sorry";
            
            if (outcome == 1)
            {
                show_debug_message("peep");
                message[3] = "* You...";
                prt[3] = 416;
            }
            
            if (outcome == 2)
            {
                message[3] = "* Sorry...?";
                prt[3] = 416;
            }
            
            message[4] = "* ...";
            message[5] = "* No...";
            prt[4] = 420;
            prt[5] = 416;
        }
        
        break;
    
    case 19:
        cutscene_npc_direction(1169, "up");
        break;
    
    case 20:
        cutscene_wait(0.5);
        break;
    
    case 21:
        cutscene_npc_walk(1169, 163, 255, 2, "y", "up");
        break;
    
    case 22:
        cutscene_npc_action_sprite(1169, 3725, 1, true, 0);
        break;
    
    case 23:
        cutscene_wait(1);
        break;
    
    case 24:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            message[0] = "* You didn't.";
            message[1] = "* You couldn't.";
            prt[0] = 416;
            prt[1] = 418;
        }
        
        break;
    
    case 25:
        cutscene_npc_action_sprite(1169, 2982, 1, true, 0);
        
        if (obj_starlo_npc.image_index >= 9)
            instance_destroy(obj_newhome_03_cutscene_mask);
        
        break;
    
    case 26:
        cutscene_wait(1);
        break;
    
    case 27:
        cutscene_npc_set_sprites(1169, 345, 345, 695, 345, 345, 345, 345, 345);
        obj_starlo_npc.npc_direction = "down";
        obj_starlo_npc.action_sprite = false;
        break;
    
    case 28:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            message[0] = "* She just ran away.";
            message[1] = "* She ran to the lab,#  right?";
            prt[0] = 416;
            prt[1] = 418;
        }
        
        break;
    
    case 29:
        cutscene_wait(0.5);
        break;
    
    case 30:
        cutscene_npc_action_sprite(1164, 3388, 1, true, 0);
        break;
    
    case 31:
        with (obj_cutscene_ex)
            instance_destroy();
        
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* Wh...";
            message[1] = "* Where am I...?";
            prt[0] = 315;
            prt[1] = 315;
        }
        
        obj_player_npc.npc_direction = "left";
        break;
    
    case 32:
        instance_create_depth(65, 255, -500, obj_cutscene_ex);
        cutscene_sfx_play(362, 0.7);
        break;
    
    case 33:
        if (cutscene_npc_action_sprite(1164, 2970, 1, true, 0))
            obj_martlet_npc.action_sprite = false;
        
        if (obj_martlet_npc.image_index > 9)
        {
            with (obj_cutscene_ex)
                instance_destroy();
        }
        
        break;
    
    case 34:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* Clover!";
            prt[0] = 330;
        }
        
        break;
    
    case 35:
        cutscene_npc_walk(1164, obj_player_npc.x - 30, obj_martlet_npc.y, 4, "x", "right");
        break;
    
    case 36:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* Are you...";
            prt[0] = 322;
            skippable = false;
            message_timer = 20;
        }
        
        break;
    
    case 37:
        cutscene_instance_create(obj_martlet_npc.x, obj_martlet_npc.y - 40, obj_cutscene_ex);
        audio_play_sound(snd_encounter, 1, 0);
        break;
    
    case 38:
        cutscene_wait(0.3);
        break;
    
    case 39:
        cutscene_npc_direction(1164, "up");
        break;
    
    case 40:
        cutscene_wait(0.5);
        break;
    
    case 41:
        instance_destroy(obj_cutscene_ex);
        cutscene_advance();
        break;
    
    case 42:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            talker[3] = 1169;
            talker[4] = 1164;
            talker[6] = 1169;
            talker[8] = 1164;
            talker[12] = 1169;
            talker[26] = 1164;
            talker[37] = 1169;
            message[0] = "* ...";
            message[1] = "* I'm so sorry.";
            message[2] = "* We should've been here#  to help.";
            message[3] = "* Help...?";
            message[4] = "* ...";
            message[5] = "* No one wanted it to end#  this way but...";
            message[6] = "* But what!?";
            message[7] = "* What the hell did#  Ceroba do to deserve#  this!?";
            message[8] = "* I didn't say she#  \"deserved\" anything but#  come on!";
            message[9] = "* Look what she did to#  us, and more#  importantly,";
            message[10] = "* What she was planning#  to do to Clover and#  Kanako!";
            message[11] = "* She was clearly";
            message[12] = "* She was lost!";
            message[13] = "* In her mind there was#  no other choice!";
            message[14] = "* ...";
            message[15] = "* All anyone ever sees is#  what they want to see.";
            message[16] = "* They never stop to#  consider the \"why.\"";
            message[17] = "* Maybe to you, she was#  only some violent threat#  but...";
            message[18] = "* Beneath the crisis, I#  saw her for who she#  truly was.";
            message[19] = "* A compassionate,#  hardworking mother who#  lost everything.";
            message[20] = "* Her hopes, her dreams...";
            message[21] = "* ...";
            message[22] = "* I knew her.";
            message[23] = "* I knew her more than#  anyone.";
            message[24] = "* She could've been#  talked down. Forgiven#  even. ";
            message[25] = "* But she wasn't given#  the chance.";
            message[26] = "* ...";
            message[27] = "* We tried. For a long#  time. ";
            message[28] = "* We wanted peace.";
            message[29] = "* You saw it.";
            message[30] = "* Even when things#  escalated, we attempted#  to flee.";
            message[31] = "* But she wanted us dead.";
            message[32] = "* Going as far to back#  Clover into a corner,#  forcing them to...";
            message[33] = "* ...";
            message[34] = "* You're a lawman, right?";
            message[35] = "* I'm sorry but...";
            message[36] = "* Under these#  circumstances... Clover#  was just.";
            message[37] = "* I don't know what#  \"just\" means anymore.";
            message[38] = "* What's right, what's#  wrong...";
            message[39] = "* Who cares...";
            message[40] = "* All I know is that I...#  I lost my best friend#  tonight.";
            message[41] = "* And the wind...";
            message[42] = "* It blew the dust away.";
            message[43] = "* Like she didn't even#  matter...";
            prt[0] = 333;
            prt[1] = 317;
            prt[2] = 329;
            prt[3] = 416;
            prt[4] = 317;
            prt[5] = 317;
            prt[6] = 403;
            prt[7] = 403;
            prt[8] = 309;
            prt[9] = 309;
            prt[10] = 309;
            prt[11] = 309;
            prt[12] = 403;
            prt[13] = 403;
            prt[14] = 416;
            prt[15] = 416;
            prt[16] = 416;
            prt[17] = 418;
            prt[18] = 418;
            prt[19] = 418;
            prt[20] = 406;
            prt[21] = 406;
            prt[22] = 416;
            prt[23] = 416;
            prt[24] = 418;
            prt[25] = 418;
            prt[26] = 317;
            prt[27] = 317;
            prt[28] = 329;
            prt[29] = 317;
            prt[30] = 317;
            prt[31] = 315;
            prt[32] = 315;
            prt[33] = 329;
            prt[34] = 321;
            prt[35] = 338;
            prt[36] = 321;
            prt[37] = 418;
            prt[38] = 418;
            prt[39] = 416;
            prt[40] = 416;
            prt[41] = 416;
            prt[42] = 416;
            prt[43] = 416;
            
            if (message_current == 1)
                obj_martlet_npc.npc_direction = "right";
            
            if (message_current == 3)
            {
                obj_player_npc.npc_direction = "up";
                obj_martlet_npc.npc_direction = "up";
            }
            
            if (message_current == 11)
            {
                skippable = false;
                message_timer = 10;
            }
            else
            {
                skippable = true;
                message_timer = -1;
            }
        }
        
        break;
    
    case 43:
        cutscene_wait(1);
        break;
    
    case 44:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            message[0] = "* To the law, maybe you#  are justified in what#  you've done.";
            message[1] = "* But to me... you're#  lower than dirt.";
            prt[0] = 416;
            prt[1] = 418;
        }
        
        break;
    
    case 45:
        cutscene_wait(1);
        break;
    
    case 46:
        if (obj_starlo_npc.y > (obj_martlet_npc.y - 40))
            obj_martlet_npc.npc_direction = "right";
        
        cutscene_npc_walk(1169, obj_starlo_npc.x, obj_player_npc.y - 30, 1, "y", "down");
        break;
    
    case 47:
        cutscene_wait(1);
        break;
    
    case 48:
        cutscene_npc_walk_relative(1168, 30, 0, 2, "x", "left");
        break;
    
    case 49:
        if (obj_starlo_npc.y > (obj_martlet_npc.y + 40))
        {
            obj_martlet_npc.npc_direction = "down";
            obj_player_npc.npc_direction = "down";
        }
        
        cutscene_npc_walk(1169, obj_starlo_npc.x, 340, 1, "y", "down");
        break;
    
    case 50:
        cutscene_wait(1);
        break;
    
    case 51:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            message[0] = "* ...";
            message[1] = "* I could report your#  location...";
            message[2] = "* Or try to get#  revenge...";
            message[3] = "* But I know that would#  only spell more trouble#  for me.";
            message[4] = "* ...";
            message[5] = "* All I can do now is ask#  myself why.";
            message[6] = "* Why did I hesitate to#  fire that last bullet?";
            prt[0] = 416;
            prt[1] = 416;
            prt[2] = 416;
            prt[3] = 416;
            prt[4] = 416;
            prt[5] = 416;
            prt[6] = 418;
        }
        
        break;
    
    case 52:
        cutscene_npc_walk(1169, obj_starlo_npc.x, 420, 1, "y", "down");
        break;
    
    case 53:
        cutscene_wait(1);
        break;
    
    case 54:
        cutscene_npc_direction(1164, "right");
        break;
    
    case 55:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* ...";
            message[1] = "* I'm... sorry you had to#  go through all of this.";
            message[2] = "* Maybe if we took a#  different route in#  Waterfall...";
            message[3] = "* Made different#  choices...";
            message[4] = "* You wouldn't have been#  put in this situation.";
            message[5] = "* ...";
            message[6] = "* This spiraled way out#  of control but...";
            message[7] = "* There's no changing it#  now.";
            message[8] = "* Only thing left to do#  is get you home.";
            message[9] = "* You deserve it.";
            prt[0] = 315;
            prt[1] = 317;
            prt[2] = 329;
            prt[3] = 329;
            prt[4] = 317;
            prt[5] = 317;
            prt[6] = 317;
            prt[7] = 315;
            prt[8] = 329;
            prt[9] = 320;
            
            if (message_current == 1)
                obj_player_npc.npc_direction = "left";
        }
        
        break;
    
    case 56:
        cutscene_npc_walk(1164, obj_player_npc.x + 30, obj_player_npc.y, 3, "x", "left");
        break;
    
    case 57:
        global.party_member = 1170;
        actor_follower = 1164;
        obj_pl.direction = 180;
        cutscene_actor_into_follower();
        break;
    
    case 58:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = 102;
            message[0] = "* Let's go to the Castle.";
            prt[0] = 321;
        }
        
        break;
    
    case 59:
        instance_destroy(obj_starlo_npc);
        cutscene_camera_move(obj_pl.x, obj_pl.y, 1, 0);
        break;
    
    case 60:
        instance_destroy(obj_starlo_npc);
        global.hotland_flag[10] = 1;
        layer_set_visible("overlay_2", false);
        cutscene_camera_reset(true);
        cutscene_end();
        break;
}
