var scroll_speed_current;

if (room == rm_waterfall_og)
{
    if ((scene >= 12 && global.snowdin_flag[13] == 1) || (global.snowdin_flag[13] >= 2 && scene >= 2))
    {
        if (scroll_speed > -8)
            scroll_speed -= 0.25;
    }
    
    scroll_speed_current = ceil(scroll_speed);
    var num = tile_get_count();
    
    for (var i = 0; i < num; i++)
    {
        var tile = tile_get_id(i);
        var tile_y = tile_get_y(tile);
        var tile_x = tile_get_x(tile);
        var tile_width = tile_get_width(tile);
        var tile_shift;
        
        switch (tile_get_depth(tile))
        {
            case 1000000:
            case 999999:
                tile_shift = scroll_speed_current * 0.5;
                break;
            
            case -150:
                tile_shift = scroll_speed_current;
                break;
            
            case -200:
                tile_shift = scroll_speed_current * 1.5;
                break;
        }
        
        tile_set_position(tile, tile_x + tile_shift, tile_y);
        
        if (tile_x <= -480)
        {
            var diff_x = abs(tile_x) - 480;
            tile_set_position(tile, ((room_width - 480) + tile_shift) - diff_x, tile_y);
        }
    }
}

if (instance_exists(obj_duck))
    obj_duck.x += (scroll_speed_current * 1.5);

if (global.snowdin_flag[13] == 1)
{
    var martlet = 1570;
    
    switch (scene)
    {
        case 0:
            if (scr_timer())
            {
                audio_play_sound(snd_martlet_lands, 1, 0);
                scene = 1;
            }
            
            break;
        
        case 1:
            with (martlet)
            {
                if (y < 130)
                {
                    y += 3;
                }
                else
                {
                    y = 157;
                    other.scene = 2;
                    sprite_index = spr_martlet_sit_down;
                    image_index = 0;
                    image_speed = 0.3;
                }
            }
            
            break;
        
        case 2:
            with (martlet)
            {
                if (image_index >= 23)
                {
                    image_speed = 0;
                    sprite_index = spr_martlet_sit;
                    other.scene = 3;
                    other.timer = 60;
                }
            }
            
            break;
        
        case 3:
            if (!scr_timer())
                exit;
            
            scr_text();
            
            with (msg)
            {
                sndfnt = snd_talk_martlet;
                message[0] = "* So, hi!";
                prt[0] = spr_martlet_head_content;
            }
            
            if (global.dialogue_open == false)
            {
                scene++;
                timer = 45;
            }
            
            break;
        
        case 4:
            if (!scr_timer())
                exit;
            
            scr_text();
            
            with (msg)
            {
                sndfnt = snd_talk_martlet;
                message[0] = "* So I was thinking.";
                message[1] = "* If Ava doesn't have#  sails,";
                message[2] = "* Does this still count as#  sailing?";
                prt[0] = spr_martlet_head_regular;
                prt[1] = spr_martlet_head_wondering;
                prt[2] = spr_martlet_head_questioning;
            }
            
            if (!global.dialogue_open)
            {
                scene = 4.5;
                timer = 80;
            }
            
            break;
        
        case 4.5:
            if (!scr_timer())
                exit;
            
            scr_text();
            
            with (msg)
            {
                sndfnt = snd_talk_martlet;
                message[0] = "* Pretty smooth ride,#  yeah?    ";
                message[1] = "* My woodworking skills#  aren't too shabby!    ";
                message[2] = "* I suppose I should#  thank my mentor.    ";
                message[3] = "* Older fella by the name#  of Chujin. Taught me#  everything!";
                message[4] = "* He... Well... Nevermind.";
                prt[0] = spr_martlet_head_content;
                prt[1] = spr_martlet_head_smirk;
                prt[2] = spr_martlet_head_moderate;
                prt[3] = spr_martlet_head_regular;
                prt[4] = spr_martlet_head_sad;
            }
            
            if (!global.dialogue_open)
            {
                scene = 5;
                timer = 80;
            }
            
            break;
        
        case 5:
            if (!scr_timer())
                exit;
            
            scr_text();
            
            with (msg)
            {
                sndfnt = snd_talk_martlet;
                ch_msg = 2;
                ch[1] = "Yes";
                ch[2] = "No";
                message[0] = "* Hey, so would you mind#  answering a few#  questions for me?";
                message[1] = "* It's nothing big, it's#  just a little quality#  assurance questionnaire.";
                message[2] = "* Will you try it?";
                prt[0] = spr_martlet_head_regular;
                prt[1] = spr_martlet_head_regular;
                prt[2] = spr_martlet_head_content;
                
                if (outcome == 1)
                {
                    message[3] = "* Great!";
                    message[4] = "* Question one:";
                    prt[3] = spr_martlet_head_happy;
                    prt[4] = spr_martlet_head_regular;
                }
                
                if (outcome == 2)
                {
                    message[3] = "* Oh, yeah, no, that's#  fine.";
                    message[4] = "* It's just that, you#  know, it might help me#  keep my job.";
                    message[5] = "* Even a bad review, it#  just can't be, um, no#  review.";
                    message[6] = "* Look, I'll even fill it#  out for you!";
                    message[7] = "* You won't even notice#  I'm doing it, it'll#  be fun!";
                    message[8] = "* Okay, question one:";
                    prt[3] = spr_martlet_head_melancholic;
                    prt[4] = spr_martlet_head_melancholic;
                    prt[5] = spr_martlet_head_wondering;
                    prt[6] = spr_martlet_head_regular;
                    prt[7] = spr_martlet_head_regular;
                    prt[8] = spr_martlet_head_content;
                }
            }
            
            if (!global.dialogue_open)
                scene++;
            
            break;
        
        case 6:
            with (martlet)
            {
                if (sprite_index != spr_martlet_sit_down)
                {
                    sprite_index = spr_martlet_sit_down;
                    image_index = 23;
                    image_speed = 0.3;
                }
                else if (image_index >= 40)
                {
                    image_speed = 0;
                    sprite_index = spr_martlet_sit_book;
                    other.scene++;
                }
            }
            
            break;
        
        case 7:
            scr_text();
            
            if (!instance_exists(obj_dialoguebox_dummy))
                instance_create(0, 0, obj_dialoguebox_dummy);
            
            with (msg)
            {
                sndfnt = snd_talk_martlet;
                message[0] = "* On a scale from 1-3...";
                message[1] = "* How would you rate your#  encounter with the#  Royal Guard?";
                message[2] = "* Please answer honestly!";
                prt[0] = spr_martlet_head_regular;
                prt[1] = spr_martlet_head_regular;
                prt[2] = spr_martlet_head_regular;
                ch_msg = 2;
                ch[1] = "1";
                ch[2] = "2";
                ch[3] = "3";
                ch[4] = "";
                
                if (outcome == 1)
                {
                    message[3] = "* Oh... was it that bad?#  I'm sorry.";
                    message[4] = "* Well, maybe it wasn't#  really as bad as you#  think it was!";
                    message[5] = "* It's one of those \"bad#  in the moment but a good#  laugh later\" things!";
                    message[6] = "* Let's keep going, maybe#  you'll change your mind!";
                    prt[3] = spr_martlet_head_surprised;
                    prt[4] = spr_martlet_head_wondering;
                    prt[5] = spr_martlet_head_moderate;
                    prt[6] = spr_martlet_head_regular;
                }
                
                if (outcome == 2)
                {
                    message[3] = "* That sounds fair.";
                    message[4] = "* I think 2 out of 3 is#  an accurate rating of#  my performance.";
                    message[5] = "* Ya know, just in#  general.";
                    message[6] = "* ...";
                    message[7] = "* Where were we?";
                    prt[3] = spr_martlet_head_moderate;
                    prt[4] = spr_martlet_head_wondering;
                    prt[5] = spr_martlet_head_moderate;
                    prt[6] = spr_martlet_head_moderate;
                    prt[7] = spr_martlet_head_regular;
                }
                
                if (outcome == 3)
                {
                    message[3] = "* Wait, really!?";
                    message[4] = "* I got a three!";
                    message[5] = "* I've never gotten a#  three before!";
                    message[6] = "* Oh my goodly goodness!#  I can't believe it I#  got a three!";
                    message[7] = "* I have to tell#  absolutely everyone!";
                    message[8] = "* Okay, sorry, got#  carried away.";
                    message[9] = "* Let's keep going!";
                    prt[3] = spr_martlet_head_surprised;
                    prt[4] = spr_martlet_head_happy;
                    prt[5] = spr_martlet_head_content;
                    prt[6] = spr_martlet_head_content;
                    prt[7] = spr_martlet_head_content;
                    prt[8] = spr_martlet_head_happy;
                    prt[9] = spr_martlet_head_regular;
                }
            }
            
            if (!global.dialogue_open)
                scene++;
            
            break;
        
        case 8:
            scr_text();
            
            with (msg)
            {
                sndfnt = snd_talk_martlet;
                message[0] = "* Question two:";
                message[1] = "* On a scale from 1-2,#  how would you rate...";
                message[2] = "* ...the puzzles deployed#  in Snowdin.";
                prt[0] = spr_martlet_head_regular;
                prt[1] = spr_martlet_head_regular;
                prt[2] = spr_martlet_head_regular;
                ch_msg = 2;
                ch[1] = "1";
                ch[2] = "2";
                
                if (outcome == 1)
                {
                    message[3] = "* Oh. Yeah I was gonna,#  like, complain about#  that, or something.";
                    message[4] = "* They don't really, um,#  acknowledge my requests#  for materials anymore.";
                    message[5] = "* I wanted the molten#  rocks to be way bigger.#  It's a shame.";
                    message[6] = "* How am I supposed to#  make a quality puzzle#  without materials!";
                    message[7] = "* I mean... the concepts#  were good at least...#  right?";
                    message[8] = "* You know what, let's#  just move on.";
                    prt[3] = spr_martlet_head_questioning;
                    prt[4] = spr_martlet_head_nervous_smile;
                    prt[5] = spr_martlet_head_determined;
                    prt[6] = spr_martlet_head_disappointed;
                    prt[7] = spr_martlet_head_sad;
                    prt[8] = spr_martlet_head_regular;
                }
                
                if (outcome == 2)
                {
                    color = true;
                    col_modif[0] = c_orange;
                    message[3] = "* Really!";
                    message[4] = "* Thanks, I made them#  myself!";
                    message[5] = "* There's a reason I was#  assigned to work under#  the Royal Scientist!";
                    message_col[5][0] = "                        #                        #      Royal Scientist ";
                    message[6] = "* I mean, it's because I#  got last choice of#  station, but still!";
                    message[7] = "* You pick up a few#  things guardin' all#  that science stuff!";
                    message[8] = "* Anyway, back on topic!";
                    prt[3] = spr_martlet_head_surprised;
                    prt[4] = spr_martlet_head_content;
                    prt[5] = spr_martlet_head_happy;
                    prt[6] = spr_martlet_head_nervous_smile;
                    prt[7] = spr_martlet_head_content;
                    prt[8] = spr_martlet_head_regular;
                }
            }
            
            if (!global.dialogue_open)
                scene++;
            
            break;
        
        case 9:
            scr_text();
            
            with (msg)
            {
                sndfnt = snd_talk_martlet;
                message[0] = "* Question three:";
                message[1] = "* On a scale 1-4, how#  would you rate the#  au-di-tory ambi-an-#";
                message[2] = "* What does that mean?";
                message[3] = "* Okay, that's a new#  question. Why do they#  keep updating this?";
                message[4] = "* Let's just forget the#  questionnaire.";
                message[5] = "* I'll just put you#  down as dead center#  for the rest.";
                message[6] = "* That sound good? Yeah#  that works.";
                message[7] = "* Just a 2 there... and a#  3... and a 2.15 here...#  and 23, and we're done!";
                prt[0] = spr_martlet_head_regular;
                prt[1] = spr_martlet_head_confused;
                prt[2] = spr_martlet_head_questioning;
                prt[3] = spr_martlet_head_confused;
                prt[4] = spr_martlet_head_melancholic;
                prt[5] = spr_martlet_head_regular;
                prt[6] = spr_martlet_head_regular;
                prt[7] = spr_martlet_head_content;
            }
            
            if (!global.dialogue_open)
            {
                scene++;
                instance_destroy(obj_dialoguebox_dummy);
            }
            
            break;
        
        case 10:
            with (martlet)
            {
                if (sprite_index != spr_martlet_sit_down)
                {
                    sprite_index = spr_martlet_sit_down;
                    image_index = 46;
                    image_speed = 0.3;
                }
                else if (image_index >= (image_number - 1))
                {
                    image_speed = 0;
                    sprite_index = spr_martlet_sit;
                    other.scene++;
                }
            }
            
            break;
        
        case 11:
            scr_text();
            
            with (msg)
            {
                sndfnt = snd_talk_martlet;
                message[0] = "* Oh, one more thing.";
                message[1] = "* I'm gonna need your#  name for legal purposes.";
                message[2] = "* You know how it gets.";
                prt[0] = spr_martlet_head_moderate;
                prt[1] = spr_martlet_head_melancholic;
                prt[2] = spr_martlet_head_melancholic;
                ch_msg = 2;
                ch[1] = "It's Clover";
                
                if (outcome == 1)
                {
                    message[3] = "* What a unique name! I#  love it.";
                    message[4] = "* So, Clover, let's talk#  about Ava!";
                    message[5] = "* Isn't she great? I told#  ya, sails like a dream#  from a perfect lullaby!";
                    message[6] = "* Nice pace, pretty view,#  and not a single leak!";
                    message[7] = "* Oh, well there's a#  little one, but not too#  many leaks!";
                    message[8] = "* We can just sit back,#  and relax and-hey...";
                    message[9] = "* Do you hear an abnormal#  amount of running water?";
                    prt[3] = spr_martlet_head_content;
                    prt[4] = spr_martlet_head_regular;
                    prt[5] = spr_martlet_head_happy;
                    prt[6] = spr_martlet_head_happy;
                    prt[7] = spr_martlet_head_melancholic;
                    prt[8] = spr_martlet_head_regular;
                    prt[9] = spr_martlet_head_confused;
                }
            }
            
            if (!global.dialogue_open)
            {
                audio_sound_gain(snd_rapids, 1, 500);
                audio_sound_gain(snd_rock_roll, 0, 0);
                audio_play_sound(snd_rock_roll, 1, 0);
                audio_sound_gain(snd_rock_roll, 1, 1000);
                scr_audio_fade_out(obj_radio.current_song, 2000);
                timer = 60;
                scene++;
            }
            
            break;
        
        case 12:
            if (scr_timer())
                scene++;
            
            break;
        
        case 13:
            scr_text();
            
            with (msg)
            {
                sndfnt = snd_talk_martlet;
                message[0] = "* Well, we are in#  Waterfall...";
                message[1] = "* Is it just me or is the#  river getting faster?";
                message[2] = "* Well, if anything it#  helps u-";
                prt[0] = spr_martlet_head_melancholic;
                prt[1] = spr_martlet_head_suspiciouser;
                prt[2] = spr_martlet_head_melancholic;
                
                if (message_current == 2)
                {
                    skippable = false;
                    
                    if (cutoff == string_length(message[message_current]))
                    {
                        global.dialogue_open = false;
                        
                        with (martlet)
                        {
                            if (sprite_index != spr_martlet_sit_surprise)
                            {
                                sprite_index = spr_martlet_sit_surprise;
                                image_index = 0;
                                image_speed = 0.3;
                            }
                        }
                    }
                }
            }
            
            if (!global.dialogue_open)
                scene++;
            
            break;
        
        case 14:
            with (martlet)
            {
                if (image_index >= (image_number - 1))
                {
                    image_speed = 0;
                    image_index = image_number - 1;
                    other.timer = 30;
                    other.scene++;
                }
            }
            
            break;
        
        case 15:
            if (!scr_timer())
                exit;
            
            scr_text();
            
            with (msg)
            {
                sndfnt = snd_talk_martlet;
                message[0] = "* UH OH!";
                prt[0] = spr_martlet_head_surprised;
                skippable = false;
                message_timer = 30;
            }
            
            if (!global.dialogue_open)
            {
                obj_radio.bgm = 161;
                global.radio_restart = true;
                audio_sound_gain(obj_radio.bgm, 1, 0);
                scene++;
            }
            
            break;
        
        case 16:
            with (martlet)
            {
                if (sprite_index != spr_martlet_sit_cling)
                {
                    sprite_index = spr_martlet_sit_cling;
                    image_index = 0;
                    image_speed = 0.3;
                }
                else
                {
                    if (floor(image_index) == 7)
                        y = 168;
                    
                    if (image_index >= (image_number - 1))
                    {
                        image_speed = 0;
                        image_index = image_number - 1;
                        other.HOTLAND_TRANSITION = true;
                        other.scene++;
                    }
                }
            }
            
            break;
        
        case 17:
            if (transition_x > -320)
            {
                transition_x -= 8;
            }
            else
            {
                room_goto(rm_hotland);
                
                with (martlet)
                {
                    sprite_index = spr_martlet_cling_dark;
                    image_speed = 0.4;
                    y = 210;
                }
                
                scene++;
            }
            
            break;
        
        case 18:
            if (transition_x > -660)
            {
                transition_x -= 8;
            }
            else
            {
                HOTLAND_TRANSITION = false;
                transition_x = 320;
                timer = 12;
                obj_pl.y = 0;
                scene++;
            }
            
            break;
        
        case 19:
            if (!scr_timer())
                exit;
            
            scr_text();
            
            with (msg)
            {
                sndfnt = snd_talk_martlet;
                message[0] = "* UM...";
                message[1] = "* I might not have been#  down this route before!";
                message[2] = "* Hold on to something!";
                prt[0] = spr_martlet_head_nervous_smile;
                prt[1] = spr_martlet_head_nervous_smile;
                prt[2] = spr_martlet_head_surprised;
                skippable = false;
                message_timer = 16;
            }
            
            if (!global.dialogue_open)
            {
                scene++;
                timer = 25;
            }
            
            break;
        
        case 20:
            if (!scr_timer())
                exit;
            
            LAVA_TRANSITION = true;
            scene++;
            break;
        
        case 21:
            if (transition_x > -320)
            {
                transition_x -= 8;
            }
            else
            {
                room_goto(rm_lava_tubes);
                
                with (martlet)
                {
                    y = 128;
                    sprite_index = spr_martlet_wind;
                }
                
                scene++;
            }
        
        case 22:
            if (transition_x > -660)
            {
                transition_x -= 9;
            }
            else
            {
                LAVA_TRANSITION = false;
                timer = 60;
                transition_x = 320;
                scene++;
            }
            
            break;
        
        case 23:
            if (!scr_timer())
                exit;
            
            scr_text();
            
            with (msg)
            {
                sndfnt = snd_talk_martlet;
                message[0] = "* Hey look it's Hotland!";
                message[1] = "* This is our stop!";
                message[2] = "* WAIT!";
                message[3] = "* WE HAVE TO DOCK HERE,#  SLOW DOWN!!";
                prt[0] = spr_martlet_head_regular;
                prt[1] = spr_martlet_head_regular;
                prt[2] = spr_martlet_head_surprised;
                prt[3] = spr_martlet_head_surprised;
                skippable = false;
                message_timer = 20;
            }
            
            if (!global.dialogue_open)
            {
                scene++;
                timer = 45;
            }
            
            break;
        
        case 24:
            if (!scr_timer())
                exit;
            
            CAVE_TRANSITION = true;
            scene++;
            break;
        
        case 25:
            if (transition_x > -320)
            {
                transition_x -= 9;
            }
            else
            {
                room_goto(rm_wildeast_cave);
                martlet.y = 133;
                scene++;
            }
            
            break;
        
        case 26:
            if (transition_x > -660)
            {
                transition_x -= 9;
            }
            else
            {
                CAVE_TRANSITION = false;
                timer = 40;
                scene++;
            }
            
            break;
        
        case 27:
            if (!scr_timer())
                exit;
            
            scr_text();
            
            with (msg)
            {
                sndfnt = snd_talk_martlet;
                message[0] = "* OHNO-OHNO-OHNO-OHNO-OHNO";
                prt[0] = spr_martlet_head_shocked;
                skippable = false;
                message_timer = 10;
            }
            
            if (!global.dialogue_open)
                scene++;
            
            break;
        
        case 28:
            if (!instance_exists(obj_cave_collider))
            {
                with (obj_waterfall_clover_sit)
                {
                    if (!clover_launch)
                        clover_launch = 1;
                }
                
                with (obj_aviator_waterfall_overworld_yellow)
                {
                    if (sprite_index != other.sprite_ava_death && sprite_index != spr_ava_broken)
                    {
                        sprite_index = other.sprite_ava_death;
                        image_index = 0;
                        image_speed = 1;
                        scr_radio_fade(0, 100);
                        audio_play_sound(snd_gun_hit, 1, 0);
                        instance_create(0, 0, obj_cave_screenshake);
                    }
                }
                
                with (obj_waterfall_martlet)
                {
                    if (sprite_index != spr_martlet_fly)
                    {
                        sprite_index = spr_martlet_fly;
                        image_index = 0;
                        image_speed = 0.4;
                        vspeed = -4;
                    }
                    else if (y <= 0)
                    {
                        instance_destroy();
                        other.timer = 60;
                        other.scene++;
                    }
                }
            }
            
            break;
        
        case 29:
            if (!scr_timer())
                exit;
            
            audio_play_sound(snd_big_crash, 1, 0);
            instance_create(0, 0, obj_cave_screenshake);
            timer = 90;
            scene++;
            break;
        
        case 30:
            if (!scr_timer())
                exit;
            
            instance_create(0, 0, obj_cave_end_transition);
            instance_destroy();
            scene++;
    }
}
else
{
    switch (scene)
    {
        case 0:
            timer = 870;
            scene++;
            break;
        
        case 1:
            if (!scr_timer())
                exit;
            
            timer = 180;
            obj_radio.bgm = 168;
            global.radio_restart = true;
            audio_sound_gain(snd_rapids, 1, 500);
            audio_sound_gain(snd_rock_roll, 0, 0);
            audio_play_sound(snd_rock_roll, 1, 0);
            audio_sound_gain(snd_rock_roll, 1, 1000);
            scene++;
            break;
        
        case 2:
            if (scr_timer())
            {
                scene++;
                HOTLAND_TRANSITION = true;
            }
            
            break;
        
        case 3:
            if (transition_x > -320)
            {
                transition_x -= 8;
            }
            else
            {
                room_goto(rm_hotland);
                scene++;
            }
            
            break;
        
        case 4:
            if (transition_x > -660)
            {
                transition_x -= 8;
            }
            else
            {
                HOTLAND_TRANSITION = false;
                transition_x = 320;
                timer = 120;
                scene++;
            }
            
            break;
        
        case 5:
            if (!scr_timer())
                exit;
            
            LAVA_TRANSITION = true;
            scene++;
            break;
        
        case 6:
            if (transition_x > -320)
            {
                transition_x -= 8;
            }
            else
            {
                room_goto(rm_lava_tubes);
                scene++;
            }
        
        case 7:
            if (transition_x > -660)
            {
                transition_x -= 9;
            }
            else
            {
                LAVA_TRANSITION = false;
                timer = 180;
                transition_x = 320;
                scene++;
            }
            
            break;
        
        case 8:
            if (!scr_timer())
                exit;
            
            CAVE_TRANSITION = true;
            scene++;
            break;
        
        case 9:
            if (transition_x > -320)
            {
                transition_x -= 9;
            }
            else
            {
                room_goto(rm_wildeast_cave);
                scene++;
            }
            
            break;
        
        case 10:
            if (transition_x > -660)
            {
                transition_x -= 9;
            }
            else
            {
                CAVE_TRANSITION = false;
                timer = 50;
                scene++;
            }
            
            break;
        
        case 11:
            if (!instance_exists(obj_cave_collider))
            {
                with (obj_waterfall_clover_sit)
                {
                    if (!clover_launch)
                        clover_launch = 1;
                }
                
                with (obj_aviator_waterfall_overworld_yellow)
                {
                    if (sprite_index != other.sprite_ava_death && sprite_index != spr_ava_broken)
                    {
                        sprite_index = other.sprite_ava_death;
                        image_index = 0;
                        image_speed = 1;
                        scr_radio_fade(0, 100);
                        audio_play_sound(snd_gun_hit, 1, 0);
                        instance_create(0, 0, obj_cave_screenshake);
                    }
                    else if (image_index >= (image_number - 1))
                    {
                        other.scene++;
                        sprite_index = spr_ava_broken;
                        image_speed = 0.4;
                    }
                }
                
                timer = 75;
            }
            
            break;
        
        case 12:
            if (!scr_timer())
                exit;
            
            audio_play_sound(snd_big_crash, 1, 0);
            instance_create(0, 0, obj_cave_screenshake);
            timer = 90;
            scene++;
            break;
        
        case 13:
            if (!scr_timer())
                exit;
            
            instance_create(0, 0, obj_cave_end_transition);
            instance_destroy();
            scene++;
            break;
    }
}
