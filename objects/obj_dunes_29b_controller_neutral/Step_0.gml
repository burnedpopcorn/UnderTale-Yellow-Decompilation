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
            message[4] = "* Hey! Human!";
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
            message[0] = "* Really?";
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
        {
            martlet = instance_create(__view_get(e__VW.XView, obj_quote_battle_ceroba_outro_4) + 320 + 40, obj_pl.y, obj_martlet_dunes_32);
            audio_play_sound(mus_birdsofafeather, 1, 1);
        }
        
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
            ch_msg = 10;
            ch[1] = "It's Clover";
            sndfnt = 102;
            talker[0] = other.martlet;
            message[0] = "* Don't attack me, I can#  explain why I'm here!";
            message[1] = "* I said I would find you#  again, didn't I?";
            message[2] = "* Well, after our#  encounter, I spotted you#  stealing Ava... My raft.";
            message[3] = "* BUT, I won't hold it#  against you.";
            message[4] = "* I'm sure you didn't#  mean to wreck her.";
            message[5] = "* I attacked you, you#  destroyed something I#  love, even steven!";
            message[6] = "* Anyway, I followed the#  river and ended up here.";
            message[7] = "* I know I came off as a#  murderous Royal Guard#  but I'm honestly not!";
            message[8] = "* I have to follow my#  guidebook when dealing#  with humans and stuff...";
            message[9] = "* Oh! Right! I really#  dislike calling you#  \"human\".";
            message[10] = "* What's your actual#  name?";
            message[11] = "* What a unique name! I#  love it!";
            prt[0] = 322;
            prt[1] = 323;
            prt[2] = 338;
            prt[3] = 321;
            prt[4] = 321;
            prt[5] = 328;
            prt[6] = 321;
            prt[7] = 323;
            prt[8] = 320;
            prt[9] = 333;
            prt[10] = 328;
            prt[11] = 312;
            position = 1;
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
            message[0] = "* So, Clover, this is a#  big favor, but I would#  like to help you.";
            message[1] = "* I kinda let you escape#  in Snowdin so... I'm in#  too deep.";
            message[2] = "* I'm sure I could pull#  my weight! I'll even let#  you lead! ";
            message[3] = "* I won't leave your side#  to ensure your safety!";
            message[4] = "* Please?";
            prt[0] = 329;
            prt[1] = 323;
            prt[2] = 320;
            prt[3] = 328;
            prt[4] = 323;
            position = 1;
            
            if (outcome == 1)
            {
                message[5] = "* Yes!";
                prt[5] = 312;
            }
            
            if (outcome == 2)
            {
                message[5] = "* I'll take that as a#  yes!";
                prt[5] = 328;
            }
            
            message[6] = "* This will be super fun!";
            message[7] = "* So... shall we be off?";
            prt[6] = 312;
            prt[7] = 318;
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
        audio_sound_gain(mus_birdsofafeather, 0, 200);
        audio_sound_gain(obj_radio.current_song, 1, 800);
        scene++;
        break;
    
    case 10:
        instance_destroy();
        global.dunes_flag[16] = 1;
        scr_cutscene_end();
        break;
}
