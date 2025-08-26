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
            sndfnt = sndfnt_flowey;
            message[0] = "* Howdy!\t";
            message[1] = "* Gee, looks like we're#  getting close to an exit#  from this place.\t";
            message[2] = "* Aside from those mines,#  time has been pretty#  friendly to us.\t";
            message[3] = "* Should be a simple#  journey from here on ou-";
            prt[0] = flowey_nice;
            prt[1] = flowey_niceside;
            prt[2] = flowey_nice;
            prt[3] = flowey_nice;
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
                    sndfnt = snd_talk_martlet;
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
            sndfnt = sndfnt_flowey;
            message[0] = "* Really?";
            prt[0] = flowey_pissed;
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
            martlet = instance_create(__view_get(e__VW.XView, 0) + 320 + 40, obj_pl.y, obj_martlet_dunes_32);
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
            sndfnt = snd_talk_martlet;
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
            prt[0] = spr_martlet_head_nervous;
            prt[1] = spr_martlet_head_nervous_smile;
            prt[2] = spr_martlet_head_wondering;
            prt[3] = spr_martlet_head_moderate;
            prt[4] = spr_martlet_head_moderate;
            prt[5] = spr_martlet_head_regular;
            prt[6] = spr_martlet_head_moderate;
            prt[7] = spr_martlet_head_nervous_smile;
            prt[8] = spr_martlet_head_melancholic;
            prt[9] = spr_martlet_head_surprised;
            prt[10] = spr_martlet_head_regular;
            prt[11] = spr_martlet_head_content;
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
            sndfnt = snd_talk_martlet;
            talker[0] = other.martlet;
            message[0] = "* So, Clover, this is a#  big favor, but I would#  like to help you.";
            message[1] = "* I kinda let you escape#  in Snowdin so... I'm in#  too deep.";
            message[2] = "* I'm sure I could pull#  my weight! I'll even let#  you lead! ";
            message[3] = "* I won't leave your side#  to ensure your safety!";
            message[4] = "* Please?";
            prt[0] = spr_martlet_head_sad;
            prt[1] = spr_martlet_head_nervous_smile;
            prt[2] = spr_martlet_head_melancholic;
            prt[3] = spr_martlet_head_regular;
            prt[4] = spr_martlet_head_nervous_smile;
            position = 1;
            
            if (outcome == 1)
            {
                message[5] = "* Yes!";
                prt[5] = spr_martlet_head_content;
            }
            
            if (outcome == 2)
            {
                message[5] = "* I'll take that as a#  yes!";
                prt[5] = spr_martlet_head_regular;
            }
            
            message[6] = "* This will be super fun!";
            message[7] = "* So... shall we be off?";
            prt[6] = spr_martlet_head_content;
            prt[7] = spr_martlet_head_happy;
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
        
        global.party_member = obj_martlet_follower;
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
