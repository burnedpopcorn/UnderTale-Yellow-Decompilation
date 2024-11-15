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
            message[0] = "* Howdy!";
            message[1] = "* Gee, looks like we're#  getting close to an#  exit from this place.";
            message[2] = "* Aside from those mines,#  time has been pretty#  friendly to us.";
            message[3] = "* Should be a simple#  journey from here on#  ou-  ";
            message[4] = "* Clover?";
            prt[0] = 348;
            prt[1] = 348;
            prt[2] = 348;
            prt[3] = 348;
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
            message[0] = "* Great.";
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
            ch_msg = 8;
            ch[1] = "It's OK";
            ch[2] = "Calm down";
            sndfnt = 102;
            talker[0] = other.martlet;
            message[0] = "* Clover!";
            message[1] = "* You're alive! You're#  here!";
            message[2] = "* You're... here...";
            message[3] = "* I CAN'T BELIEVE MYSELF!";
            message[4] = "* I LEFT YOU ALL ALONE IN#  THAT CAVE!";
            message[5] = "* YOU HAD TO BRAVE THE#  DUNES BY YOURSELF!!";
            message[6] = "* I'M A HORRIBLE FRIEND!";
            message[7] = "* They trust me to be a#  Royal Guard and I left#  a child for dead!!";
            message[8] = "* Like, what is wrong#  with me?????";
            prt[0] = 328;
            prt[1] = 318;
            prt[2] = 333;
            prt[3] = 310;
            prt[4] = 310;
            prt[5] = 333;
            prt[6] = 333;
            prt[7] = 333;
            prt[8] = 322;
            position = 1;
            
            if (outcome == 1)
            {
                message[9] = "* I... yes.";
                message[10] = "* Thank you.";
                message[11] = "* You're clearly able to#  take care of yourself.";
                prt[9] = 322;
                prt[10] = 320;
                prt[11] = 320;
            }
            
            if (outcome == 2)
            {
                message[9] = "* I... okay.";
                message[10] = "* I should take a few#  breaths and properly#  assess the situation.";
                prt[9] = 322;
                prt[10] = 320;
            }
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 7:
        scr_text();
        
        with (msg)
        {
            ch_msg = 10;
            ch[1] = "Forgive";
            ch[2] = "...";
            sndfnt = 102;
            talker[0] = other.martlet;
            message[0] = "* The crash just happened#  so fast.";
            message[1] = "* When I saw what had#  happened to you, I#  panicked!";
            message[2] = "* I flew over the sandy#  landscape and found#  this town.";
            message[3] = "* I soon realized that I#  couldn't risk getting#  other monsters involved.";
            message[4] = "* They might've#  questioned me and I#  cannot keep secrets!";
            message[5] = "* They could've turned us#  in to the more sinister#  Royal Guards!";
            message[6] = "* So I uh...";
            message[7] = "* Sat by a cactus for an#  hour, thinking of what#  a piece of garbage I am.";
            message[8] = "* I then got the courage#  to travel back to you#  and apologize but...";
            message[9] = "* Here you were.";
            message[10] = "* So... I'm deeply sorry!";
            prt[0] = 333;
            prt[1] = 333;
            prt[2] = 338;
            prt[3] = 317;
            prt[4] = 320;
            prt[5] = 333;
            prt[6] = 323;
            prt[7] = 329;
            prt[8] = 320;
            prt[9] = 317;
            prt[10] = 317;
            position = 1;
            
            if (outcome == 1)
            {
                message[11] = "* Thank you, Clover!";
                message[12] = "* You're very kind!";
                prt[11] = 320;
                prt[12] = 318;
            }
            
            if (outcome == 2)
            {
                message[11] = "* ...";
                message[12] = "* Um...";
                prt[11] = 322;
                prt[12] = 323;
            }
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 8:
        scr_text();
        
        with (msg)
        {
            sndfnt = 102;
            talker[0] = other.martlet;
            message[0] = "* Anyway, we should move#  on.";
            message[1] = "* I decided that I won't#  leave your side now!";
            message[2] = "* I'll follow wherever#  you lead!";
            message[3] = "* You just endured some#  crazy Underground#  shenanigans, though.";
            message[4] = "* I'd understand if you#  need to rest for a bit.";
            message[5] = "* If you wanna hang#  around, that's great!";
            message[6] = "* I didn't get to#  sightsee at all on the#  way over here.";
            message[7] = "* Well then, friend.#  Shall we be off?";
            prt[0] = 328;
            prt[1] = 313;
            prt[2] = 313;
            prt[3] = 320;
            prt[4] = 320;
            prt[5] = 328;
            prt[6] = 328;
            prt[7] = 337;
            position = 1;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 9:
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
    
    case 10:
        with (instance_create(martlet.x, martlet.y, obj_martlet_follower))
            npc_reset = true;
        
        global.party_member = 1170;
        instance_destroy(martlet);
        audio_sound_gain(mus_birdsofafeather, 0, 200);
        audio_sound_gain(obj_radio.current_song, 1, 800);
        scene++;
        break;
    
    case 11:
        instance_destroy();
        global.dunes_flag[16] = 1;
        scr_cutscene_end();
        break;
}
