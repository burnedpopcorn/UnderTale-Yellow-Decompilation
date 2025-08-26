switch (scene)
{
    case 0:
        with (obj_event_collider)
        {
            if (trigger == true)
            {
                instance_destroy();
                scr_cutscene_start();
                
                if (global.sworks_flag[15] == 0)
                {
                    obj_pl.direction = 180;
                    other.scene++;
                }
            }
        }
        
        break;
    
    case 1:
        cutscene_instance_create(obj_pl.x - 40, obj_pl.y, obj_flowey_npc);
        obj_flowey_npc.action_sprite = true;
        obj_flowey_npc.sprite_index = spr_floweyrise;
        obj_flowey_npc.image_speed = 0.2;
        break;
    
    case 2:
        if (obj_flowey_npc.image_index >= (obj_flowey_npc.image_number - 1))
        {
            obj_flowey_npc.npc_direction = "right";
            obj_flowey_npc.action_sprite = false;
            cutscene_advance();
        }
        
        break;
    
    case 3:
        cutscene_wait(0.5);
        break;
    
    case 4:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* Howdy!";
            message[1] = "* Boy am I glad that fox#  lady let you roam free#  for a bit.";
            message[2] = "* Not being able to talk#  to my pal has been#  torture!";
            message[3] = "* Now, I know she roped#  ya into some Lab detour#  but...";
            message[4] = "* Come on... captive#  monsters? Talk about a#  conspiracy nut!";
            message[5] = "* I mean, it's like you#  don't wanna follow my#  advice!";
            message[6] = "* Remember your REAL#  mission, Clover.";
            message[7] = "* The five children you#  set out to find in the#  first place.";
            message[8] = "* There's no need to#  visit that dingy lab, ya#  know?";
            message[9] = "* ASGORE's still out#  there threatening human#  lives!";
            message[10] = "* Keep your head in the#  game.";
            message[11] = "* This is our journey.#  Not Ceroba's.";
            prt[0] = flowey_nice;
            prt[1] = flowey_niceside;
            prt[2] = flowey_worried;
            prt[3] = flowey_niceside;
            prt[4] = flowey_smirk;
            prt[5] = flowey_smirk;
            prt[6] = flowey_wink;
            prt[7] = flowey_nice;
            prt[8] = flowey_worried;
            prt[9] = flowey_sad;
            prt[10] = flowey_plains;
            prt[11] = flowey_plain;
        }
        
        break;
    
    case 5:
        cutscene_npc_action_sprite(obj_flowey_npc, spr_floweyleave, 0.25, true, 0);
        break;
    
    case 6:
        instance_destroy(obj_flowey_npc);
        cutscene_wait(1);
        break;
        break;
    
    case 7:
        cutscene_instance_create(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 40, obj_pl.y, obj_ceroba_npc);
        break;
    
    case 8:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Hey, wait up!";
            prt[0] = spr_portrait_ceroba_neutral;
        }
        
        obj_pl.direction = 0;
        break;
    
    case 9:
        audio_sound_gain(obj_radio.current_song, 0, 500);
        cutscene_advance();
        break;
    
    case 10:
        cutscene_npc_walk(obj_ceroba_npc, obj_pl.x + 40, obj_pl.y, 3, "x", "left");
        break;
    
    case 11:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* I think I'm ready to#  get back into things.";
            message[1] = "* Lead the way.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            prt[1] = spr_portrait_ceroba_neutral;
        }
        
        break;
    
    case 12:
        cutscene_npc_walk(obj_ceroba_npc, obj_pl.x + 20, obj_pl.y, 3, "x", "left");
        break;
    
    case 13:
        audio_sound_gain(obj_radio.current_song, 1, 500);
        cutscene_advance();
        break;
    
    case 14:
        obj_pl.direction = 180;
        scr_actor_into_follower(1161, 1171);
        global.party_member = obj_ceroba_follower;
        global.sworks_flag[15] = 1;
        cutscene_advance();
        break;
    
    case 15:
        cutscene_end();
        break;
}
