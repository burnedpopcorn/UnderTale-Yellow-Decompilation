if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        break;
    
    case 1:
        scr_cutscene_start();
        scr_audio_fade_out(obj_radio.current_song, 750);
        cutscene_sfx_play(657, 1);
        break;
    
    case 2:
        cutscene_wait(0.5);
        break;
    
    case 3:
        cutscene_camera_move(270, 570, 2);
        break;
    
    case 4:
        cutscene_wait(1.5);
        break;
    
    case 5:
        cutscene_sfx_play(318, 1);
        obj_steamworks_factory_02_face.sprite_index = spr_steamworks_38_face_hello;
        break;
    
    case 6:
        cutscene_wait(2);
        break;
    
    case 7:
        cutscene_music_start(65, 0);
        break;
    
    case 8:
        if (obj_steamworks_factory_02_face.sprite_index != spr_steamworks_38_face_talking)
        {
            obj_steamworks_factory_02_face.sprite_index = spr_steamworks_38_face_talking;
            obj_steamworks_factory_02_face.image_index = 0;
        }
        
        cutscene_dialogue_special("swirl", 65280);
        
        with (msg)
        {
            message[0] = "* Gooood morning Steamworks#  employees!!!";
            message[1] = "* Hope you're ready for another#  day of pa-ro-duc-tivity!!!";
            message[2] = "* Today we are boxing and#  shipping goods out into the#  Underground!!!";
            position = 0;
        }
        
        break;
    
    case 9:
        cutscene_follower_into_actor();
        break;
    
    case 10:
        cutscene_npc_walk(actor_follower, 360, actor_follower.y, 4, "y", "up", -4, 220, 730, 220, 680);
        break;
    
    case 11:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Uh, hello?";
            message[1] = "* Are you sentient or a#  pre-recording?";
            prt[0] = 381;
            prt[1] = 370;
        }
        
        break;
    
    case 12:
        cutscene_dialogue_special("swirl", 65280);
        
        with (msg)
        {
            message[0] = "* Hello new hire!";
            message[1] = "* Yes, I am fully sentient!";
            message[2] = "* Trapped in this two-dimensional#  rectangle for all eternity!!!";
            position = 0;
        }
        
        break;
    
    case 13:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Right...";
            message[1] = "* Can you unlock all the#  doors in this factory?";
            message[2] = "* We're in a hurry.";
            prt[0] = 382;
            prt[1] = 370;
            prt[2] = 377;
        }
        
        break;
    
    case 14:
        cutscene_dialogue_special("swirl", 65280);
        
        with (msg)
        {
            message[0] = "* Sorry but each morning we do a#  little thing called:";
            message[1] = "* EARN! YOUR!! FREEDOM!!!";
            message[2] = "* Complete a full shipment and#  you'll be on your way!";
            
            if (message_current == 1)
                mode = "shake";
            else if (message_current == 2)
                mode = "swirl";
            
            position = 0;
        }
        
        break;
    
    case 15:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* What kind of policy is#  that???";
            prt[0] = 368;
        }
        
        break;
    
    case 16:
        cutscene_dialogue_special("shake", 65280);
        
        with (msg)
        {
            message[0] = "* When there's a quota to meet,#  ethics go out the window!!";
            message[1] = "* Haven't you worked a job#  before???";
            
            if (message_current == 1)
                mode = "swirl";
            
            position = 0;
        }
        
        break;
    
    case 17:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Of course but I don't#  work here!";
            prt[0] = 384;
        }
        
        break;
    
    case 18:
        cutscene_dialogue_special("shake", 65280);
        
        with (msg)
        {
            message[0] = "* So you're trespassing???";
            message[1] = "* In that case...  ";
            
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
    
    case 19:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Fine, we'll do the job!";
            message[1] = "* Clover, this bot might#  have connections to#  Axis.";
            message[2] = "* Seems we gotta do what#  it says to avoid#  unwanted attention.";
            message[3] = "* You can work this thing#  right?";
            message[4] = "* Push the start button#  and we'll get it over#  with.";
            prt[0] = 377;
            prt[1] = 370;
            prt[2] = 377;
            prt[3] = 370;
            prt[4] = 370;
            
            if (message_current == 1)
                obj_ceroba_npc.npc_direction = "right";
        }
        
        break;
    
    case 20:
        cutscene_npc_direction(1161, "up");
        break;
    
    case 21:
        cutscene_wait(0.5);
        break;
    
    case 22:
        cutscene_sfx_play(657, 1);
        break;
    
    case 23:
        cutscene_wait(0.5);
        break;
    
    case 24:
        cutscene_instance_create(0, 0, obj_factory_02_conveyor_puzzle);
        break;
    
    case 25:
        obj_factory_02_conveyor_puzzle.conveyor_spawn_item = true;
        obj_conveyor_belt.image_speed = 1;
        cutscene_advance();
        break;
    
    case 26:
        if (!instance_exists(obj_factory_02_conveyor_item))
        {
            audio_sound_gain(cutscene_music, 0, 150);
            cutscene_wait(1);
        }
        
        break;
    
    case 27:
        cutscene_wait(1);
        break;
    
    case 28:
        obj_conveyor_belt.image_speed = 0;
        obj_conveyor_belt.image_index = 0;
        cutscene_dialogue_special("shake", 65280);
        
        with (msg)
        {
            message[0] = "* WHAT ARE YOU DOING???";
            message[1] = "* Put red items in red boxes and#  blue in blue boxes!";
            message[2] = "* Three strikes and yoooou're#  out!!!";
            
            if (message_current == 1)
                mode = "swirl";
            
            position = 0;
        }
        
        break;
    
    case 29:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Your machine's broken.";
            message[1] = "* The second conveyor#  belt doesn't move.";
            prt[0] = 377;
            prt[1] = 371;
        }
        
        break;
    
    case 30:
        scr_audio_fade_out(cutscene_music, 500);
        cutscene_advance();
        break;
    
    case 31:
        cutscene_wait(1.5);
        break;
    
    case 32:
        cutscene_dialogue_special("default", 65280);
        
        with (msg)
        {
            message[0] = "* No.";
            position = 0;
        }
        
        break;
    
    case 33:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* ...Yes?";
            message[1] = "* It's broke-";
            prt[0] = 371;
            prt[1] = 377;
            
            if (message_current == 1)
            {
                skippable = false;
                
                if (cutoff >= string_length(message[message_current]))
                {
                    global.dialogue_open = false;
                    instance_destroy();
                    other.scene++;
                }
            }
        }
        
        break;
    
    case 34:
        cutscene_dialogue_special("default", 65280);
        
        with (msg)
        {
            message[0] = "* No.";
            position = 0;
        }
        
        break;
    
    case 35:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* ...";
            message[1] = "* Screw this.";
            prt[0] = 384;
            prt[1] = 384;
        }
        
        break;
    
    case 36:
        cutscene_npc_walk(actor_follower, 220, 645, 3, "x", "up");
        break;
    
    case 37:
        cutscene_wait(0.25);
        break;
    
    case 38:
        obj_ceroba_npc.action_sprite = true;
        obj_ceroba_npc.sprite_index = spr_ceroba_up_run;
        obj_ceroba_npc.image_index = 0;
        obj_ceroba_npc.image_speed = 0;
        cutscene_sfx_play(373, 1);
        break;
    
    case 39:
        obj_ceroba_npc.vspeed = -5;
        obj_ceroba_npc.y += obj_ceroba_npc.vspeed;
        
        if (obj_ceroba_npc.y < 590)
            scene++;
        
        break;
    
    case 40:
        obj_ceroba_npc.vspeed = 2;
        obj_ceroba_npc.y += obj_ceroba_npc.vspeed;
        
        if (obj_ceroba_npc.y > 603)
            scene++;
        
        break;
    
    case 41:
        obj_ceroba_npc.vspeed = 0;
        obj_ceroba_npc.action_sprite = false;
        obj_ceroba_npc.npc_direction = "up";
        scr_screenshake(1, 1);
        cutscene_sfx_play(384, 1);
        break;
    
    case 42:
        cutscene_wait(1);
        break;
    
    case 43:
        cutscene_npc_direction(1161, "down");
        break;
    
    case 44:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Clover, you box the#  goods and I'll toss 'em#  into the chute.";
            message[1] = "* Teamwork, right? ";
            message[2] = "* Something like that.";
            message[3] = "* Let's give it a shot!";
            prt[0] = 370;
            prt[1] = 377;
            prt[2] = 371;
            prt[3] = 370;
        }
        
        break;
    
    case 45:
        obj_ceroba_npc.npc_direction = "right";
        cutscene_wait(1);
        break;
    
    case 46:
        cutscene_music_start(218, 100);
        obj_factory_02_conveyor_puzzle.conveyor_puzzle_activate = true;
        break;
    
    case 47:
        break;
    
    case 48:
        cutscene_wait(0.5);
        break;
    
    case 49:
        cutscene_camera_move(640, 570, 3);
        break;
    
    case 50:
        with (obj_steamworks_factory_02_door)
        {
            image_speed = 0.5;
            image_index = 0;
        }
        
        audio_play_sound(snd_rumble, 1, 1);
        cutscene_advance();
        break;
    
    case 51:
        if (obj_steamworks_factory_02_door.image_index >= (obj_steamworks_factory_02_door.image_number - 1))
        {
            obj_steamworks_factory_02_door.image_index = obj_steamworks_factory_02_door.image_number - 1;
            obj_steamworks_factory_02_door.image_speed = 0;
            obj_steamworks_factory_02_door.solid = false;
            audio_stop_sound(snd_rumble);
            audio_play_sound(snd_mart_impact_3, 1, 0);
            cutscene_advance();
        }
        
        break;
    
    case 52:
        cutscene_screenshake(0.5, 2);
        break;
    
    case 53:
        cutscene_wait(1);
        break;
    
    case 54:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Hey alright! Good work,#  Clover!";
            message[1] = "* Onto whatever awaits us#  next...";
            prt[0] = 372;
            prt[1] = 371;
        }
        
        break;
    
    case 55:
        cutscene_wait(0.5);
        break;
    
    case 56:
        obj_ceroba_npc.x = obj_pl.x + 20;
        obj_ceroba_npc.y = obj_pl.y;
        obj_ceroba_npc.npc_direction = "left";
        cutscene_actor_into_follower();
        break;
    
    case 57:
        draw_alpha += 0.1;
        
        if (draw_alpha >= 1)
            cutscene_advance();
        
        break;
    
    case 58:
        cutscene_wait(0.5);
        break;
    
    case 59:
        instance_destroy(obj_camera);
        camera_set_view_target(view_camera[0], 1031);
        
        if (obj_steamworks_factory_02_face.sprite_index != spr_steamworks_38_face_talking)
        {
            obj_steamworks_factory_02_face.sprite_index = spr_steamworks_38_face_talking;
            obj_steamworks_factory_02_face.image_index = 0;
        }
        
        cutscene_advance();
        break;
    
    case 60:
        draw_alpha -= 0.1;
        
        if (draw_alpha <= 0)
            cutscene_advance();
        
        break;
    
    case 61:
        cutscene_wait(0.5);
        break;
    
    case 62:
        scr_radio_restart();
        audio_sound_gain(obj_radio.current_song, 1, 0);
        global.sworks_flag[36] = 1;
        cutscene_end();
        break;
}
