var camera_xx, soul, soul_canister;

if (live_call())
    return global.live_result;

switch (scene)
{
    case -1:
        cutscene_camera_freeze(163, 240);
        break;
    
    case 0:
        cutscene_wait(1.5);
        break;
    
    case 1:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            message[0] = "* You... beat me up#  pretty b-badly, huh?";
            prt[0] = 416;
        }
        
        break;
    
    case 2:
        cutscene_npc_action_sprite(1169, 693, 1, false);
        break;
    
    case 3:
        cutscene_npc_walk(1169, 190, 297, 2, "x", "up");
        break;
    
    case 4:
        obj_ceroba_npc.image_index = 1;
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            talker[1] = 1169;
            talker[3] = 1161;
            message[0] = "* S-Star I...";
            message[1] = "* Don't sweat it too#  much...";
            message[2] = "* I reckon I deserved it#  for the Wild East#  fiasco.";
            message[3] = "* ...";
            prt[0] = 609;
            prt[1] = 418;
            prt[2] = 415;
            prt[3] = 609;
            
            if (message_current == 0)
            {
                skippable = false;
                message_timer = 15;
            }
            else
            {
                skippable = true;
                message_timer = -1;
            }
            
            if (message_current == 3)
                obj_ceroba_npc.image_index = 0;
        }
        
        break;
    
    case 5:
        cutscene_npc_action_sprite(1169, 1135, 1, true, 0);
        break;
    
    case 6:
        cutscene_wait(0.5);
        break;
    
    case 7:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            talker[2] = 1161;
            message[0] = "* Heck of a hit though.";
            message[1] = "* I didn't know you had#  that in you.";
            message[2] = "* I'm... I'm so sorry.";
            prt[0] = 407;
            prt[1] = 417;
            prt[2] = 609;
        }
        
        break;
    
    case 8:
        cutscene_wait(0.5);
        break;
    
    case 9:
        cutscene_npc_action_sprite(1164, 3388, 1, true, 0);
        break;
    
    case 10:
        instance_create(obj_ceroba_npc.x, obj_ceroba_npc.y - 40, obj_cutscene_ex);
        instance_create(obj_starlo_npc.x, obj_starlo_npc.y - 40, obj_cutscene_ex);
        obj_starlo_npc.action_sprite = false;
        obj_starlo_npc.npc_direction = "left";
        obj_player_npc.npc_direction = "left";
        obj_ceroba_npc.image_index = 2;
        cutscene_sfx_play(362, 1);
        break;
    
    case 11:
        cutscene_wait(1);
        break;
    
    case 12:
        with (obj_cutscene_ex)
            instance_destroy();
        
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* Wh...";
            message[1] = "* Where am I...?";
            prt[0] = 315;
            prt[1] = 311;
        }
        
        break;
    
    case 13:
        instance_create_depth(65, 255, -500, obj_cutscene_ex);
        cutscene_sfx_play(362, 0.7);
        break;
    
    case 14:
        if (cutscene_npc_action_sprite(1164, 2970, 1, true, 0))
            obj_martlet_npc.action_sprite = false;
        
        if (obj_martlet_npc.image_index > 9)
        {
            with (obj_cutscene_ex)
                instance_destroy();
        }
        
        break;
    
    case 15:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            talker[1] = 1161;
            talker[5] = 1169;
            talker[7] = 1164;
            talker[8] = 1161;
            message[0] = "* Clover! We gotta get#  out of here!";
            message[1] = "* No.";
            message[2] = "* It's finished.";
            message[3] = "* Clover... ";
            message[4] = "* Clover won.";
            message[5] = "* Y'all had a fight? And#  the deputy won?";
            message[6] = "* (My lessons worked...)";
            message[7] = "* Wait, how much did I#  miss?";
            message[8] = "* I...";
            message[9] = "* I don't know what to#  do.";
            message[10] = "* Apologize, make#  excuses, nothing would#  change reality.";
            message[11] = "* I've dug a hole far too#  deep to climb out of.";
            message[12] = "* And for nothing...";
            prt[0] = 330;
            prt[1] = 609;
            prt[2] = 609;
            prt[3] = 609;
            prt[4] = 2987;
            prt[5] = 404;
            prt[6] = 415;
            prt[7] = 311;
            prt[8] = 2987;
            prt[9] = 2987;
            prt[10] = 609;
            prt[11] = 609;
            prt[12] = 609;
            
            switch (message_current)
            {
                case 0:
                    message_timer = 15;
                    skippable = false;
                    break;
                
                case 1:
                    obj_martlet_npc.npc_direction = "up";
                    obj_starlo_npc.npc_direction = "up";
                    obj_player_npc.npc_direction = "up";
                    skippable = true;
                    message_timer = -1;
                    break;
                
                case 4:
                    obj_ceroba_npc.image_index = 0;
                    break;
                
                case 5:
                    obj_martlet_npc.npc_direction = "right";
                    break;
                
                case 8:
                    obj_martlet_npc.npc_direction = "up";
                    break;
                
                case 9:
                    obj_ceroba_npc.image_index = 1;
                    break;
                
                case 12:
                    obj_ceroba_npc.image_index = 0;
                    break;
            }
        }
        
        break;
    
    case 16:
        cutscene_npc_walk(1164, 133, 298, 3, "x", "up");
        break;
    
    case 17:
        cutscene_wait(1);
        break;
    
    case 18:
        cutscene_music_start(88, 500);
        audio_sound_gain(cutscene_music, 0, 0);
        audio_sound_gain(cutscene_music, 0.75, 150);
    
    case 19:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            message[0] = "* Hey...";
            message[1] = "* Where was I a few hours#  ago?";
            message[2] = "* In this same situation.";
            message[3] = "* My judgment was clouded#  and I screwed up.";
            message[4] = "* But you forgave me. The#  four others did as well.";
            message[5] = "* We've both made poor#  choices, no#  sugar-coating that...";
            message[6] = "* But there is hope. At#  least... I believe there#  is.";
            prt[0] = 416;
            prt[1] = 418;
            prt[2] = 418;
            prt[3] = 420;
            prt[4] = 418;
            prt[5] = 416;
            prt[6] = 418;
        }
        
        break;
    
    case 20:
        cutscene_wait(1);
        break;
    
    case 21:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            talker[2] = 1161;
            message[0] = "* I... can't begin to#  grasp what you've gone#  through...";
            message[1] = "* But this was an#  absolutely horrible way#  of dealing with it.";
            message[2] = "* ...";
            prt[0] = 329;
            prt[1] = 317;
            prt[2] = 609;
            
            switch (message_current)
            {
                case 2:
                    obj_ceroba_npc.image_index = 1;
                    break;
            }
        }
        
        break;
    
    case 22:
        cutscene_wait(1);
        break;
    
    case 23:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* You can't change what#  has happened, you're#  right.";
            message[1] = "* But you can control how#  you live from now on.";
            message[2] = "* Your actions will mean#  everything.";
            prt[0] = 338;
            prt[1] = 321;
            prt[2] = 321;
        }
        
        break;
    
    case 24:
        cutscene_wait(0.5);
        break;
    
    case 25:
        obj_ceroba_npc.image_index = 0;
        cutscene_advance();
        break;
    
    case 26:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            talker[3] = 1164;
            talker[9] = 1169;
            talker[12] = 1161;
            message[0] = "* But...";
            message[1] = "* Chujin. His legacy. His#  wish.";
            message[2] = "* It will never be#  fulfilled.";
            message[3] = "* Chujin might not have#  been the perfect monster#  I thought he was...";
            message[4] = "* But even his darkest#  secrets came from a#  caring place.";
            message[5] = "* And that right there...#  is his legacy.";
            message[6] = "* It isn't found in a#  serum to \"save the#  world.\"";
            message[7] = "* Everyone he helped,#  everything he crafted...";
            message[8] = "* That's what matters.";
            message[9] = "* Martlet's right.";
            message[10] = "* He made life down here#  bearable for so many.";
            message[11] = "* And for that, he has my#  respect.";
            message[12] = "* I... never thought#  about it like that.";
            message[13] = "* What the hell was I#  thinking?";
            message[14] = "* I was so#  tunnel-visioned. So#  lost...";
            prt[0] = 609;
            prt[1] = 2987;
            prt[2] = 2599;
            prt[3] = 317;
            prt[4] = 321;
            prt[5] = 328;
            prt[6] = 321;
            prt[7] = 338;
            prt[8] = 321;
            prt[9] = 421;
            prt[10] = 418;
            prt[11] = 416;
            prt[12] = 2987;
            prt[13] = 2599;
            prt[14] = 2599;
        }
        
        break;
    
    case 27:
        cutscene_npc_walk(1169, 183, 238, 3, "y", "left");
        break;
    
    case 28:
        if (cutscene_wait(0.5))
            cutscene_advance(28.3);
        
        break;
    
    case 28.3:
        if (cutscene_npc_action_sprite(1161, 928, 1, true, 0))
            cutscene_advance(28.6);
        
        break;
    
    case 28.6:
        if (cutscene_wait(1))
            cutscene_advance(29);
        
        break;
    
    case 29:
        obj_starlo_npc.image_alpha = 0;
        cutscene_npc_action_sprite(1161, 3323, 1, true, 0);
        break;
    
    case 30:
        cutscene_wait(1);
        break;
    
    case 31:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            message[0] = "* We can work through#  this.";
            message[1] = "* We're here for you.";
            prt[0] = 416;
            prt[1] = 418;
        }
        
        break;
    
    case 32:
        cutscene_wait(0.75);
        break;
    
    case 33:
        cutscene_npc_action_sprite(1161, 3041, 1, true, 0);
        
        if (obj_ceroba_npc.image_index >= 8)
        {
            cutscene_advance();
            obj_ceroba_npc.image_speed = 0;
        }
        
        break;
    
    case 34:
        cutscene_wait(1);
        break;
    
    case 35:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            talker[5] = 1161;
            message[0] = "* Now...";
            message[1] = "* You should take some#  time to heal. Recoup.";
            message[2] = "* But... Kanako's#  wellbeing is still a#  valid concern.";
            message[3] = "* I have connections to#  the Royal Scientist#  so...";
            message[4] = "* I'll begin an#  investigation. Try my#  best to help.";
            message[5] = "* I don't know what to#  say...";
            message[6] = "* Thank you, Martlet.";
            prt[0] = 338;
            prt[1] = 321;
            prt[2] = 317;
            prt[3] = 329;
            prt[4] = 320;
            prt[5] = 2987;
            prt[6] = 609;
        }
        
        break;
    
    case 36:
        obj_ceroba_npc.image_speed = 1;
        cutscene_npc_action_sprite(1161, 3041, 1, true, 0);
        break;
    
    case 37:
        if (cutscene_npc_action_sprite(1161, 2850, 1, false, 0))
            obj_ceroba_npc.npc_direction = "down";
        
        if (obj_ceroba_npc.image_index > 2)
        {
            obj_starlo_npc.image_alpha = 1;
            obj_starlo_npc.npc_direction = "down";
            obj_starlo_npc.x = 182;
            obj_starlo_npc.y = 240;
        }
        
        break;
    
    case 38:
        cutscene_npc_walk(1169, 198, 238, 2, "x", "left");
        break;
    
    case 39:
        cutscene_wait(1);
        break;
    
    case 40:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Clover.";
            message[1] = "* I owe an apology to#  you, most of all.";
            message[2] = "* Our time in the#  Steamworks and what I#  said... It wasn't fake.";
            message[3] = "* It did allow me to#  briefly forget my#  troubles and have fun.";
            message[4] = "* But my reasoning for#  being there...";
            prt[0] = 394;
            prt[1] = 394;
            prt[2] = 3757;
            prt[3] = 394;
            prt[4] = 2987;
        }
        
        break;
    
    case 41:
        if (cutscene_npc_walk(1168, 161, 244, 2, "y", "up"))
            obj_starlo_npc.npc_direction = "left";
        
        break;
    
    case 42:
        cutscene_wait(0.5);
        break;
    
    case 43:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* I can't begin to ";
            prt[0] = 2987;
            message_timer = 5;
            skippable = false;
        }
        
        break;
    
    case 44:
        obj_ceroba_npc.image_alpha = 0;
        cutscene_npc_action_sprite(1168, 3142, 1, true, 0);
        
        if (obj_player_npc.image_index >= 12)
        {
            obj_player_npc.image_speed = 0;
            cutscene_advance(44.5);
        }
        
        break;
    
    case 44.5:
        if (cutscene_wait(0.75))
            cutscene_advance(45);
        
        break;
    
    case 45:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* W-Why?";
            message[1] = "* I mean...";
            prt[0] = 393;
            prt[1] = 2987;
        }
        
        break;
    
    case 46:
        obj_player_npc.image_speed = 1;
        cutscene_npc_action_sprite(1168, 3142, 1, true, 0);
        break;
    
    case 47:
        cutscene_wait(1.5);
        break;
    
    case 48:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            talker[1] = 1169;
            message[0] = "* ...Thank you.";
            message[1] = "* I'm gonna cry.";
            prt[0] = 609;
            prt[1] = 410;
            
            if (message_current == 1)
                obj_starlo_npc.npc_direction = "right";
        }
        
        break;
    
    case 49:
        obj_starlo_npc.npc_direction = "left";
        cutscene_wait(1);
        break;
    
    case 50:
        if (cutscene_npc_action_sprite(1168, 1985, 1, true, 0))
        {
            obj_ceroba_npc.image_alpha = 1;
            obj_player_npc.action_sprite = false;
        }
        
        break;
    
    case 51:
        cutscene_wait(0.5);
        break;
    
    case 52:
        cutscene_npc_walk(1168, 161, 298, 3, "y", "up");
        break;
    
    case 53:
        cutscene_audio_fade(cutscene_music, 0, 1000, 0.1, false, true);
        break;
    
    case 54:
        obj_martlet_npc.npc_direction = "right";
        obj_player_npc.npc_direction = "left";
        obj_starlo_npc.npc_direction = "down";
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* I... can't believe it's#  come to this but...";
            message[1] = "* Clover, I think your#  journey is at its end.";
            message[2] = "* ASGORE and the barrier#  await us.";
            prt[0] = 329;
            prt[1] = 317;
            prt[2] = 317;
        }
        
        break;
    
    case 55:
        cutscene_npc_walk(1169, 198, 298, 4, "y", "left");
        break;
    
    case 56:
        cutscene_dialogue_nogui();
        
        with (msg)
        {
            talker[0] = 1169;
            talker[1] = 1164;
            talker[2] = 1161;
            talker[3] = 1164;
            talker[4] = 1161;
            talker[6] = 1164;
            talker[8] = 1169;
            talker[9] = 1161;
            talker[10] = 1169;
            talker[11] = 1161;
            talker[13] = 1164;
            talker[16] = 1169;
            talker[17] = 1161;
            talker[19] = 1164;
            talker[20] = 1169;
            talker[21] = 1161;
            talker[22] = 1164;
            talker[25] = 1169;
            talker[26] = 1161;
            talker[28] = 1164;
            talker[30] = 1161;
            message[0] = "* No! Already???";
            message[1] = "* As sad as it is, Clover#  needs to go home.";
            message[2] = "* That won't work.";
            message[3] = "* What?";
            message[4] = "* Sure, we know Clover#  for who they are but#  Asgore...";
            message[5] = "* He won't see Clover as#  we do. And he doesn't#  care to learn.";
            message[6] = "* But this is a unique#  situation!";
            message[7] = "* The King has always#  been kind and#  understanding!";
            message[8] = "* Yeah, Clover wouldn't#  hurt anyone!";
            message[9] = "* You think that's ever#  mattered in the past?";
            message[10] = "* ...";
            message[11] = "* The truth stings, but#  it is what it is.";
            message[12] = "* ...";
            message[13] = "* So, what?";
            message[14] = "* Should I take Clover#  back to Snowdin?";
            message[15] = "* Hide out for the rest#  of our lives?";
            message[16] = "* Yeah, why couldn't#  Clover stay with us?";
            message[17] = "* I mean, it's plausible#  but won't the Royal#  Guard be on the hunt?";
            message[18] = "* After so many#  encounters Clover just#  disappears?";
            message[19] = "* It wouldn't be the#  first time.";
            message[20] = "* Ohh yeah! They would#  probably think the same#  thing happened again!";
            message[21] = "* ...";
            message[22] = "* But... What about the#  others?";
            message[23] = "* You know, the next#  humans.";
            message[24] = "* Clover gets to live#  happily but they have to#  die?";
            message[25] = "* Oh.";
            message[26] = "* ...We don't know their#  hearts.";
            message[27] = "* Maybe they";
            message[28] = "* What? Deserve it?";
            message[29] = "* Have you learned#  anything?";
            message[30] = "* I'm just weighing our#  options!";
            message[31] = "* We're backed into a#  corner here, alright?";
            prt[0] = 406;
            prt[1] = 317;
            prt[2] = 377;
            prt[3] = 333;
            prt[4] = 371;
            prt[5] = 377;
            prt[6] = 309;
            prt[7] = 309;
            prt[8] = 417;
            prt[9] = 377;
            prt[10] = 420;
            prt[11] = 394;
            prt[12] = 394;
            prt[13] = 338;
            prt[14] = 321;
            prt[15] = 321;
            prt[16] = 417;
            prt[17] = 370;
            prt[18] = 371;
            prt[19] = 338;
            prt[20] = 419;
            prt[21] = 394;
            prt[22] = 329;
            prt[23] = 317;
            prt[24] = 315;
            prt[25] = 420;
            prt[26] = 371;
            prt[27] = 370;
            prt[28] = 309;
            prt[29] = 309;
            prt[30] = 377;
            prt[31] = 370;
            talker[32] = 1169;
            talker[33] = 1164;
            talker[36] = 1161;
            talker[37] = 1164;
            talker[38] = 1169;
            message[32] = "* Hey, calm down, guys.";
            message[33] = "* You know I really#  thought tonight's fiasco#  was enough!";
            message[34] = "* We all talked it#  through and things were#  going well.";
            message[35] = "* But you immediately#  suggest giving the#  future children up to";
            message[36] = "* I didn't mean it like#  that! Get off my case!";
            message[37] = "* I'm sorry but I don't#  think you exactly have#  room to talk right now.";
            message[38] = "* Come on you two! Cut it#  out!";
            prt[32] = 419;
            prt[33] = 309;
            prt[34] = 321;
            prt[35] = 308;
            prt[36] = 368;
            prt[37] = 338;
            prt[38] = 421;
            
            if (message_current == 27)
            {
                message_timer = 10;
                skippable = false;
            }
            else if (message_current == 31)
            {
                skippable = false;
                message_timer = 35;
                other.scene++;
            }
            else
            {
                message_timer = -1;
                skippable = true;
            }
            
            switch (message_current)
            {
                case 2:
                    obj_starlo_npc.npc_direction = "up";
                    obj_martlet_npc.npc_direction = "up";
                    obj_player_npc.npc_direction = "up";
                    break;
                
                case 6:
                    obj_starlo_npc.npc_direction = "left";
                    break;
                
                case 8:
                    obj_starlo_npc.npc_direction = "up";
                    break;
                
                case 22:
                    obj_starlo_npc.npc_direction = "left";
                    break;
                
                case 26:
                    obj_starlo_npc.npc_direction = "up";
                    break;
            }
        }
        
        break;
    
    case 57:
        cutscene_npc_direction(1168, "down");
        break;
    
    case 58:
        cutscene_wait(1.5);
        break;
    
    case 59:
        cutscene_npc_walk(1168, obj_player_npc.x, 312, 0.5, "y", "down");
        break;
    
    case 60:
        cutscene_wait(1.5);
        break;
    
    case 61:
        cutscene_npc_action_sprite(1168, 3114, 1, true, 0);
        break;
    
    case 62:
        cutscene_wait(1);
        break;
    
    case 63:
        overlay_alpha += 0.01;
        
        if (overlay_alpha >= 0.75)
            cutscene_advance();
        
        break;
    
    case 64:
        cutscene_wait(1);
        break;
    
    case 65:
        cymbal_sound = audio_play_sound(mus_cymbal, 1, 0);
        cutscene_advance();
        break;
    
    case 66:
        clover_overlay_alpha = audio_sound_get_track_position(cymbal_sound) / audio_sound_length(mus_cymbal);
        
        if (!audio_is_playing(cymbal_sound))
        {
            clover_overlay_alpha = 1;
            cutscene_advance();
        }
        
        break;
    
    case 67:
        cutscene_wait(1);
        break;
    
    case 68:
        audio_play_sound(snd_newhome_03_clover_radius, 1, 0);
        instance_create(0, 0, obj_newhome_03_pacifist_music_player);
        scene++;
        break;
    
    case 69:
        white_overlay_radius += 8;
        
        if (clover_overlay_alpha_dark < 1)
            clover_overlay_alpha_dark += 0.1;
        else if (cutscene_wait(1.5))
            instance_destroy(obj_dialogue_nongui);
        
        break;
    
    case 70:
        obj_player_npc.vspeed = lerp(obj_player_npc.vspeed, -2, 0.15);
        
        if (obj_player_npc.y < 290)
        {
            obj_player_npc.vspeed = 0;
            scene++;
        }
        
        break;
    
    case 71:
        with (obj_player_npc)
        {
            y = lerp(y, 269, 0.15);
            
            if (abs(y - 269) < 1)
            {
                y = 269;
                other.scene++;
            }
        }
        
        break;
    
    case 72:
        cutscene_wait(1);
        break;
    
    case 73:
        if (cutscene_wait(0.5))
            cutscene_advance(73.5);
        
        break;
    
    case 73.5:
        camera_xx = __view_get(e__VW.XView, 0) + (__view_get(e__VW.WView, 0) * 0.5);
        
        if (cutscene_camera_move(camera_xx, 270, 0.5))
            cutscene_advance(73.75);
        
        break;
    
    case 73.75:
        if (cutscene_wait(0.5))
            cutscene_advance(74);
        
        break;
    
    case 74:
        obj_player_npc.npc_direction = "down";
        
        if (cutscene_npc_action_sprite(1168, 2233, 1, false))
            cutscene_advance(74.5);
        
        if (obj_player_npc.image_index < 6 && obj_player_npc.sprite_index == spr_pacifist_ending_clover_nod)
            obj_player_npc.image_index = 6;
        
        break;
    
    case 74.5:
        if (cutscene_wait(1.5))
            cutscene_advance(75);
        
        break;
    
    case 75:
        with (instance_create_depth(16, 20, depth - 1, obj_dialogue_pacifist_ending_flashbacks))
        {
            sndfnt = 96;
            message[0] = "You probably want to go home dontcha?";
            fade_timer = 45;
        }
        
        scene++;
        break;
    
    case 76:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_advance();
        
        break;
    
    case 77:
        with (instance_create_depth(16, 164, depth - 1, obj_dialogue_pacifist_ending_flashbacks))
        {
            sndfnt = 626;
            message[0] = "Humanity already won by trapping us#down here, yet they keep twisting#the knife.";
            fade_timer = 45;
        }
        
        scene++;
        break;
    
    case 78:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_advance();
        
        break;
    
    case 79:
        with (instance_create_depth(32, 176, depth - 1, obj_dialogue_pacifist_ending_flashbacks))
        {
            sndfnt = 626;
            message[0] = "This cannot continue any longer!";
            fade_timer = 30;
        }
        
        scene++;
        break;
    
    case 80:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_advance();
        
        break;
    
    case 81:
        with (instance_create_depth(13, 80, depth - 1, obj_dialogue_pacifist_ending_flashbacks))
        {
            sndfnt = 108;
            message[0] = "You must have#places to go,#correct?";
            message[1] = "The Castle...#The barrier.";
            fade_timer = 30;
        }
        
        scene++;
        break;
    
    case 82:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_advance();
        
        break;
    
    case 83:
        with (instance_create_depth(189, 88, depth - 1, obj_dialogue_pacifist_ending_flashbacks))
        {
            sndfnt = 107;
            message[0] = "I did everything#in my power to#entertain...";
            fade_timer = 30;
        }
        
        scene++;
        break;
    
    case 84:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_advance();
        
        break;
    
    case 85:
        with (instance_create_depth(181, 80, depth - 1, obj_dialogue_pacifist_ending_flashbacks))
        {
            sndfnt = 107;
            message[0] = "...so monsters#wouldn't have to#worry about being#stuck down here.";
            fade_timer = 30;
        }
        
        scene++;
        break;
    
    case 86:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_advance();
        
        break;
    
    case 87:
        with (instance_create_depth(16, 164, depth - 1, obj_dialogue_pacifist_ending_flashbacks))
        {
            sndfnt = 102;
            message[0] = "Anyway, we'll bypass the Royal Guard#and plead your case to ASGORE!";
            fade_timer = 45;
        }
        
        scene++;
        break;
    
    case 88:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_advance();
        
        break;
    
    case 89:
        with (instance_create_depth(20, 32, depth - 1, obj_dialogue_pacifist_ending_flashbacks))
        {
            sndfnt = 96;
            message[0] = "Remember your REAL mission, Clover.";
            fade_timer = 30;
        }
        
        scene++;
        break;
    
    case 90:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_advance();
        
        break;
    
    case 91:
        with (instance_create_depth(13, 142, depth - 1, obj_dialogue_pacifist_ending_flashbacks))
        {
            sndfnt = 108;
            message[0] = "Asgore only needs#two more SOULS to#shatter the barrier.";
            fade_timer = 30;
        }
        
        scene++;
        break;
    
    case 92:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_advance();
        
        break;
    
    case 93:
        with (instance_create_depth(173, 22, depth - 1, obj_dialogue_pacifist_ending_flashbacks))
        {
            sndfnt = 100;
            message[0] = "What a world it#would be if I had#two whole friends.";
            fade_timer = 30;
        }
        
        scene++;
        break;
    
    case 94:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_advance();
        
        break;
    
    case 95:
        with (instance_create_depth(69, 140, depth - 1, obj_dialogue_pacifist_ending_flashbacks))
        {
            sndfnt = 108;
            message[0] = "Most might act cheerful,#but life down here...";
            fade_timer = 30;
        }
        
        scene++;
        break;
    
    case 96:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_advance();
        
        break;
    
    case 97:
        with (instance_create_depth(92, 148, depth - 1, obj_dialogue_pacifist_ending_flashbacks))
        {
            sndfnt = 108;
            message[0] = "...It's hopeless.";
            fade_timer = 30;
        }
        
        scene++;
        break;
    
    case 98:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_advance();
        
        break;
    
    case 99:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_wait(1.5);
        
        break;
    
    case 100:
        cutscene_npc_action_sprite(1168, 3114, 1, true, 0);
        break;
    
    case 101:
        cutscene_wait(1.5);
        break;
    
    case 102:
        instance_create_depth(obj_player_npc.x, obj_player_npc.y + 2, depth - 100, obj_newhome_03_cutscene_clover_soul);
        scene++;
        break;
    
    case 103:
        break;
    
    case 104:
        cutscene_wait(2);
        break;
    
    case 105:
        with (instance_create_depth(9, 10, depth - 1, obj_dialogue_pacifist_ending_flashbacks))
        {
            sndfnt = 96;
            message[0] = "...The five children#you set out to find#in the first place.";
            fade_timer = 30;
        }
        
        scene++;
        break;
    
    case 106:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_advance();
        
        break;
    
    case 107:
        with (instance_create_depth(140, 174, depth - 1, obj_dialogue_pacifist_ending_flashbacks))
        {
            sndfnt = 107;
            message[0] = "Despite its ups and#downs, our little#adventure was a blast.";
            fade_timer = 30;
        }
        
        scene++;
        break;
    
    case 108:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_advance();
        
        break;
    
    case 109:
        with (instance_create_depth(20, 68, depth - 1, obj_dialogue_pacifist_ending_flashbacks))
        {
            sndfnt = 96;
            message[0] = "ASGORE's still out there#threatening human lives!";
            fade_timer = 30;
        }
        
        scene++;
        break;
    
    case 110:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_advance();
        
        break;
    
    case 111:
        with (instance_create_depth(189, 128, depth - 1, obj_dialogue_pacifist_ending_flashbacks))
        {
            sndfnt = 111;
            message[0] = "I MUST THANK#YOU FOR OPENING#MY EYES.";
            fade_timer = 30;
        }
        
        scene++;
        break;
    
    case 112:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_advance();
        
        break;
    
    case 113:
        with (instance_create_depth(30, 68, depth - 1, obj_dialogue_pacifist_ending_flashbacks))
        {
            sndfnt = 96;
            message[0] = "Keep your head in the game!";
            fade_timer = 45;
            shake_intensity = 0.25;
        }
        
        clover_shake_intensity = 3;
        scene++;
        break;
    
    case 114:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_advance();
        
        break;
    
    case 115:
        with (instance_create_depth(60, 172, depth - 1, obj_dialogue_pacifist_ending_flashbacks))
        {
            sndfnt = 108;
            message[0] = "Turns out you're a pretty#damn good leader, Clover!";
            fade_timer = 30;
        }
        
        scene++;
        break;
    
    case 116:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_advance();
        
        break;
    
    case 117:
        with (instance_create_depth(96, 68, depth - 1, obj_dialogue_pacifist_ending_flashbacks))
        {
            sndfnt = 96;
            message[0] = "Come on, Clover!";
            fade_timer = 45;
            shake_intensity = 0.5;
        }
        
        clover_shake_intensity = 6;
        scene++;
        break;
    
    case 118:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_advance();
        
        break;
    
    case 119:
        with (instance_create_depth(16, 160, depth - 1, obj_dialogue_pacifist_ending_flashbacks))
        {
            sndfnt = 102;
            message[0] = "You are a kind soul.#One of the best I've met.";
            fade_timer = 30;
        }
        
        scene++;
        break;
    
    case 120:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_advance();
        
        break;
    
    case 121:
        with (instance_create_depth(132, 16, depth - 1, obj_dialogue_pacifist_ending_flashbacks))
        {
            sndfnt = 96;
            message[0] = "Clover!";
            fade_timer = 75;
            shake_intensity = 1;
        }
        
        clover_shake_intensity = 9;
        scene++;
        break;
    
    case 122:
        if (!instance_exists(obj_dialogue_pacifist_ending_flashbacks))
            cutscene_advance();
        
        break;
    
    case 123:
        cutscene_wait(1.5);
        break;
    
    case 124:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            talker[1] = 1164;
            message[0] = "* Clover!";
            message[1] = "* Clover, what are you doing!?";
        }
        
        break;
    
    case 125:
        with (obj_martlet_npc)
        {
            x = 130;
            y = 330;
            npc_direction = "up";
        }
        
        with (obj_ceroba_npc)
        {
            x = 161;
            y = 330;
            npc_direction = "up";
        }
        
        with (obj_starlo_npc)
        {
            x = 190;
            y = 330;
            npc_direction = "up";
        }
        
        clover_overlay_alpha = 0;
        clover_overlay_alpha_dark -= 0.1;
        
        if (clover_overlay_alpha_dark <= 0)
        {
            overlay_alpha = 0;
            scene++;
        }
        
        break;
    
    case 126:
        cutscene_wait(0.5);
        break;
    
    case 127:
        camera_xx = __view_get(e__VW.XView, 0) + (__view_get(e__VW.WView, 0) * 0.5);
        cutscene_camera_move(camera_xx, 230, 1);
        break;
    
    case 128:
        cutscene_wait(1);
        break;
    
    case 129:
        scr_audio_fade_out(cutscene_music, 1000);
        circle_alpha = lerp(circle_alpha, 0, 0.1);
        
        if (circle_alpha < 0.05)
        {
            circle_alpha = 0;
            cutscene_advance();
        }
        
        break;
    
    case 130:
        cutscene_wait(1.5);
        break;
    
    case 131:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            talker[1] = 1164;
            message[0] = "* Hey, uh...";
            message[1] = "* Clover? What's going#  on?";
            message[2] = "* You're scaring us here.";
            message[3] = "";
            message[4] = "* Wh-What does that mean?";
            message[5] = "";
            prt[0] = 370;
            prt[1] = 317;
            prt[2] = 317;
            prt[4] = 332;
            
            if (message_current == 3)
            {
                if (alpha_fade == false)
                {
                    alpha_fade = true;
                    ch_alpha = 0;
                    ch_delay = 30;
                }
                
                skippable = false;
                ch[1] = "It's time";
                ch_msg = 3;
                
                if (outcome != 0)
                {
                    choice = false;
                    ch_msg = 5;
                    ch_delay = 0;
                    alpha_fade = false;
                }
            }
            
            if (message_current == 4)
            {
                skippable = true;
            }
            else if (message_current == 5)
            {
                if (alpha_fade == false)
                {
                    alpha_fade = true;
                    ch_alpha = 0;
                    ch_delay = 45;
                }
                
                skippable = false;
                ch[1] = "It's time to go";
                ch_msg = 5;
            }
        }
        
        break;
    
    case 132:
        instance_create(obj_martlet_npc.x, obj_martlet_npc.y - 40, obj_cutscene_ex);
        cutscene_sfx_play(362, 0.7);
        break;
    
    case 133:
        cutscene_wait(1);
        break;
    
    case 134:
        instance_destroy(obj_cutscene_ex);
        cutscene_music = audio_play_sound(mus_gift_2, 1, 1);
        cutscene_advance();
        break;
    
    case 135:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            talker[3] = 1169;
            talker[6] = 1164;
            talker[9] = 1161;
            message[0] = "* No... ";
            message[1] = "* No no no no no-we'll#  think of a plan!";
            message[2] = "* We have options!";
            message[3] = "* Y-Yeah, don't do#  something you'll regret!";
            message[4] = "* If it's Snowdin you#  don't like, you can live#  with me.";
            message[5] = "* My house has the space.#  A-And the posse loves#  you!";
            message[6] = "* Please, you gotta#  listen to us, Clover!";
            message[7] = "* You deserve better.";
            message[8] = "* You're...";
            message[9] = "* You're serious.";
            prt[0] = 332;
            prt[1] = 330;
            prt[2] = 322;
            prt[3] = 406;
            prt[4] = 418;
            prt[5] = 420;
            prt[6] = 322;
            prt[7] = 323;
            prt[8] = 322;
            prt[9] = 370;
            
            if (message_current == 8)
            {
                message_timer = 15;
                skippable = false;
            }
            else
            {
                message_timer = -1;
                skippable = true;
            }
        }
        
        break;
    
    case 136:
        cutscene_wait(1);
        break;
    
    case 137:
        cutscene_npc_action_sprite(1168, 2233, 1, false);
        
        if (obj_player_npc.image_index < 6 && obj_player_npc.sprite_index == spr_pacifist_ending_clover_nod)
            obj_player_npc.image_index = 6;
        
        break;
    
    case 138:
        cutscene_wait(1);
        break;
    
    case 139:
        with (obj_newhome_03_cutscene_clover_soul)
        {
            image_alpha -= 0.05;
            
            if (image_alpha <= 0)
            {
                instance_destroy();
                other.scene++;
            }
        }
        
        break;
    
    case 140:
        cutscene_wait(0.5);
        break;
    
    case 141:
        cutscene_npc_action_sprite(1168, 2233, 1, false);
        break;
    
    case 142:
        cutscene_wait(1);
        break;
    
    case 143:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            talker[2] = 1169;
            talker[3] = 1161;
            talker[6] = 1164;
            talker[7] = 1161;
            talker[9] = 1169;
            talker[11] = 1161;
            message[0] = "* ...";
            message[1] = "* ...I understand.";
            message[2] = "* Ceroba...";
            message[3] = "* This whole time, what#  have we been doing?";
            message[4] = "* Dragging Clover around...#  pulling at a leash.";
            message[5] = "* Selfish.";
            message[6] = "* ...";
            message[7] = "* Clover came here by#  their own volition.";
            message[8] = "* ...They deserve to#  leave by it too.";
            message[9] = "* But you don't want this#  outcome, right?";
            message[10] = "* Surely...";
            message[11] = "* If there was another#  way...";
            message[12] = "* But let's face it.#  There isn't.";
            message[13] = "* I believe Clover#  realized that a long#  time ago.";
            prt[0] = 394;
            prt[1] = 371;
            prt[2] = 418;
            prt[3] = 370;
            prt[4] = 377;
            prt[5] = 371;
            prt[6] = 329;
            prt[7] = 377;
            prt[8] = 370;
            prt[9] = 406;
            prt[10] = 406;
            prt[11] = 377;
            prt[12] = 370;
            prt[13] = 371;
            
            switch (message_current)
            {
                case 2:
                    obj_starlo_npc.npc_direction = "left";
                    obj_martlet_npc.npc_direction = "right";
                    break;
                
                case 3:
                    obj_ceroba_npc.npc_direction = "right";
                    break;
                
                case 4:
                    obj_ceroba_npc.npc_direction = "left";
                    break;
                
                case 5:
                    obj_ceroba_npc.npc_direction = "up";
                    break;
                
                case 6:
                    obj_martlet_npc.npc_direction = "left";
                    break;
                
                case 7:
                    obj_starlo_npc.npc_direction = "up";
                    break;
                
                case 8:
                    obj_martlet_npc.npc_direction = "up";
                    break;
                
                case 9:
                    obj_starlo_npc.npc_direction = "left";
                    break;
            }
        }
        
        break;
    
    case 144:
        cutscene_wait(1.5);
        break;
    
    case 145:
        cutscene_npc_direction(1169, "up");
        break;
    
    case 146:
        cutscene_wait(1);
        break;
    
    case 147:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* ...";
            message[1] = "* I don't know what to#  say...";
            message[2] = "* As much as I want to#  stop you...";
            message[3] = "* I see it. In your eyes.";
            message[4] = "* This is about our#  freedom... isn't it?";
            prt[0] = 317;
            prt[1] = 317;
            prt[2] = 329;
            prt[3] = 317;
            prt[4] = 317;
        }
        
        break;
    
    case 148:
        cutscene_npc_action_sprite(1168, 3114, 1, true, 0);
        break;
    
    case 149:
        cutscene_wait(1);
        break;
    
    case 150:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            message[0] = "* ...";
            message[1] = "* Clover.";
            message[2] = "* You are the bravest,#  most selfless human I've#  met.";
            message[3] = "* Of course, I've only#  met one...";
            message[4] = "* But if I ever meet#  another, I hope they're#  just like you.";
            message[5] = "* I'd promote you to#  sheriff 'cause lord#  knows you've earned it,";
            message[6] = "* But you aren't sheriff#  material. ";
            message[7] = "* You're much more.";
            prt[0] = 406;
            prt[1] = 416;
            prt[2] = 418;
            prt[3] = 407;
            prt[4] = 419;
            prt[5] = 421;
            prt[6] = 416;
            prt[7] = 418;
        }
        
        break;
    
    case 151:
        cutscene_wait(0.5);
        break;
    
    case 152:
        cutscene_npc_action_sprite(1168, 2233, 1, false);
        
        if (obj_player_npc.image_index < 6 && obj_player_npc.sprite_index == spr_pacifist_ending_clover_nod)
            obj_player_npc.image_index = 6;
        
        break;
    
    case 153:
        cutscene_wait(0.5);
        break;
    
    case 154:
        cutscene_npc_walk(1164, 144, 269, 3, "y", "right");
        break;
    
    case 155:
        obj_player_npc.npc_direction = "left";
        cutscene_advance();
        break;
    
    case 156:
        cutscene_wait(0.5);
        break;
    
    case 157:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* I... already made my#  feelings known in#  Hotland.";
            message[1] = "* So...";
            prt[0] = 317;
            prt[1] = 317;
        }
        
        break;
    
    case 158:
        obj_player_npc.image_alpha = 0;
        cutscene_npc_action_sprite(1164, 1547, 1, true, 0);
        break;
    
    case 159:
        cutscene_wait(0.5);
        break;
    
    case 160:
        cutscene_npc_walk(1169, 179, 268, 2, "y", "left");
        break;
    
    case 161:
        cutscene_wait(0.5);
        break;
    
    case 162:
        obj_martlet_npc.image_alpha = 0;
        cutscene_npc_action_sprite(1169, 1563, 1, true, 0);
        break;
    
    case 163:
        cutscene_wait(1.5);
        break;
    
    case 164:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            talker[1] = 1161;
            message[0] = "* Psst.";
            message[1] = "* ...";
            prt[0] = 407;
            prt[1] = 382;
        }
        
        break;
    
    case 165:
        cutscene_npc_walk(1161, 161, 281, 2, "y", "up");
        break;
    
    case 166:
        cutscene_advance();
        break;
    
    case 167:
        cutscene_wait(0.5);
        break;
    
    case 168:
        obj_starlo_npc.image_alpha = 0;
        cutscene_npc_action_sprite(1161, 2991, 1, true, 0);
        break;
    
    case 169:
        cutscene_wait(2);
        break;
    
    case 170:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* This means more to us#  than you know.";
            message[1] = "* To everyone.";
            prt[0] = 609;
            prt[1] = 2987;
            talker[2] = 1164;
            talker[3] = 1169;
            message[2] = "* ...";
            message[3] = "* ...";
            prt[2] = 317;
            prt[3] = 420;
        }
        
        break;
    
    case 171:
        cutscene_wait(1);
        break;
    
    case 172:
        if (cutscene_npc_action_sprite(1161, 2780, 1, false, 0))
            obj_starlo_npc.image_alpha = 1;
        
        break;
    
    case 173:
        cutscene_npc_walk(1161, obj_ceroba_npc.x, 310, 3, "y", "up");
        break;
    
    case 174:
        cutscene_wait(0.5);
        break;
    
    case 175:
        if (cutscene_npc_action_sprite(1169, 3112, 1, false, 0))
            obj_martlet_npc.image_alpha = 1;
        
        break;
    
    case 176:
        cutscene_npc_walk(1169, 210, obj_starlo_npc.y, 3, "y", "left");
        break;
    
    case 177:
        cutscene_wait(1);
        break;
    
    case 178:
        if (cutscene_npc_action_sprite(1164, 1643, 1, false, 0))
            obj_player_npc.image_alpha = 1;
        
        break;
    
    case 179:
        cutscene_npc_walk(1164, 132, 269, 3, "y", "right");
        break;
    
    case 180:
        cutscene_wait(1);
        break;
    
    case 181:
        obj_player_npc.npc_direction = "down";
        obj_starlo_npc.npc_direction = "down";
        obj_martlet_npc.npc_direction = "down";
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Well...\t";
            message[1] = "* I understand if you two#  don't want to be here#  for...";
            message[2] = "* You know.";
            prt[0] = 377;
            prt[1] = 394;
            prt[2] = 370;
        }
        
        break;
    
    case 182:
        cutscene_npc_walk(1169, 189, obj_ceroba_npc.y, 2, "x", "left");
        break;
    
    case 183:
        cutscene_npc_direction(1161, "right");
        break;
    
    case 184:
        cutscene_wait(0.5);
        break;
    
    case 185:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            talker[1] = 1161;
            message[0] = "* Do you have what you#  need?";
            message[1] = "* I do.";
            prt[0] = 416;
            prt[1] = 370;
        }
        
        break;
    
    case 186:
        cutscene_npc_walk(1161, obj_ceroba_npc.x, 330, 1, "y", "up");
        break;
    
    case 187:
        if (cutscene_npc_walk(1169, 191, 269, 2, "y", "left"))
        {
            obj_player_npc.npc_direction = "right";
            obj_martlet_npc.npc_direction = "right";
        }
        
        break;
    
    case 188:
        cutscene_wait(0.5);
        break;
    
    case 189:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            message[0] = "* Guess the suns getting#  low.";
            message[1] = "* I'll... see you around,#  partner.";
            prt[0] = 416;
            prt[1] = 418;
        }
        
        break;
    
    case 190:
        cutscene_wait(1);
        break;
    
    case 191:
        obj_player_npc.image_alpha = 0;
        cutscene_npc_action_sprite(1169, 844, 1, true, 0);
        
        if (obj_starlo_npc.sprite_index == spr_pacifist_ending_starlo_take_gun && obj_starlo_npc.image_index >= 12)
        {
            obj_starlo_npc.image_speed = 0;
            cutscene_advance();
        }
        
        break;
    
    case 192:
        cutscene_wait(0.5);
        break;
    
    case 193:
        obj_starlo_npc.image_speed = 1;
        cutscene_npc_action_sprite(1169, 844, 1, true, 0);
        
        if (obj_starlo_npc.sprite_index == spr_pacifist_ending_starlo_take_gun && obj_starlo_npc.image_index >= 20)
        {
            obj_starlo_npc.image_speed = 0;
            obj_starlo_npc.left_sprite_idle = spr_pacifist_ending_starlo_talk_gun_out;
            obj_starlo_npc.action_sprite = false;
            cutscene_advance();
        }
        
        break;
    
    case 194:
        cutscene_wait(0.8);
        break;
    
    case 195:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            message[0] = "* ...";
            message[1] = "* You got a receipt for#  that?";
            prt[0] = 416;
            prt[1] = 415;
        }
        
        break;
    
    case 196:
        if (cutscene_npc_action_sprite(1169, 844, 1, false, 0))
        {
            obj_player_npc.image_alpha = 1;
            obj_starlo_npc.action_sprite = false;
        }
        
        obj_starlo_npc.left_sprite_idle = spr_starlo_sad_left_talk;
        
        if (obj_starlo_npc.image_index < 20)
            obj_starlo_npc.image_index = 20;
        
        break;
    
    case 197:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            message[0] = "* Thanks, kid.";
            prt[0] = 418;
        }
        
        break;
    
    case 198:
        cutscene_wait(0.5);
        break;
    
    case 199:
        cutscene_npc_walk(1169, 190, 330, 2, "y", "up");
        
        if (obj_starlo_npc.y > (obj_player_npc.y + 15))
            obj_player_npc.npc_direction = "down";
        
        break;
    
    case 200:
        cutscene_wait(1);
        break;
    
    case 201:
        obj_player_npc.npc_direction = "left";
        cutscene_advance();
        break;
    
    case 202:
        cutscene_wait(0.5);
        break;
    
    case 203:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* Goodbye, Clover.";
            message[1] = "* You've changed my life.#  Truly.";
            prt[0] = 317;
            prt[1] = 320;
        }
        
        break;
    
    case 204:
        cutscene_wait(1);
        break;
    
    case 205:
        obj_player_npc.image_alpha = 0;
        cutscene_npc_action_sprite(1164, 3281, 1, true, 0);
        
        if (obj_martlet_npc.sprite_index == spr_pacifist_ending_martlet_take_hat && obj_martlet_npc.image_index >= 23)
        {
            obj_martlet_npc.image_speed = 0;
            cutscene_advance();
        }
        
        break;
    
    case 206:
        cutscene_wait(0.5);
        break;
    
    case 207:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* Heh...";
            message[1] = "* How will I know you're#  a human now, huh?";
            prt[0] = 320;
            prt[1] = 320;
        }
        
        break;
    
    case 208:
        cutscene_wait(0.5);
        break;
    
    case 209:
        obj_martlet_npc.image_speed = 1;
        
        if (cutscene_npc_action_sprite(1164, 3281, 1, true, 0))
        {
            obj_player_npc.left_sprite = spr_pacifist_ending_clover_hatless_left;
            obj_player_npc.left_sprite_idle = spr_pacifist_ending_clover_hatless_left;
            obj_player_npc.down_sprite = spr_pacifist_ending_clover_hatless_down;
            obj_player_npc.down_sprite_idle = spr_pacifist_ending_clover_hatless_down;
            obj_martlet_npc.right_sprite = martlet_hold_hat_walk_right;
            obj_martlet_npc.right_sprite_idle = martlet_hold_hat_idle_right;
            obj_martlet_npc.down_sprite = martlet_hold_hat_walk_down;
            obj_martlet_npc.down_sprite_idle = martlet_hold_hat_idle_right;
            obj_player_npc.image_alpha = 1;
            obj_martlet_npc.action_sprite = false;
        }
        
        break;
    
    case 210:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* This means a lot.";
            prt[0] = 320;
        }
        
        break;
    
    case 211:
        cutscene_wait(1);
        break;
    
    case 212:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* I'm sorry the world is#  like this...";
            message[1] = "* But people like you#  make it better.";
            message[2] = "* Thank you.";
            prt[0] = 315;
            prt[1] = 317;
            prt[2] = 320;
        }
        
        break;
    
    case 213:
        cutscene_wait(1.5);
        break;
    
    case 214:
        cutscene_npc_walk(1164, obj_martlet_npc.x, 330, 2, "y", "right");
        
        if (obj_martlet_npc.y > (obj_player_npc.y + 20))
            obj_player_npc.npc_direction = "down";
        
        break;
    
    case 215:
        cutscene_npc_direction(1161, "left");
        break;
    
    case 216:
        cutscene_wait(0.5);
        break;
    
    case 217:
        cutscene_npc_walk(1161, 160, 310, 3, "y", "down");
        break;
    
    case 218:
        cutscene_npc_walk(1164, 160, 440, 2, "x", "down");
        
        if (obj_martlet_npc.y > (obj_starlo_npc.y + 20))
            obj_starlo_npc.npc_direction = "down";
        
        break;
    
    case 219:
        cutscene_wait(1);
        break;
    
    case 220:
        cutscene_npc_walk(1169, 160, 330, 3, "y", "up");
        break;
    
    case 221:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            message[0] = "* We'll... ";
            message[1] = "* We'll be outside.";
            prt[0] = 416;
            prt[1] = 420;
        }
        
        break;
    
    case 222:
        scr_audio_fade_out(cutscene_music, 1000);
        cutscene_npc_walk(1169, 160, 440, 2, "y", "down");
        break;
    
    case 223:
        cutscene_wait(1);
        break;
    
    case 224:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* You've gained my#  respect.";
            message[1] = "* I mean it.";
            prt[0] = 377;
            prt[1] = 370;
            
            if (message_current == 1)
                obj_ceroba_npc.npc_direction = "up";
        }
        
        break;
    
    case 225:
        cutscene_wait(0.5);
        break;
    
    case 226:
        cutscene_npc_walk(1161, 160, 300, 0.5, "x", "up");
        break;
    
    case 227:
        cutscene_wait(0.5);
        break;
    
    case 228:
        cutscene_npc_action_sprite(1161, 3215, 1, true, 0);
        break;
    
    case 229:
        cutscene_wait(0.5);
        break;
    
    case 230:
        cutscene_advance();
        break;
    
    case 231:
        cutscene_wait(2);
        break;
    
    case 232:
        if (overlay_alpha < 1)
            overlay_alpha += 0.025;
        else
            cutscene_advance();
        
        break;
    
    case 233:
        cutscene_wait(1.5);
        break;
    
    case 234:
        soul = instance_create_depth(160, 272, depth - 2, obj_newhome_03_cutscene_clover_soul);
        soul_canister = instance_create_depth(161, 272, depth - 1, obj_newhome_03_cutscene_clover_soul_capsule);
        soul.image_alpha = 0;
        soul.scene = 3;
        soul.image_xscale = 1;
        soul.image_yscale = 1;
        cutscene_advance();
        break;
    
    case 235:
        obj_newhome_03_cutscene_clover_soul_capsule.image_alpha += 0.15;
        
        if (obj_newhome_03_cutscene_clover_soul_capsule.image_alpha >= 1)
        {
            obj_newhome_03_cutscene_clover_soul_capsule.image_alpha = 1;
            cutscene_advance();
        }
        
        break;
    
    case 236:
        cutscene_wait(0.5);
        break;
    
    case 237:
        obj_newhome_03_cutscene_clover_soul.image_alpha += 0.05;
        
        if (obj_newhome_03_cutscene_clover_soul.image_alpha >= 1)
        {
            obj_newhome_03_cutscene_clover_soul.image_alpha = 1;
            cutscene_advance();
        }
        
        break;
    
    case 238:
        cutscene_wait(2.5);
        break;
    
    case 239:
        obj_newhome_03_cutscene_clover_soul.scene = 4;
        cutscene_advance();
        break;
    
    case 240:
        break;
    
    case 241:
        cutscene_wait(1);
        break;
    
    case 242:
        obj_newhome_03_cutscene_clover_soul_capsule.image_alpha -= 0.1;
        
        if (obj_newhome_03_cutscene_clover_soul_capsule.image_alpha <= 0)
        {
            obj_newhome_03_cutscene_clover_soul_capsule.image_alpha = 0;
            cutscene_advance();
        }
        
        break;
    
    case 243:
        cutscene_wait(1);
        break;
    
    case 244:
        obj_ceroba_npc.down_sprite = ceroba_hold_container_walk_down;
        obj_ceroba_npc.up_sprite_idle = ceroba_hold_container_idle_up;
        obj_ceroba_npc.action_sprite = false;
        cutscene_advance();
        break;
    
    case 245:
        if (overlay_alpha > 0)
            overlay_alpha -= 0.025;
        else
            cutscene_advance(250);
        
        break;
    
    case 250:
        cutscene_wait(1.5);
        break;
    
    case 251:
        cutscene_npc_walk(1161, 160, 320, 0.5, "y", "up");
        break;
    
    case 252:
        cutscene_wait(0.5);
        break;
    
    case 253:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Do you...";
            message[1] = "* ...want me to stay?";
            prt[0] = 609;
            prt[1] = 609;
            ch_msg = 1;
            ch[1] = "...";
            
            if (message_current == 1)
            {
                if (alpha_fade == false)
                {
                    alpha_fade = true;
                    ch_delay = 45;
                    ch_alpha = 0;
                }
                
                skippable = false;
            }
        }
        
        break;
    
    case 254:
        cutscene_wait(1);
        break;
    
    case 255:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "";
            ch_msg = 0;
            ch[1] = "Go on";
            
            if (alpha_fade == false)
            {
                alpha_fade = true;
                ch_alpha = 0;
            }
        }
        
        break;
    
    case 256:
        cutscene_wait(1);
        break;
    
    case 257:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "";
            ch_msg = 0;
            ch[1] = "I'll... be okay";
            
            if (alpha_fade == false)
            {
                alpha_fade = true;
                ch_alpha = 0;
            }
        }
        
        break;
    
    case 258:
        cutscene_wait(1);
        break;
    
    case 259:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* ...";
            message[1] = "* Very well.";
            message[2] = "* This won't be#  forgotten.";
            message[3] = "* Goodbye, Clover.";
            prt[0] = 609;
            prt[1] = 2987;
            prt[2] = 2987;
            prt[3] = 609;
        }
        
        break;
    
    case 260:
        cutscene_wait(1);
        break;
    
    case 261:
        cutscene_npc_walk(1161, 160, 440, 1, "y", "down");
        break;
    
    case 262:
        cutscene_camera_move(obj_pl.x, 230, 1);
        break;
    
    case 263:
        cutscene_npc_action_sprite(1168, 380, 0, true, 0);
        audio_play_sound(snd_hurt, 1, 0);
        scr_screenshake(6, 2);
        cutscene_advance();
        break;
    
    case 264:
        cutscene_wait(1);
        break;
    
    case 265:
        obj_player_npc.image_speed = 1;
        cutscene_npc_action_sprite(1168, 380, 1, true, 0);
        break;
    
    case 266:
        cutscene_wait(4.5);
        break;
    
    case 267:
        if (!instance_exists(obj_newhome_03_dialogue_postfight_flowey))
        {
            msg = instance_create_depth(0, 0, -800, obj_newhome_03_dialogue_postfight_flowey);
            scene++;
        }
        
        with (msg)
        {
            sdnfnt = 96;
            message[0] = "  So, this is it?";
            message[1] = "  All that work just to become#  another cog in the machine?";
            message[2] = "  Heh, you've grown so#  predictable!";
            message[3] = "  I could undo all of this right#  now but... Maybe you've earned#  your rest.";
            message[4] = "  After all, there's always#  another.";
            message[5] = "  ...";
            message[6] = "  Can't say it's been fun so...#  I suppose this is where we part#  ways.";
            message[7] = "  Oh, who am I kidding?";
            message[8] = "  Until we meet again... friend.";
            skippable = false;
            message_timer = 45;
        }
        
        break;
    
    case 268:
        if (!audio_is_playing(mus_credits) && obj_newhome_03_dialogue_postfight_flowey.message_current == 5)
            global.cutscene_music = audio_play_sound(mus_credits, 1, 0);
        
        if (!global.dialogue_open)
        {
            if (cutscene_wait(1))
                cutscene_advance(269);
        }
        
        break;
    
    case 268.5:
        if (cutscene_wait(1))
            cutscene_advance(269);
        
        break;
    
    case 269:
        cutscene_npc_action_sprite(1168, 803, 1, true, 0);
        obj_player_npc.action_sprite_stop = false;
        cutscene_advance();
        break;
    
    case 270:
        obj_player_npc.vspeed = -clover_crawl_speed;
        
        if (clover_crawl_speed > 0.1)
            clover_crawl_speed = lerp(clover_crawl_speed, 0, 0.25);
        else
            clower_crawl_speed = 0;
        
        if (obj_player_npc.y <= 235)
        {
            obj_player_npc.y = 235;
            obj_player_npc.vspeed = 0;
            clover_crawl_speed = 0;
            cutscene_advance();
        }
        
        break;
    
    case 271:
        cutscene_npc_action_sprite(1168, 3440, 1, true, 0);
        break;
    
    case 272:
        cutscene_wait(1.5);
        break;
    
    case 273:
        cutscene_npc_action_sprite(1168, 3537, 1, true, 0);
        break;
    
    case 274:
        cutscene_wait(3.3);
        break;
    
    case 275:
        cutscene_advance();
        break;
    
    case 276:
        layer_y("Backgrounds_1", offset_y_current);
        layer_y("overlay", offset_y_current);
        layer_y("overlay_2", offset_y_current);
        offset_y_current += offset_y_scroll_speed;
        
        if (obj_player_npc.y < 500)
            obj_player_npc.y += offset_y_scroll_speed;
        
        if (offset_y_current > 300)
        {
            offset_y_scroll_speed -= 0.0025;
            
            if (offset_y_scroll_speed <= 0)
            {
                offset_y_scroll_speed = 0;
                cutscene_advance();
            }
        }
        
        break;
    
    case 277:
        cutscene_screen_fade_out(0, 0.02);
        break;
    
    case 278:
        if (audio_sound_get_track_position(global.cutscene_music) >= 57.5)
        {
            room = rm_credits_paci;
            instance_destroy();
        }
        
        break;
}

if (scene > 56 && scene < 57 && instance_exists(obj_dialogue))
{
    with (obj_dialogue)
    {
        if (message_current == 35)
            message_timer = 15;
        else
            message_timer = 60;
    }
}

if (clover_shake_intensity > 0.1)
    clover_shake_intensity = lerp(clover_shake_intensity, 0, 0.15);
else
    clover_shake_intensity = 0;

if (scene > 62 && scene < 75)
{
    zen_dialogue_gain = lerp(zen_dialogue_gain, 0, 0.015);
    
    with (obj_dialogue_nongui)
        audio_sound_gain(sndfnt, other.zen_dialogue_gain, 0);
}
else
{
    with (obj_dialogue_pacifist_ending_flashbacks)
        audio_sound_gain(sndfnt, 1, 0);
}
