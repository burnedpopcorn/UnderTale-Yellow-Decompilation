switch (scene)
{
    case 0:
        if (obj_pl.y < 220)
        {
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_wait(0.5);
        break;
    
    case 2:
        actor_flowey.action_sprite = true;
        actor_flowey.sprite_index = spr_floweyrise;
        actor_flowey.image_alpha = 1;
        actor_flowey.image_speed = 0.25;
        cutscene_advance();
        break;
    
    case 3:
        cutscene_animation_end(actor_flowey, true);
        break;
    
    case 4:
        actor_flowey.action_sprite = false;
        cutscene_advance();
        break;
    
    case 5:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* Golly, ain't this#  dandy?\t";
            message[1] = "* Everyone you met just#  abandoned you for their#  own interests.";
            message[2] = "* Those aren't real#  friends, no way.";
            message[3] = "* I'm here for you#  though! Always will be!";
            message[4] = "* Now... let's get outta#  here.";
            prt[0] = flowey_nice;
            prt[1] = flowey_sad;
            prt[2] = flowey_smirk;
            prt[3] = flowey_nice;
            prt[4] = flowey_niceside;
        }
        
        break;
    
    case 6:
        cutscene_wait(0.5);
        break;
    
    case 7:
        cutscene_npc_direction(actor_flowey, "up");
        break;
    
    case 8:
        cutscene_camera_move(obj_pl.x, 120, 2);
        break;
    
    case 9:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* ...";
            message[1] = "* I'm not too sure how to#  open this door.";
            message[2] = "* Hold on.";
            prt[0] = flowey_plain;
            prt[1] = flowey_worried;
            prt[2] = flowey_worried;
            
            if (message_current == 1)
                other.actor_flowey.npc_direction = "down";
        }
        
        break;
    
    case 10:
        cutscene_npc_direction(actor_flowey, "up");
        break;
    
    case 11:
        if (!instance_exists(obj_dunes_43_number_pad_destroyed))
        {
            audio_play_sound(snd_flowey_panel_hack, 1, 0);
            instance_create_depth(137, 106, obj_dunes_43_gate.depth - 1, obj_dunes_43_number_pad_destroyed);
        }
        else
        {
            var number_pad = 859;
            
            if (number_pad.image_index >= (number_pad.image_number - 1))
                cutscene_wait(0.25);
        }
        
        break;
    
    case 12:
        cutscene_sfx_play(snd_elevator_start, 2);
        cutscene_advance(13);
        break;
    
    case 13:
        cutscene_screenshake(1, 2);
        break;
    
    case 14:
        cutscene_action_sprite(obj_dunes_43_gate, spr_dunes_43_gate, 1/3, true, 0, snd_dunes_43_gate, 0);
        break;
    
    case 15:
        cutscene_wait(1);
        break;
    
    case 16:
        cutscene_npc_direction(actor_flowey, "down");
        break;
    
    case 17:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* That's one way of#  opening it!";
            message[1] = "* We can finally leave#  this wasteland behind!";
            message[2] = "* See ya later, Clover!";
            prt[0] = flowey_nice;
            prt[1] = flowey_nice;
            prt[2] = flowey_nice;
        }
        
        break;
    
    case 18:
        actor_flowey.action_sprite = true;
        actor_flowey.sprite_index = spr_floweyleave;
        actor_flowey.image_speed = 0.25;
        cutscene_advance();
        break;
    
    case 19:
        cutscene_animation_end(actor_flowey, true);
        break;
    
    case 20:
        instance_destroy(actor_flowey);
        cutscene_wait(0.25);
        break;
    
    case 21:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 2);
        break;
    
    case 22:
        cutscene_end();
        
        with (instance_create(192, 130, obj_doorway))
        {
            image_xscale = 3.5;
            image_yscale = 1.25;
            nextroom = rm_steamworks_01;
            xx = 160;
            yy = 520;
        }
        
        camera_set_view_target(view_camera[0], 1031);
        global.dunes_flag[35] = 1;
        break;
}
