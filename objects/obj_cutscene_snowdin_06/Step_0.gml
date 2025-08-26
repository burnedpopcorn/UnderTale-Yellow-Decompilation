switch (scene)
{
    case 0:
        with (actor_martlet)
            npc_direction = "up";
        
        with (obj_event_collider)
        {
            if (place_meeting(x, y, obj_pl))
            {
                scr_audio_fade(obj_radio.current_song, 500);
                scr_cutscene_start();
                other.scene = 0.5;
                obj_pl.direction = 0;
            }
        }
        
        break;
    
    case 0.5:
        if (cutscene_wait(0.5))
            scene = 1;
        
        break;
    
    case 1:
        if (scr_camera_move(230, 410, 2))
        {
            if (!audio_is_playing(mus_birdsofafeather))
                audio_play_sound(mus_birdsofafeather, 20, 1);
            
            timer = 30;
            scene++;
        }
        
        obj_camera.axis_priority = "x";
        break;
    
    case 2:
        if (!scr_timer())
            exit;
        
        with (actor_martlet)
        {
            npc_direction = "down";
            can_walk = true;
            x_dest[0] = x;
            y_dest[0] = y + 60;
        }
        
        scene++;
        break;
    
    case 3:
        with (actor_martlet)
        {
            if (npc_arrived)
            {
                action_sprite = true;
                sprite_index = spr_martlet_book;
                image_speed = 0.3;
                other.scene++;
            }
        }
        
        break;
    
    case 4:
        with (actor_martlet)
        {
            if (on_animation_end())
            {
                image_speed = 0;
                action_sprite = false;
                down_sprite_idle = spr_martlet_book_talk;
                other.timer = 5;
                other.scene++;
            }
        }
        
        break;
    
    case 5:
        if (!scr_timer())
            exit;
        
        actor_martlet.is_talking = true;
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            message[0] = "* Recalibrate the lava#  rock puzzle... Check!";
            prt[0] = spr_martlet_head_content;
        }
        
        if (!global.dialogue_open)
        {
            scene++;
            timer = 20;
        }
        
        break;
    
    case 6:
        if (!scr_timer())
            exit;
        
        instance_create(0, 0, obj_snowdin_06_screenshake);
        audio_play_sound(snd_groundbreak, 1, 0);
        timer = 80;
        scene++;
        break;
    
    case 7:
        if (!scr_timer())
            exit;
        
        actor_martlet.is_talking = true;
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            message[0] = "* ...";
            prt[0] = spr_martlet_head_surprised;
        }
        
        if (!global.dialogue_open)
        {
            scene++;
            timer = 15;
        }
        
        break;
    
    case 8:
        if (!scr_timer())
            exit;
        
        with (actor_martlet)
        {
            action_sprite = true;
            sprite_index = spr_martlet_book;
            image_index = image_number - 1;
            image_speed = -0.2;
            other.scene++;
        }
        
        break;
    
    case 9:
        with (actor_martlet)
        {
            if (image_index <= 1)
            {
                action_sprite = false;
                down_sprite_idle = spr_martlet_down_talk;
                image_speed = 0;
                npc_direction = "up";
                other.timer = 15;
                other.scene++;
            }
        }
        
        break;
    
    case 10:
        if (!scr_timer())
            exit;
        
        actor_martlet.is_talking = true;
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            message[0] = "* Well, it should hold#  together for a few uses#  at least.";
            message[1] = "* And that's good enough#  for me!";
            message[2] = "* Next stop, Honeydew#  Resort!";
            prt[0] = spr_martlet_head_nervous_smile;
            prt[1] = spr_martlet_head_determined;
            prt[2] = spr_martlet_head_content;
            
            if (message_current == 1)
                other.actor_martlet.npc_direction = "down";
        }
        
        if (!global.dialogue_open)
        {
            timer = 5;
            scene++;
        }
        
        break;
    
    case 11:
        if (!scr_timer())
            exit;
        
        with (actor_martlet)
        {
            if (image_index <= 1)
            {
                action_sprite = true;
                sprite_index = spr_martlet_fly_away;
            }
            
            if (sprite_index == spr_martlet_fly_away)
            {
                image_speed = 0.3;
                image_index = 0;
                other.scene++;
            }
        }
        
        break;
    
    case 12:
        with (actor_martlet)
        {
            if (on_animation_end())
            {
                image_alpha = 0;
                image_speed = 0;
                other.scene++;
                other.timer = 15;
                scr_audio_fade_out(mus_birdsofafeather, 500);
            }
        }
        
        break;
    
    case 13:
        if (!scr_timer())
            exit;
        
        if (scr_camera_move(obj_pl.x, obj_pl.y, 3))
        {
            scr_radio_restart();
            scr_cutscene_end();
            __view_set(e__VW.Object, 0, obj_pl);
            global.snowdin_flag[16] = 1;
            instance_destroy();
            instance_destroy(actor_martlet);
            instance_destroy(obj_camera);
            exit;
        }
        
        obj_camera.axis_priority = "y";
        break;
}
