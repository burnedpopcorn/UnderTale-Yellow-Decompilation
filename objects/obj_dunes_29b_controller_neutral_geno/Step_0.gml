switch (scene)
{
    case 0:
        if (obj_pl.x > 300)
        {
            scr_cutscene_start();
            audio_sound_gain(obj_radio.current_song, 0, 360);
            flowey = instance_create(360, obj_pl.y, obj_dunes_32_flowey);
            timer = 40;
            scene++;
        }
        
        break;
    
    case 1:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = 96;
            message[0] = "* Howdy!\t";
            message[1] = "* Gee, looks like we're#  getting close to an exit#  from this place.\t";
            message[2] = "* Aside from those mines,#  time has been pretty#  friendly to us.\t";
            message[3] = "* Should be a simple#  journey from here on ou-";
            prt[0] = 348;
            prt[1] = 347;
            prt[2] = 348;
            prt[3] = 348;
            message[4] = "* There you are!";
            talker[0] = other.flowey;
            position = 1;
            
            if (message_current == 3)
            {
                skippable = false;
                
                if (cutoff >= string_length(message[message_current]))
                {
                    other.scene++;
                    other.timer = 60;
                    other.flowey.is_talking = false;
                    sndfnt = 102;
                    portrait = false;
                    message_current += 1;
                    cutoff = 0;
                }
            }
        }
        
        break;
    
    case 2:
        if (scr_timer())
        {
            scene++;
            timer = 15;
            instance_destroy(msg);
        }
        
        break;
    
    case 3:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = 96;
            message[0] = "* You gotta be kidding#  me.";
            prt[0] = 351;
            talker[0] = other.flowey;
            position = 1;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 4:
        with (flowey)
        {
            sprite_index = spr_floweyleave;
            image_speed = 0.2;
        }
        
        timer = 20;
        scene++;
        break;
    
    case 5:
        if (!scr_timer())
            exit;
        
        if (!instance_exists(obj_martlet_dunes_32))
            martlet = instance_create(__view_get(e__VW.XView, obj_quote_battle_ceroba_outro_4) + 320 + 40, obj_pl.y, obj_martlet_dunes_32);
        
        if (martlet.npc_arrived)
        {
            martlet.npc_arrived = false;
            scene++;
        }
        
        break;
    
    case 6:
        scr_text();
        
        with (msg)
        {
            ch_msg = 9;
            ch[1] = "Okay";
            ch[2] = "...";
            sndfnt = 102;
            talker[0] = other.martlet;
            message[0] = "* How are you holding#  up?\t";
            message[1] = "* ...\t";
            message[2] = "* Look, I can't forgive#  you for what you did.#  Not yet.\t";
            message[3] = "* I sense goodness in you#  though. A want to#  correct your mistakes.\t";
            message[4] = "* You were only defending#  yourself back there,#  right?\t";
            message[5] = "* ...\t";
            message[6] = "* Well, wallowing in the#  past won't do any good.\t";
            message[7] = "* I want to help you. I#  believe in you.";
            message[8] = "* ...I also let you#  escape in Snowdin so...#  I'm in too deep.";
            message[9] = "* What do you say?";
            prt[0] = 320;
            prt[1] = 329;
            prt[2] = 317;
            prt[3] = 320;
            prt[4] = 320;
            prt[5] = 329;
            prt[6] = 321;
            prt[7] = 321;
            prt[8] = 338;
            prt[9] = 328;
            position = 1;
            
            if (outcome == 1)
            {
                message[10] = "* Sounds good.";
                prt[10] = 312;
            }
            
            if (outcome == 2)
            {
                message[10] = "* I'll take that as a#  yes.";
                message[11] = "* This will be good for#  both of us.";
                prt[10] = 320;
                prt[11] = 328;
            }
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 7:
        scr_text();
        
        with (msg)
        {
            ch_msg = 4;
            ch[1] = "Okay";
            ch[2] = "Uh...";
            sndfnt = 102;
            talker[0] = other.martlet;
            message[0] = "* Let's turn over a new#  leaf, okay?";
            message[1] = "* Lead the way.";
            prt[0] = 328;
            prt[1] = 312;
            position = 1;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 8:
        with (martlet)
        {
            x_dest[0] = obj_pl.x - 20;
            y_dest[0] = obj_pl.y;
            end_direction = "right";
            can_walk = true;
            
            if (npc_arrived)
                other.scene++;
        }
        
        break;
    
    case 9:
        with (instance_create(martlet.x, martlet.y, obj_martlet_follower))
            npc_reset = true;
        
        global.party_member = 1170;
        instance_destroy(martlet);
        audio_sound_gain(obj_radio.current_song, 1, 800);
        scene++;
        break;
    
    case 10:
        global.dunes_flag[16] = 1;
        global.kill_number[3] = 20;
        scr_cutscene_end();
        scene = 11;
        break;
    
    case 11:
        break;
}
