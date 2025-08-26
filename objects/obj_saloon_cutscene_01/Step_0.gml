var starlo = 1169;
var ed = 1162;
var ceroba = 1929;

if (floor(starlo.y) >= 165)
{
    camera.x = starlo.x;
    camera.y = starlo.y;
}
else
{
    if (camera.y > 120)
        camera.y -= 2;
    
    if (camera.x < 200)
        camera.x += 2;
}

switch (scene)
{
    case 0:
        if (!audio_is_playing(mus_a_new_partner))
        {
            music = audio_play_sound(mus_a_new_partner, 1, 1);
            audio_sound_gain(obj_radio.current_song, 0, 0);
        }
        
        with (starlo)
        {
            if (image_alpha < 1)
            {
                image_alpha += 0.1;
            }
            else
            {
                x_dest[0] = x;
                y_dest[0] = 360;
                x_dest[1] = 100;
                y_dest[1] = y_dest[0];
                x_dest[2] = x_dest[1];
                y_dest[2] = 160;
                x_dest[3] = 200;
                y_dest[3] = y_dest[2];
                end_direction = "up";
                can_walk = true;
                actor_speed = 2;
                other.scene++;
                other.timer = 30;
            }
        }
        
        break;
    
    case 1:
        if (!scr_timer())
            exit;
        
        with (ed)
        {
            if (image_alpha < 1)
            {
                image_alpha += 0.1;
            }
            else
            {
                x_dest[0] = x;
                y_dest[0] = 360;
                x_dest[1] = 100;
                y_dest[1] = y_dest[0];
                x_dest[2] = x_dest[1];
                y_dest[2] = 160;
                x_dest[3] = 200;
                y_dest[3] = y_dest[2];
                end_direction = "up";
                can_walk = true;
                actor_speed = 2;
                other.scene++;
                other.timer = 20;
                other.message_timer = 20;
            }
        }
        
        break;
    
    case 2:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            skippable = false;
            sndfnt = snd_talk_starlo;
            position = 0;
            message[0] = "* Barkeep! ";
            message[1] = "* Growlers of icewater#  for the house on the#  Sheriff!";
            message[2] = "* I have an announcement#  to make!";
            prt[0] = spr_portrait_starlo_normal;
            prt[1] = spr_portrait_starlo_normal;
            prt[2] = spr_portrait_starlo_smile;
            other.message_timer -= 1;
            
            if (other.message_timer < 0)
            {
                if (message_current < 2)
                {
                    message_current += 1;
                    cutoff = 0;
                    other.message_timer = 65;
                }
                else
                {
                    global.dialogue_open = false;
                    other.timer = 15;
                    other.scene++;
                }
            }
        }
        
        break;
    
    case 3:
        if (!starlo.npc_arrived || !scr_timer())
            exit;
        
        with (starlo)
        {
            if (path_position >= 1)
            {
                other.scene++;
                other.timer = 15;
                npc_arrived = false;
                x_dest[0] = 170;
                y_dest[0] = 110;
                can_walk = true;
                end_direction = "down";
                audio_play_sound(snd_switch, 1, 0);
                exit;
            }
            
            if (path_index == -1)
            {
                audio_play_sound(snd_playerjump, 1, 0);
                path_start(pt_saloon_jump, 2, path_action_stop, false);
            }
        }
        
        break;
    
    case 4:
        if (!ed.npc_arrived || !scr_timer())
            exit;
        
        with (ed)
        {
            if (path_position >= 1)
            {
                other.scene++;
                other.timer = 30;
                npc_arrived = false;
                x_dest[0] = 200;
                y_dest[0] = 120;
                end_direction = "up";
                audio_play_sound(snd_rock_break, 1, 0);
                scr_screenshake(4, 1);
                exit;
            }
            
            if (path_index == -1)
            {
                audio_play_sound(snd_playerjump, 1, 0);
                path_start(pt_saloon_jump, 2, path_action_stop, false);
            }
        }
        
        break;
    
    case 5:
        if (!scr_timer())
            exit;
        
        ed.can_walk = true;
        
        if (!ed.npc_arrived)
            exit;
        
        ed.can_walk = false;
        
        if (ed.action_sprite == false)
        {
            ed.action_sprite = true;
            ed.sprite_index = spr_ed_place_clover;
            ed.image_index = 0;
            ed.image_speed = 0.3;
        }
        
        if (floor(ed.image_index) == 6)
        {
            if (!audio_is_playing(snd_gun_hit))
            {
                audio_play_sound(snd_gun_hit, 1, 0);
                scr_screenshake(6, 1);
            }
        }
        
        if (ed.image_index >= (ed.image_number - 1))
        {
            ed.up_sprite = spr_ed_up_walk;
            ed.right_sprite = spr_ed_right_walk;
            ed.down_sprite = spr_ed_down_walk;
            ed.left_sprite = spr_ed_left_walk;
            ed.up_sprite_idle = spr_ed_up_walk;
            ed.right_sprite_idle = spr_ed_right_walk;
            ed.down_sprite_idle = spr_ed_down_talk;
            ed.left_sprite_idle = spr_ed_left_walk;
            ed.action_sprite = false;
            ed.x_dest[0] = 200;
            ed.y_dest[0] = 130;
            ed.end_direction = "down";
            ed.npc_arrived = false;
            ed.can_walk = true;
            ed.path_position = 0;
            instance_create(200, 105, obj_saloon_sitting_clover);
            timer = 15;
            scene++;
        }
        
        break;
    
    case 6:
        if (!ed.npc_arrived || !scr_timer())
            exit;
        
        with (ed)
        {
            if (path_position >= 1)
            {
                other.scene++;
                other.timer = 45;
                npc_arrived = false;
                x_dest[0] = x;
                y_dest[0] = y + 30;
                x_dest[1] = 90;
                y_dest[1] = 470;
                axis_override = "x";
                can_walk = true;
                audio_play_sound(snd_rock_break, 1, 0);
                scr_screenshake(4, 1);
                exit;
            }
            
            if (path_index == -1)
            {
                audio_play_sound(snd_playerjump, 1, 0);
                path_start(pt_saloon_jump_off, 2, path_action_stop, false);
            }
        }
        
        break;
    
    case 7:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            talker[0] = starlo;
            message[0] = "* This 'lil' feller 'ere#  is Clover.";
            prt[0] = spr_portrait_starlo_normal;
        }
        
        if (!global.dialogue_open)
        {
            scr_music_sudden_stop(music, 5, 1);
            obj_saloon_sitting_clover.image_speed = 0;
            obj_saloon_sitting_clover.image_index = 0;
            ceroba.sprite_index = spr_ceroba_lean_back;
            timer = 60;
            scene++;
        }
        
        break;
    
    case 8:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            talker[0] = ceroba;
            message[0] = "* Hey, Star.";
            message[1] = "* What the hell are you#  doing bringing a human#  in here?";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_disapproving;
        }
        
        if (!global.dialogue_open)
        {
            scr_music_sudden_stop(music, 10, false);
            scene++;
        }
        
        break;
    
    case 9:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            position = 0;
            talker[0] = starlo;
            message[0] = "* (Ceroba shush!)";
            message[1] = "* Now I know what ye're#  all thinkin'.";
            message[2] = "* But trust me, Clover#  here ain't no greenhorn!";
            message[3] = "* They know what they're#  doin'. Just look at that#  hat!";
            prt[0] = spr_portrait_starlo_embarassed_smile;
            prt[1] = spr_portrait_starlo_point;
            prt[2] = spr_portrait_starlo_normal;
            prt[3] = spr_portrait_starlo_normal;
        }
        
        if (!global.dialogue_open)
        {
            scene++;
            obj_saloon_audience.crowd_animate = true;
            timer = 45;
        }
        
        break;
    
    case 10:
        if (!scr_timer())
            exit;
        
        obj_saloon_audience.crowd_animate = false;
        scene++;
        break;
    
    case 11:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            position = 1;
            talker[0] = ceroba;
            message[0] = "* Actually, this could be#  fun.";
            message[1] = "* Dina! Hit me!";
            prt[0] = spr_portrait_ceroba_snarky;
            prt[1] = spr_portrait_ceroba_smile;
        }
        
        if (!global.dialogue_open)
        {
            scene++;
            timer = 30;
        }
        
        break;
    
    case 12:
        if (!scr_timer())
            exit;
        
        instance_create(250, 275, obj_saloon_beverage);
        timer = 90;
        scene++;
        break;
    
    case 13:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            position = 0;
            talker[0] = starlo;
            message[0] = "* Alright, no more#  hecklin' from the crowd!";
            message[1] = "* Ahem.";
            prt[0] = spr_portrait_starlo_point;
            prt[1] = spr_portrait_starlo_hidden;
        }
        
        if (!global.dialogue_open)
        {
            scene++;
            timer = 30;
        }
        
        break;
    
    case 14:
        if (!scr_timer())
            exit;
        
        scene++;
        break;
    
    case 15:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            position = 0;
            talker[0] = starlo;
            message[0] = "* Ladies and#  gentlemonsters, as#  Ceroba said...";
            message[1] = "* Clover is a HUMAN.";
            prt[0] = spr_portrait_starlo_serious;
            prt[1] = spr_portrait_starlo_point;
        }
        
        if (!global.dialogue_open)
        {
            scene++;
            timer = 15;
        }
        
        break;
    
    case 16:
        if (!scr_timer())
            exit;
        
        scr_text();
        obj_saloon_audience.crowd_animate = true;
        
        with (msg)
        {
            message[0] = "* Ooooo!";
            position = 0;
        }
        
        if (!global.dialogue_open)
        {
            obj_saloon_audience.crowd_animate = false;
            scene++;
            timer = 15;
        }
        
        break;
    
    case 17:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            position = 0;
            talker[0] = starlo;
            message[0] = "* I know, excitin' stuff.#  A real honor!";
            message[1] = "* Now, I would let Clover#  tell y'all all about#  their life...";
            message[2] = "* But I've been#  studyin' up.";
            message[3] = "* I'm a bit of a human#  expert if ya didn't#  know.";
            prt[0] = spr_portrait_starlo_normal;
            prt[1] = spr_portrait_starlo_point;
            prt[2] = spr_portrait_starlo_hidden;
            prt[3] = spr_portrait_starlo_embarassed_smile;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 18:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            position = 1;
            talker[0] = ceroba;
            message[0] = "* Oh great, here we go.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 19:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            position = 0;
            talker[0] = starlo;
            message[0] = "* Here we go indeed!";
            message[1] = "* Did ya know that humans#  use monsters fer#  transportation?";
            prt[0] = spr_portrait_starlo_smile;
            prt[1] = spr_portrait_starlo_point;
        }
        
        if (!global.dialogue_open)
        {
            timer = 15;
            scene++;
        }
        
        break;
    
    case 20:
        if (!scr_timer())
            exit;
        
        obj_saloon_audience.crowd_animate = true;
        scr_text();
        
        with (msg)
        {
            position = 0;
            message[0] = "* Ooooo!";
            position = 0;
        }
        
        if (!global.dialogue_open)
        {
            obj_saloon_audience.crowd_animate = false;
            scene++;
            timer = 15;
        }
        
        break;
    
    case 21:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            talker[0] = starlo;
            position = 0;
            message[0] = "* It's true!";
            message[1] = "* Large, four-legged#  monsters!";
            message[2] = "* They put a seat on the#  top of 'em and#  everythin'!";
            prt[0] = spr_portrait_starlo_smirk;
            prt[1] = spr_portrait_starlo_normal;
            prt[2] = spr_portrait_starlo_normal;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 22:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            position = 1;
            talker[0] = ceroba;
            message[0] = "* They're called \"horses\",#  Star.";
            prt[0] = spr_portrait_ceroba_muttering;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 23:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            position = 0;
            talker[0] = starlo;
            message[0] = "* Ah, so you know one of#  'em personally? That's#  quite impressive!";
            prt[0] = spr_portrait_starlo_surprised;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 24:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            position = 1;
            talker[0] = ceroba;
            message[0] = "* ...";
            prt[0] = spr_portrait_ceroba_unamused;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 25:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            position = 0;
            talker[0] = starlo;
            message[0] = "* Did ya also know that#  humans are FIREPROOF?";
            message[1] = "* When they're feelin'#  accomplished,";
            message[2] = "* They ride monsters#  STRAIGHT into a huge,#  fiery sphere!";
            prt[0] = spr_portrait_starlo_smirk;
            prt[1] = spr_portrait_starlo_serious;
            prt[2] = spr_portrait_starlo_point;
        }
        
        if (!global.dialogue_open)
        {
            timer = 45;
            scene++;
        }
        
        break;
    
    case 26:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            position = 1;
            talker[0] = ceroba;
            message[0] = "* So the \"monsters\" burn,#  right?";
            message[1] = "* Most monsters aren't#  fireproof.";
            message[2] = "* Star, are you saying my#  friend Horses was killed#  by a fiery sphere?";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_closed_eyes;
            prt[2] = spr_portrait_ceroba_surprised;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 27:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            position = 0;
            talker[0] = starlo;
            message[0] = "* No! Um, well... I'm not#  quite sure.";
            message[1] = "* I'll ask Clover!";
            message[2] = "* Do the monsters die?";
            prt[0] = spr_portrait_starlo_sweat;
            prt[1] = spr_portrait_starlo_normal;
            prt[2] = spr_portrait_starlo_distracted;
            ch_msg = 2;
            ch[1] = "Yes?";
            ch[2] = "No?";
            
            if (outcome == 1)
            {
                message[3] = "* Then I regret sharin'#  that fact.";
                message[4] = "* Pretend I never said#  nothin'.";
                prt[3] = spr_portrait_starlo_sweat;
                prt[4] = spr_portrait_starlo_embarassed_smile;
            }
            
            if (outcome == 2)
            {
                message[3] = "* See?";
                message[4] = "* Everyone's fireproof!";
                prt[3] = spr_portrait_starlo_smile;
                prt[4] = spr_portrait_starlo_smirk;
            }
            
            message[5] = "* Anyways...";
            message[6] = "* Did ya know tha-";
            prt[5] = spr_portrait_starlo_normal;
            prt[6] = spr_portrait_starlo_point;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 28:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            position = 1;
            talker[0] = ceroba;
            message[0] = "* Look, Star, you don't#  need to keep this up.";
            message[1] = "* ...Because it's all#  true. Every word.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            prt[1] = spr_portrait_ceroba_snarky;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 29:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            position = 0;
            talker[0] = starlo;
            message[0] = "* Ha! I knew it!";
            message[1] = "* I'm pretty darn good#  aren't I?";
            prt[0] = spr_portrait_starlo_normal;
            prt[1] = spr_portrait_starlo_smirk;
        }
        
        if (!global.dialogue_open)
        {
            timer = 25;
            scene++;
        }
        
        break;
    
    case 30:
        if (!scr_timer())
            exit;
        
        obj_saloon_audience.crowd_animate = true;
        scr_text();
        
        with (msg)
        {
            position = 0;
            message[0] = "* You're the best!";
            message[1] = "* Yeah! The only sheriff fer me!";
            position = 0;
        }
        
        if (!global.dialogue_open)
        {
            obj_saloon_audience.crowd_animate = false;
            scene++;
            timer = 30;
        }
        
        break;
    
    case 31:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            position = 0;
            talker[0] = starlo;
            message[0] = "* Haha.";
            message[1] = "* Well I reckon we're done#  here.";
            message[2] = "* Y'all can go back to yer#  daily lives fer now!";
            prt[0] = spr_portrait_starlo_flustered;
            prt[1] = spr_portrait_starlo_normal;
            prt[2] = spr_portrait_starlo_normal;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 32:
        if (ceroba.image_speed == 0)
        {
            ceroba.image_speed = 0.2;
            ceroba.image_index = 0;
        }
        
        if (ceroba.image_index >= (ceroba.image_number - 1))
        {
            ceroba.sprite_index = spr_ceroba_up_walk;
            ceroba.image_speed = 0;
            ceroba.image_index = 0;
            timer = 30;
            scene++;
            scr_audio_fade_out(mus_a_new_partner, 1500);
        }
        
        break;
    
    case 33:
        if (!scr_timer())
            exit;
        
        with (ceroba)
        {
            depth = -y;
            
            if (x < 300)
            {
                x += 2;
                
                if (!sprite_index != 68)
                {
                    sprite_index = spr_ceroba_right_walk;
                    image_speed = 0.2;
                }
            }
            else if (y < 300)
            {
                y += 2;
                
                if (!sprite_index != 66)
                    sprite_index = spr_ceroba_down_walk;
            }
            else
            {
                ceroba.image_speed = 0;
                ceroba.image_alpha = 0;
                other.timer = 30;
                other.scene++;
                scr_audio_fade_out(mus_a_new_partner, 1000);
            }
        }
        
        break;
    
    case 34:
        if (!scr_timer())
            exit;
        
        starlo.npc_direction = "right";
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            position = 0;
            talker[0] = starlo;
            message[0] = "* As for you, Clover, it's#  'bout time you see what#  this town has to offer!";
            message[1] = "* I would give ya a#  personal tour but...";
            message[2] = "* If there's one thing you#  have where you come#  from, it's freedom!";
            message[3] = "* Take yer time explorin',#  talk to the townsfolk,#  and enjoy yerself.";
            message[4] = "* I'll be waitin' here#  for ya.";
            message[5] = "* Give me a shout when#  ye're ready to start#  trainin'!";
            prt[0] = spr_portrait_starlo_normal;
            prt[1] = spr_portrait_starlo_distracted;
            prt[2] = spr_portrait_starlo_normal;
            prt[3] = spr_portrait_starlo_normal;
            prt[4] = spr_portrait_starlo_normal;
            prt[5] = spr_portrait_starlo_normal;
        }
        
        if (!global.dialogue_open)
        {
            obj_pl.x = obj_saloon_sitting_clover.x;
            obj_pl.y = obj_saloon_sitting_clover.y;
            starlo.npc_direction = "down";
            scene++;
            timer = 30;
        }
        
        break;
    
    case 35:
        if (!scr_timer())
            exit;
        
        if (!scr_camera_move(obj_pl.x, obj_pl.y, 1))
            exit;
        else
            __view_set(e__VW.Object, 0, obj_pl);
        
        clover_npc = instance_create(obj_saloon_sitting_clover.x, obj_saloon_sitting_clover.y, obj_player_npc);
        instance_destroy(obj_saloon_sitting_clover);
        
        with (clover_npc)
        {
            can_walk = false;
            obj_saloon_stool.depth = 0;
            action_sprite = true;
            sprite_index = spr_pl_run_down;
            image_index = 1;
            image_speed = 0;
            path_start(pt_saloon_clover_stand_up, 2, path_action_stop, false);
            audio_play_sound(snd_playerjump, 1, 0);
        }
        
        timer = 30;
        scene++;
        break;
    
    case 36:
        clover_npc.depth = obj_saloon_stool.depth - 1;
        
        if (clover_npc.path_position >= 1 && !scr_timer())
        {
            clover_npc.action_sprite = false;
            clover_npc.can_walk = true;
            clover_npc.npc_direction = "down";
            clover_npc.x_dest[0] = clover_npc.x;
            clover_npc.y_dest[0] = 135;
            clover_npc.end_direction = "down";
            clover_npc.path_position = 0;
            scene++;
            timer = 30;
        }
        
        break;
    
    case 37:
        if (!clover_npc.npc_arrived || !scr_timer())
            exit;
        
        with (clover_npc)
        {
            action_sprite = true;
            sprite_index = spr_pl_run_down;
            image_index = 1;
            image_speed = 0;
            
            if (path_position >= 1)
            {
                npc_direction = "down";
                sprite_index = spr_pl_down;
                image_index = 0;
                other.scene++;
                other.timer = 30;
            }
            else if (path_index == -1)
            {
                audio_play_sound(snd_playerjump, 1, 0);
                path_start(pt_saloon_jump_off, 2, path_action_stop, false);
            }
        }
        
        break;
    
    case 38:
        if (clover_npc.path_position >= 1 && !scr_timer())
            exit;
        
        obj_pl.direction = 270;
        obj_pl.sprite_index = spr_pl_down;
        obj_pl.x = clover_npc.x;
        obj_pl.y = clover_npc.y;
        obj_pl.image_alpha = 1;
        scr_cutscene_end();
        instance_destroy(clover_npc);
        instance_destroy(ceroba);
        instance_destroy(ed);
        global.dunes_flag[20] = 1;
        obj_radio.bgm = 189;
        global.radio_restart = true;
        cutscene_advance(39);
        break;
    
    case 39:
        if (instance_exists(obj_transition))
        {
            obj_transition.fade_in_speed = 0.05;
            obj_transition.fade_out_speed = 0.025;
            instance_destroy();
        }
        
        break;
}
