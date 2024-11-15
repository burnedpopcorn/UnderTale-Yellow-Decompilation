switch (scene)
{
    case 0:
        if (obj_pl.y < 220)
        {
            scr_cutscene_start();
            
            if (abs(obj_pl.x - 220) > 15)
                cutscene_advance();
            else
                cutscene_advance(2);
            
            instance_create_depth(obj_pl.x, obj_pl.y, -100, obj_player_npc);
        }
        
        break;
    
    case 1:
        cutscene_npc_walk(1168, 220, obj_player_npc.y, 3, "x", "up");
        break;
    
    case 2:
        cutscene_wait(0.5);
        break;
    
    case 3:
        actor_flowey.action_sprite = true;
        actor_flowey.sprite_index = spr_floweyrise;
        actor_flowey.image_alpha = 1;
        actor_flowey.image_speed = 0.25;
        cutscene_advance();
        break;
    
    case 4:
        cutscene_animation_end(actor_flowey, true);
        break;
    
    case 5:
        actor_flowey.action_sprite = false;
        cutscene_advance();
        break;
    
    case 6:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3194;
            message[0] = "* Howdy!";
            message[1] = "* Regular monsters are#  one thing but...";
            message[2] = "* That fox lady you just#  killed was a piece of#  work, huh?";
            message[3] = "* If you bested her,#  ASGORE doesn't stand a#  chance!";
            message[4] = "* Now...";
            prt[0] = 348;
            prt[1] = 348;
            prt[2] = 347;
            prt[3] = 348;
            prt[4] = 347;
        }
        
        break;
    
    case 7:
        cutscene_wait(0.5);
        break;
    
    case 8:
        cutscene_npc_direction(actor_flowey, "up");
        break;
    
    case 9:
        cutscene_camera_move(obj_pl.x, 120, 2);
        break;
    
    case 10:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3194;
            message[0] = "* ...";
            message[1] = "* I'm not too sure how to#  open this door.";
            message[2] = "* Hmm...";
            prt[0] = 352;
            prt[1] = 357;
            prt[2] = 353;
            
            if (message_current == 1)
                other.actor_flowey.npc_direction = "down";
        }
        
        break;
    
    case 11:
        cutscene_npc_direction(actor_flowey, "up");
        break;
    
    case 12:
        shoot_noloop = false;
        cutscene_wait(0.5);
        break;
    
    case 13:
        cutscene_npc_action_sprite(1168, 3313, 1, false);
        
        if (obj_player_npc.image_index >= 8 && !shoot_noloop)
        {
            shoot_noloop = true;
            audio_play_sound(snd_duel_shot, 1, 0);
            
            if (!instance_exists(obj_dunes_43_number_pad_destroyed))
            {
                instance_create_depth(137, 106, obj_dunes_43_gate.depth - 1, obj_dunes_43_number_pad_destroyed);
                obj_dunes_43_number_pad_destroyed.sprite_index = spr_dunes_43_number_pad_destroyed_geno;
            }
        }
        
        break;
    
    case 14:
        cutscene_wait(1.5);
        break;
    
    case 15:
        cutscene_sfx_play(270, 2);
        cutscene_advance();
        break;
    
    case 16:
        cutscene_screenshake(1, 2);
        break;
    
    case 17:
        cutscene_action_sprite(1958, 1105, 1/3, true, 0, 631, 0);
        break;
    
    case 18:
        cutscene_wait(1);
        break;
    
    case 19:
        cutscene_npc_direction(actor_flowey, "down");
        break;
    
    case 20:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3194;
            message[0] = "* ...";
            message[1] = "* Uh, sure... That works.";
            message[2] = "* See you up ahead,#  Clover!";
            prt[0] = 352;
            prt[1] = 3640;
            prt[2] = 347;
        }
        
        break;
    
    case 21:
        actor_flowey.action_sprite = true;
        actor_flowey.sprite_index = spr_floweyleave;
        actor_flowey.image_speed = 0.25;
        cutscene_advance();
        break;
    
    case 22:
        cutscene_animation_end(actor_flowey, true);
        break;
    
    case 23:
        instance_destroy(actor_flowey);
        cutscene_wait(0.25);
        break;
    
    case 24:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 2);
        break;
    
    case 25:
        cutscene_end();
        
        with (instance_create(192, 130, obj_doorway))
        {
            image_xscale = 3.5;
            image_yscale = 1.25;
            nextroom = 141;
            xx = 160;
            yy = 520;
        }
        
        camera_set_view_target(view_camera[0], 1031);
        global.dunes_flag[35] = 1;
        break;
}
