if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (obj_pl.x > 340)
        {
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        break;
    
    case 2:
        cutscene_npc_direction(obj_player_npc, "right");
        break;
    
    case 3:
        cutscene_follower_into_actor();
        break;
    
    case 4:
        cutscene_npc_walk(actor_follower, 370, 150, 3, "y", "up");
        break;
    
    case 5:
        cutscene_wait(0.25);
        break;
    
    case 6:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* \"Metalworks Emergency Escape#  Plan (or MEEP):";
            message[1] = "* In case someone sets the room#  on fire, do not use the#  elevator.";
            message[2] = "* Evacuate down to floor 01 or#  use a passcode to access floor#  03.\"";
            position = 0;
        }
        
        break;
    
    case 7:
        cutscene_wait(0.75);
        break;
    
    case 8:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Uh huh...";
            message[1] = "* They REALLY locked this#  place up tight.";
            message[2] = "* Well, if the code was#  found nearby on the#  first floor...";
            message[3] = "* Let's take a look#  around.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            prt[1] = spr_portrait_ceroba_disapproving;
            prt[2] = spr_portrait_ceroba_neutral;
            prt[3] = spr_portrait_ceroba_alt;
            position = 0;
            
            if (message_current == 3)
                obj_ceroba_npc.npc_direction = "left";
        }
        
        break;
    
    case 9:
        cutscene_npc_walk(actor_follower, obj_pl.x - 20, obj_pl.y, 3, "y", "right");
        break;
    
    case 10:
        instance_destroy(obj_player_npc);
        cutscene_actor_into_follower();
        scr_cutscene_end();
        global.sworks_flag[37] = 0.5;
        break;
    
    case 11:
        if (obj_pl.y >= 430)
        {
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 12:
        cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        break;
    
    case 13:
        cutscene_follower_into_actor();
        break;
    
    case 14:
        cutscene_npc_walk(obj_player_npc, 370, 480, 2, "y", "down");
        cutscene_npc_walk(obj_ceroba_npc, 390, 480, 2, "x", "down");
        scene++;
        break;
    
    case 15:
        if (obj_player_npc.npc_arrived && obj_ceroba_npc.npc_arrived)
            scene++;
        
        break;
    
    case 16:
        cutscene_instance_create(370, 640, obj_axis_npc);
        break;
    
    case 17:
        cutscene_music_start(219, 500);
        break;
    
    case 18:
        cutscene_npc_walk(obj_axis_npc, 370, 580, 3, "x", "up");
        break;
    
    case 19:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            talker[1] = obj_ceroba_npc;
            talker[3] = obj_axis_npc;
            talker[4] = obj_ceroba_npc;
            talker[5] = obj_axis_npc;
            talker[7] = obj_ceroba_npc;
            talker[8] = obj_axis_npc;
            message[0] = "* THERE YOU ARE.";
            message[1] = "* No way...";
            message[2] = "* You seriously want to do#  this again?";
            message[3] = "* YES.";
            message[4] = "* Remember the explosion#  that incapacited you?";
            message[5] = "* YES.";
            message[6] = "* I RETRIEVED BRAND NEW#  HANDS. I AM UNSTOPPABLE#  NOW.";
            message[7] = "* Look, at some point you#  need to gi   ";
            message[8] = "* SHUSH.";
            message[9] = "* DO NOT RESIST ARREST ANY#  LONGER.";
            message[10] = "* STAND STILL AND LET MY#  HANDSOME HANDS SHINE.";
            prt[0] = spr_portrait_axis_normal;
            prt[1] = spr_portrait_ceroba_closed_eyes;
            prt[2] = spr_portrait_ceroba_alt;
            prt[3] = spr_portrait_axis_normal;
            prt[4] = spr_portrait_ceroba_alt;
            prt[5] = spr_portrait_axis_normal;
            prt[6] = spr_portrait_axis_normal;
            prt[7] = spr_portrait_ceroba_closed_eyes;
            prt[8] = spr_portrait_axis_normal;
            prt[9] = spr_portrait_axis_normal;
            prt[10] = spr_portrait_axis_normal;
            position_array[0] = 1;
            position_array[1] = 0;
            position_array[2] = 0;
            position_array[3] = 1;
            position_array[4] = 0;
            position_array[5] = 1;
            position_array[6] = 1;
            position_array[7] = 0;
            position_array[8] = 1;
            position_array[9] = 1;
            position_array[10] = 1;
            
            if (message_current == 7)
            {
                skippable = false;
                
                if (cutoff >= string_length(message[message_current]))
                    force_skip = true;
            }
            else
            {
                skippable = true;
            }
        }
        
        break;
    
    case 20:
        cutscene_npc_walk(obj_axis_npc, 370, 530, 5, "x", "up");
        break;
    
    case 21:
        audio_stop_sound(cutscene_music);
        cutscene_npc_action_sprite(obj_axis_npc, spr_axis_falls_up, 1, true, 0, snd_electric_flash, 1);
        
        with (obj_factory_wire)
        {
            if (sprite_index != spr_factory_03_axis_wire_disconnect)
            {
                image_index = 0;
                image_speed = 1;
                sprite_index = spr_factory_03_axis_wire_disconnect;
            }
        }
        
        break;
    
    case 22:
        cutscene_wait(1);
        break;
    
    case 23:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            talker[1] = obj_ceroba_npc;
            message[0] = "* [shoot]";
            message[1] = "* (Pst, Clover!#  This way!)";
            prt[0] = spr_portrait_axis_normal;
            prt[1] = spr_portrait_ceroba_neutral;
        }
        
        break;
    
    case 24:
        var scene_start = scene;
        cutscene_camera_freeze();
        cutscene_npc_walk(obj_player_npc, 540, 480, 5, "y", "left");
        cutscene_npc_walk(obj_ceroba_npc, 540, 480, 5, "x", "left");
        scene = scene_start + 1;
        break;
    
    case 25:
        if (obj_player_npc.npc_arrived && obj_ceroba_npc.npc_arrived)
        {
            obj_ceroba_npc.y = 458;
            obj_player_npc.y = 458;
            scene++;
        }
        
        break;
    
    case 26:
        cutscene_npc_reset_sprite(obj_axis_npc, "down");
        break;
    
    case 27:
        cutscene_dialogue();
        
        with (msg)
        {
            color = true;
            message_col[0][0] = "";
            col_modif[0] = c_fuchsia;
            talker[0] = obj_axis_npc;
            message[0] = "* MY VISION...";
            message[1] = "* INITIATING 16-VOLT SUPER#  FLASHLIGHT_";
            message_col[1][0] = message[1];
            prt[0] = spr_portrait_axis_normal;
            position = 1;
        }
        
        break;
    
    case 28:
    case 30:
    case 32:
        obj_factory_03_axis_flashlight.active = 1;
        audio_play_sound(snd_electric_flash, 1, 0);
        cutscene_wait(0.1);
        break;
    
    case 29:
        obj_factory_03_axis_flashlight.active = 0;
        cutscene_wait(0.1);
        break;
    
    case 31:
        obj_factory_03_axis_flashlight.active = 0;
        cutscene_wait(0.3);
        break;
    
    case 33:
        if (cutscene_dialogue())
            scene = 33.5;
        
        with (msg)
        {
            color = true;
            message_col[0][0] = "";
            col_modif[0] = c_fuchsia;
            talker[0] = obj_axis_npc;
            message[0] = "* 95% OF POWER UTILIZED_";
            message_col[0][0] = message[0];
            message[1] = "* TYPOGRAPHY BOX HINDERED_";
            message_col[1][0] = message[1];
            position = 1;
        }
        
        break;
    
    case 33.5:
        if (cutscene_dialogue_axis_hindered())
            scene = 34;
        
        with (msg)
        {
            sndfnt = snd_talk_axis;
            message[0] = "* WHAT DO YOU MEA-";
            message[1] = "* OH.";
            message[2] = "* THIS IS MOST UN-";
            message[3] = "* THIS IS BAD.";
            message[4] = "* ...";
            message[5] = "* OH WELL.";
            message[6] = "* UNLIKE THEM...";
            message[7] = "* I HAVE EYES.";
            prt[0] = spr_portrait_axis_normal;
            prt[1] = spr_portrait_axis_normal;
            prt[2] = spr_portrait_axis_normal;
            prt[3] = spr_portrait_axis_normal;
            prt[4] = spr_portrait_axis_normal;
            prt[5] = spr_portrait_axis_normal;
            prt[6] = spr_portrait_axis_normal;
            prt[7] = spr_portrait_axis_normal;
            position = 1;
        }
        
        break;
    
    case 34:
        cutscene_npc_walk(obj_axis_npc, 370, 760, 3, "y", "down");
        break;
    
    case 35:
        cutscene_wait(0.5);
        break;
    
    case 36:
        var scene_start = scene;
        cutscene_npc_walk(obj_player_npc, 470, 458, 4, "y", "right");
        cutscene_npc_walk(obj_ceroba_npc, 500, 458, 3, "x", "left");
        scene = scene_start + 1;
        break;
    
    case 37:
        if (obj_player_npc.npc_arrived && obj_ceroba_npc.npc_arrived)
            scene++;
        
        break;
    
    case 38:
        cutscene_camera_move(510, 480, 3);
        break;
    
    case 39:
        cutscene_wait(1);
        break;
    
    case 40:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* (Okay..)";
            message[1] = "* (We need to stay out of#  his view and keep#  quiet.)";
            message[2] = "* (There's gotta   ";
            prt[0] = spr_portrait_ceroba_disapproving;
            prt[1] = spr_portrait_ceroba_closed_eyes;
            prt[2] = spr_portrait_ceroba_neutral;
            
            if (message_current == 2)
            {
                with (obj_steamworks_factory_02_face)
                {
                    sprite_index = spr_steamworks_38_face_hello;
                    image_speed = 1;
                }
                
                skippable = false;
                
                if (cutoff >= string_length(message[message_current]))
                {
                    global.dialogue_open = false;
                    instance_destroy();
                    
                    with (other)
                    {
                        cutscene_music = -4;
                        cutscene_music_start(65, 1);
                    }
                }
            }
        }
        
        break;
    
    case 41:
        cutscene_dialogue_special("shake", 65280);
        
        if (obj_steamworks_factory_02_face.sprite_index != spr_steamworks_38_face_talking)
        {
            obj_steamworks_factory_02_face.sprite_index = spr_steamworks_38_face_talking;
            obj_steamworks_factory_02_face.image_index = 0;
        }
        
        with (msg)
        {
            message[0] = "* Heeello again!!!";
            message[1] = "* What ever are you two doing he  ";
            
            if (message_current == 1)
                mode = "swirl";
            
            if (message_current == 1)
            {
                skippable = false;
                
                if (can_skip)
                {
                    global.dialogue_open = false;
                    instance_destroy();
                    other.scene++;
                }
            }
            
            position = 0;
        }
        
        break;
    
    case 42:
        cutscene_npc_action_sprite(obj_ceroba_npc, spr_factory_03_ceroba_punch, 1, true, 0);
        break;
    
    case 43:
        if (cutscene_wait(2))
            cutscene_advance(43.5);
        
        break;
    
    case 43.5:
        if (cutscene_dialogue())
            cutscene_advance(44);
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* ...";
            prt[0] = spr_portrait_ceroba_lostit;
        }
        
        break;
    
    case 44:
        cutscene_npc_action_sprite(obj_ceroba_npc, spr_factory_03_ceroba_lower_arm, 1, true, 0);
        break;
    
    case 45:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* (As I was saying...)";
            message[1] = "* (There's gotta be a code#  around here.)";
            message[2] = "* (Once you find it, head#  for the exit.)";
            prt[0] = spr_portrait_ceroba_irked;
            prt[1] = spr_portrait_ceroba_closed_eyes;
            prt[2] = spr_portrait_ceroba_neutral;
        }
        
        break;
    
    case 46:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 2);
        break;
    
    case 47:
        cutscene_camera_reset(true);
        cutscene_advance(48);
        break;
    
    case 48:
        instance_create_depth(0, 0, -100, obj_factory_03_minigame);
        cutscene_advance();
        instance_destroy(obj_player_npc);
        obj_pl.direction = 180;
        cutscene_actor_into_follower();
        scr_cutscene_end();
        scr_radio_restart();
        global.sworks_flag[37] = 1;
        break;
}
