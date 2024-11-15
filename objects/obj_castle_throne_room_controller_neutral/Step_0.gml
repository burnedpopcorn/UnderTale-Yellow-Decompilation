if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        cutscene_wait(1);
        break;
    
    case 1:
        cutscene_npc_walk(1164, 160, 380, 2, "x", "up");
        cutscene_wait(0.25);
        break;
    
    case 2:
        cutscene_npc_walk(1168, 160, 400, 2, "y", "up", -4);
        break;
    
    case 3:
        cutscene_wait(1);
        break;
    
    case 4:
        cutscene_camera_move(obj_martlet_npc.x, obj_asgore_npc.y - 20, 1);
        break;
    
    case 5:
        cutscene_wait(1);
        break;
    
    case 6:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 959;
            talker[1] = 1164;
            talker[3] = 959;
            message[0] = "* Dum dee dum...";
            message[1] = "* Um... Excuse me?";
            message[2] = "* King?";
            message[3] = "* Oh?";
            message[4] = "* A visitor? At this#  hour?";
            prt[1] = 317;
            prt[2] = 317;
        }
        
        break;
    
    case 7:
        cutscene_wait(0.5);
        break;
    
    case 8:
        cutscene_npc_direction(959, "right");
        break;
    
    case 9:
        cutscene_wait(0.5);
        break;
    
    case 10:
        cutscene_npc_direction(959, "down");
        break;
    
    case 11:
        cutscene_wait(0.5);
        break;
    
    case 12:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            talker[2] = 959;
            talker[4] = 1164;
            talker[7] = 959;
            talker[10] = 1164;
            message[0] = "* H-Hello Mr. King, sir.";
            message[1] = "* It is an honor to be   ";
            message[2] = "* No need to be so#  formal.";
            message[3] = "* You can just call me#  \"Asgore\" if you like.";
            message[4] = "* Right!";
            message[5] = "* Asgore, King, sir.";
            message[6] = "* I am Martlet of the#  Royal Guard Snowdin#  Division.";
            message[7] = "* Ah yes! One of our#  courageous guards.";
            message[8] = "* Thank you for your#  service to the#  Underground!";
            message[9] = "* What brings you to the#  Castle so late?";
            message[10] = "* W-Well...";
            prt[0] = 323;
            prt[1] = 322;
            prt[2] = 1803;
            prt[3] = 1803;
            prt[4] = 330;
            prt[5] = 322;
            prt[6] = 321;
            prt[7] = 1803;
            prt[8] = 1803;
            prt[9] = 1803;
            prt[10] = 329;
            
            if (message_current == 1)
                message_timer = 15;
            else
                message_timer = -1;
        }
        
        break;
    
    case 13:
        cutscene_wait(0.5);
        break;
    
    case 14:
        cutscene_npc_walk(1164, 130, 380, 1, "x", "down");
        break;
    
    case 15:
        cutscene_wait(1);
        break;
    
    case 16:
        cutscene_npc_walk(1168, 160, 380, 1, "y", "up");
        
        if (obj_player_npc.y < (obj_martlet_npc.y + 10))
            obj_martlet_npc.npc_direction = "right";
        
        break;
    
    case 17:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* This human brings me to#  the Castle.";
            prt[0] = 321;
        }
        
        break;
    
    case 18:
        obj_asgore_npc.down_sprite_idle = spr_asgore_walk_down_sad;
        obj_asgore_npc.up_sprite = spr_asgore_walk_down_sad;
        cutscene_npc_walk_relative(959, 0, -30, 1, "y", "down");
        break;
    
    case 19:
        cutscene_wait(1);
        break;
    
    case 20:
        obj_martlet_npc.npc_direction = "up";
        cutscene_dialogue();
        
        with (msg)
        {
            position_array[0] = 1;
            position_array[1] = 0;
            talker[0] = 1164;
            talker[1] = 959;
            message[0] = "* Their name is#  Clover.";
            message[1] = "* Clover...";
            prt[0] = 323;
            prt[1] = 1803;
            
            if (message_current == 1)
                obj_asgore_npc.down_sprite_idle = spr_asgore_talking_down;
        }
        
        break;
    
    case 21:
        cutscene_npc_direction(959, "right");
        break;
    
    case 22:
        cutscene_wait(1);
        break;
    
    case 23:
        obj_asgore_npc.down_sprite_idle = spr_asgore_talking_down_happy;
        obj_asgore_npc.up_sprite = spr_asgore_walk_up;
        cutscene_npc_direction(959, "down");
        break;
    
    case 24:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 959;
            talker[1] = 1164;
            talker[3] = 959;
            talker[4] = 1164;
            talker[7] = 959;
            position_array[0] = 0;
            position_array[1] = 1;
            position_array[2] = 1;
            position_array[3] = 0;
            position_array[4] = 1;
            position_array[5] = 1;
            position_array[6] = 1;
            position_array[7] = 0;
            position_array[8] = 0;
            message[0] = "* What a lovely name...";
            message[1] = "* I apologize for the#  lack of notice!";
            message[2] = "* I know this may be a#  shock but...";
            message[3] = "* Were you, by chance,#  not given a Royal Guard#  handbook?";
            message[4] = "* A handbook?";
            message[5] = "* Sure, I was given a#  handbook.";
            message[6] = "* Not sure I'm following.";
            message[7] = "* Ah...";
            message[8] = "* Hmm... ";
            prt[0] = 1803;
            prt[1] = 322;
            prt[2] = 323;
            prt[3] = 1803;
            prt[4] = 330;
            prt[5] = 322;
            prt[6] = 322;
            prt[7] = 3393;
            prt[8] = 864;
        }
        
        break;
    
    case 25:
        cutscene_npc_direction(959, "left");
        break;
    
    case 26:
        cutscene_wait(1);
        break;
    
    case 27:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 959;
            talker[2] = 1164;
            talker[13] = 959;
            message[0] = "* So you are familiar#  with the protocol...";
            message[1] = "* Yet... here you are.";
            prt[0] = 864;
            prt[1] = 1803;
            message[2] = "* I know how it looks.";
            message[3] = "* But you see...";
            message[4] = "* Clover is not a bad#  person.";
            message[5] = "* I-In fact, they are one#  of the kindest souls#  around!";
            message[6] = "* So many have attacked#  them with ill intent... ";
            message[7] = "* But Clover is peaceful.";
            message[8] = "* ...As much as one can#  be in such situations.";
            message[9] = "* What I'm trying to say#  is... ";
            message[10] = "* Clover believes in#  what's best for others.#  Even monsters.";
            message[11] = "* And... ";
            message[12] = "* They need to go home.#  Back to the#  Surface.";
            message[13] = "* Back to the Surface...";
            prt[2] = 317;
            prt[3] = 329;
            prt[4] = 317;
            prt[5] = 320;
            prt[6] = 329;
            prt[7] = 320;
            prt[8] = 323;
            prt[9] = 329;
            prt[10] = 321;
            prt[11] = 338;
            prt[12] = 321;
            prt[13] = 864;
            position_array[0] = 0;
            position_array[1] = 0;
            position_array[2] = 1;
            position_array[3] = 1;
            position_array[4] = 1;
            position_array[5] = 1;
            position_array[6] = 1;
            position_array[7] = 1;
            position_array[8] = 1;
            position_array[9] = 1;
            position_array[10] = 1;
            position_array[11] = 1;
            position_array[12] = 1;
            position_array[13] = 0;
        }
        
        break;
    
    case 28:
        cutscene_wait(0.5);
        break;
    
    case 29:
        cutscene_npc_direction(959, "down");
        break;
    
    case 30:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 959;
            talker[3] = 1164;
            talker[5] = 959;
            talker[9] = 1164;
            talker[11] = 959;
            talker[14] = 1164;
            message[0] = "* ...";
            message[1] = "* If only such a thing#  were so easy.";
            message[2] = "* But you of all monsters#  must know the reality.";
            message[3] = "* Clover is different!";
            message[4] = "* This is different!";
            message[5] = "* No...";
            message[6] = "* Regrettably...";
            message[7] = "* The one thing these#  encounters never are is#  \"different.\"";
            message[8] = "* Not in the end.";
            message[9] = "* Wh... What are you#  saying?";
            message[10] = "* You aren't going to#  kill Clover are you!?";
            message[11] = "* . .";
            message[12] = "* If that is the result#  of our battle...";
            message[13] = "* It must be.";
            message[14] = "* NO!!";
            message[15] = "* You can't do that!!";
            message[16] = "* Clover!";
            message[17] = "* Plead your case! Come#  on!!";
            prt[0] = 3090;
            prt[1] = 1923;
            prt[2] = 1803;
            prt[3] = 309;
            prt[4] = 309;
            prt[5] = 3090;
            prt[6] = 3090;
            prt[7] = 3107;
            prt[8] = 3597;
            prt[9] = 332;
            prt[10] = 333;
            prt[11] = 3090;
            prt[12] = 3090;
            prt[13] = 3597;
            prt[14] = 332;
            prt[15] = 309;
            prt[16] = 317;
            prt[17] = 329;
            position_array[0] = 0;
            position_array[1] = 0;
            position_array[2] = 0;
            position_array[3] = 1;
            position_array[4] = 1;
            position_array[5] = 0;
            position_array[6] = 0;
            position_array[7] = 0;
            position_array[8] = 0;
            position_array[9] = 1;
            position_array[10] = 1;
            position_array[11] = 0;
            position_array[12] = 0;
            position_array[13] = 0;
            position_array[14] = 1;
            position_array[15] = 1;
            position_array[16] = 1;
            position_array[17] = 1;
            
            if (message_current == 16)
                obj_martlet_npc.npc_direction = "right";
        }
        
        break;
    
    case 32:
        cutscene_npc_action_sprite(1168, 3758, 1, false);
        
        if (obj_player_npc.image_index >= 3)
        {
            obj_player_npc.image_index = 3;
            obj_player_npc.image_speed = 0;
            cutscene_advance();
        }
        
        break;
    
    case 31:
        cutscene_wait(1);
        break;
    
    case 33:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* What are you doing??";
            message[1] = "* Say something!";
            prt[0] = 333;
            prt[1] = 329;
        }
        
        break;
    
    case 34:
        if (obj_player_npc.image_speed == 0)
            obj_player_npc.image_speed = 1;
        
        cutscene_npc_action_sprite(1168, 3758, 1, false);
        break;
    
    case 35:
        cutscene_wait(0.5);
        break;
    
    case 36:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "";
            
            if (alpha_fade == false)
            {
                alpha_fade = true;
                ch_alpha = 0;
                ch_delay = 30;
            }
            
            skippable = false;
            ch[1] = "...";
            ch[2] = "You\nshould go";
            ch_msg = 0;
            
            if (outcome != 0)
            {
                choice = false;
                ch_delay = 0;
                alpha_fade = false;
            }
            
            if (outcome == 1)
                other.scene = 38;
            else if (outcome == 2)
                other.scene = 37;
        }
        
        break;
    
    case 37:
        if (!instance_exists(obj_dialogue))
        {
            obj_martlet_npc.left_sprite = spr_martlet_right;
            cutscene_npc_walk_relative(1164, -10, 0, 0.5, "x", "right");
        }
        
        break;
    
    case 38:
        cutscene_wait(1);
        break;
    
    case 39:
        cutscene_dialogue();
        
        if (!variable_instance_exists(id, "noloop_count"))
            noloop_count = 0;
        
        with (msg)
        {
            talker[0] = 1164;
            talker[3] = 959;
            talker[5] = 1164;
            message[0] = "* Clover...";
            message[1] = "* You're...";
            message[2] = "* You can't...";
            message[3] = "* The human has spoken.";
            message[4] = "* I am sorry.";
            message[5] = "* N-No...";
            message[6] = "* This isn't how this...";
            prt[0] = 332;
            prt[1] = 330;
            prt[2] = 330;
            prt[3] = 3090;
            prt[4] = 1803;
            prt[5] = 317;
            prt[6] = 329;
            position_array[0] = 1;
            position_array[1] = 1;
            position_array[2] = 1;
            position_array[3] = 0;
            position_array[4] = 0;
            position_array[5] = 1;
            position_array[6] = 1;
            
            if (message_current == 5)
            {
                skippable = false;
                message_timer = 30;
                
                if (other.noloop_count == 0)
                {
                    other.noloop_count = 1;
                    obj_martlet_npc.x_dest[0] = obj_martlet_npc.x - 10;
                    obj_martlet_npc.can_walk = true;
                }
            }
            
            if (message_current == 6)
            {
                skippable = false;
                message_timer = 30;
                
                if (other.noloop_count == 1)
                {
                    other.noloop_count = 2;
                    obj_martlet_npc.x_dest[0] = obj_martlet_npc.x - 10;
                    obj_martlet_npc.can_walk = true;
                }
            }
        }
        
        break;
    
    case 40:
        cutscene_wait(1);
        break;
    
    case 41:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* L-Let's go back.";
            message[1] = "* Back to Snowdin.";
            message[2] = "* You can live w-with me.";
            message[3] = "* Like nothing ever#  happened...";
            prt[0] = 329;
            prt[1] = 322;
            prt[2] = 322;
            prt[3] = 323;
            ch_msg = 3;
            ch[1] = "...";
        }
        
        break;
    
    case 42:
        cutscene_wait(1);
        break;
    
    case 43:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* I...";
            message[1] = "* I...";
            prt[0] = 329;
            prt[1] = 317;
            
            if (message_current == 0)
                obj_martlet_npc.npc_direction = "down";
            
            if (message_current == 1)
                obj_martlet_npc.npc_direction = "left";
        }
        
        break;
    
    case 44:
        obj_martlet_npc.npc_direction = "right";
        cutscene_wait(2);
        break;
    
    case 45:
        obj_martlet_npc.down_sprite = spr_endingb_martlet_walkaway1;
        cutscene_npc_walk_relative(1164, 0, 30, 0.5, "y", "down");
        break;
    
    case 46:
        cutscene_npc_action_sprite(1164, 1631, 1, false);
        obj_martlet_npc.down_sprite = spr_endingb_martlet_walkaway3;
        obj_martlet_npc.down_sprite_idle = spr_endingb_martlet_walkaway3;
        break;
    
    case 47:
        cutscene_npc_walk_relative(1164, 0, 100, 0.5, "y", "down");
        break;
    
    case 48:
        cutscene_wait(1.5);
        break;
    
    case 49:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 0;
            talker[0] = 959;
            message[0] = "* . .";
            message[1] = "* Hm.";
            message[2] = "* You are a decisive one.";
            message[3] = "* . .";
            message[4] = "* Then you know what we#  must do.";
            message[5] = "* Please... follow me#  into the next room.";
            prt[0] = 3090;
            prt[1] = 3393;
            prt[2] = 1803;
            prt[3] = 3090;
            prt[4] = 1803;
            prt[5] = 1803;
            
            if (message_current == 2)
                obj_martlet_npc.npc_direction = "left";
        }
        
        break;
    
    case 50:
        cutscene_npc_walk(959, 110, 120, 1, "x", "down");
        cutscene_wait(0.5);
        break;
    
    case 51:
        cutscene_npc_walk(1168, 110, 145, 1, "x", "up");
        cutscene_advance();
        break;
    
    case 52:
        cutscene_wait(0.5);
        break;
    
    case 53:
        if (cutscene_camera_move(obj_camera.x, 120, 1, true) && cutscene_npc_walk(959, 110, 120, 2, "x", "up") && cutscene_npc_walk(1168, 110, 145, 2, "x", "up"))
            cutscene_advance(54);
        
        break;
    
    case 54:
        cutscene_wait(2);
        break;
    
    case 55:
        obj_asgore_npc.npc_direction = "up";
        cutscene_change_room(273, 150, 240, 0.1);
        break;
}
