var starlo, ed, mooch, moray, ace, clover_npc;

starlo = 1169;
ed = 1162;
mooch = 1165;
moray = 1167;
ace = 1158;
clover_npc = 1168;

switch (scene)
{
    case 0:
        if (!audio_is_playing(mus_feisty))
        {
            audio_sound_gain(obj_radio.current_song, 0, 0);
            audio_play_sound(mus_feisty, 10, 1);
        }
        
        __view_set(e__VW.Object, 0, starlo);
        
        with (starlo)
        {
            if (image_alpha < 1)
            {
                image_alpha += 0.1;
            }
            else
            {
                x_dest[0] = x;
                y_dest[0] = 270;
                x_dest[1] = 640;
                y_dest[1] = y_dest[0];
                x_dest[2] = 720;
                y_dest[2] = 375;
                axis_override = "y";
                end_direction = "down";
                can_walk = true;
                actor_speed = 3;
                other.scene++;
                other.timer = 20;
            }
        }
        
        break;
    
    case 1:
        if (!scr_timer())
            exit;
        
        with (clover_npc)
        {
            if (image_alpha < 1)
            {
                image_alpha += 0.1;
            }
            else
            {
                x_dest[0] = x;
                y_dest[0] = 270;
                x_dest[1] = 640;
                y_dest[1] = y_dest[0];
                x_dest[2] = 700;
                y_dest[2] = 375;
                axis_override = "y";
                end_direction = "down";
                can_walk = true;
                actor_speed = 3;
                other.scene++;
                other.timer = 15;
            }
        }
        
        break;
    
    case 2:
        if (!starlo.npc_arrived || !clover_npc.npc_arrived || !scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = 107;
            talker[0] = starlo;
            message[0] = "* Alright, everyone! Come# 'ere!";
            prt[0] = 417;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 3:
        with (ace)
        {
            x_dest[0] = 640;
            y_dest[0] = 375;
            actor_speed = 3;
            axis_override = "x";
            can_walk = true;
            end_direction = "right";
        }
        
        with (mooch)
        {
            x_dest[0] = 680;
            y_dest[0] = 440;
            actor_speed = 3;
            axis_override = "y";
            can_walk = true;
            end_direction = "up";
        }
        
        with (ed)
        {
            x_dest[0] = 760;
            y_dest[0] = 440;
            actor_speed = 3;
            can_walk = true;
            end_direction = "up";
        }
        
        with (moray)
        {
            x_dest[0] = 800;
            y_dest[0] = 375;
            actor_speed = 3;
            can_walk = true;
            end_direction = "left";
        }
        
        scene++;
        timer = 45;
        break;
    
    case 4:
        if (moray.npc_arrived && ed.npc_arrived && mooch.npc_arrived && ace.npc_arrived)
        {
            if (!scr_timer())
                exit;
            
            scr_text();
            
            with (msg)
            {
                talker[0] = mooch;
                message[0] = "* Watcha want, boss?";
                prt[0] = 455;
                talker[1] = moray;
                message[1] = "* Oooh, are we going to#  begin training with#  Clover?";
                prt[1] = 445;
                talker[2] = starlo;
                message[2] = "* Precisely, Moray!";
                message[3] = "* I thought we'd start#  with a classic game that#  involves pacin'.";
                prt[2] = 417;
                prt[3] = 424;
                talker[4] = ed;
                message[4] = "* You mean what I see#  you doin' every night#  outside the house?";
                message[5] = "* Back and forth,#  whispering to#  yourself...";
                prt[4] = 454;
                prt[5] = 453;
                talker[6] = starlo;
                message[6] = "* What? I don't do that!";
                message[7] = "* Some monsters have#  unique ways of gettin'#  their thoughts out.";
                message[8] = "* Other... monsters.";
                message[9] = "* ...";
                message[10] = "* Ahem.";
                message[11] = "* Can anyone CORRECTLY#  guess what game I'm#  hintin' at?";
                prt[6] = 412;
                prt[7] = 407;
                prt[8] = 410;
                prt[9] = 428;
                prt[10] = 415;
                prt[11] = 417;
                talker[12] = mooch;
                message[12] = "* Oh! Oh! I know!";
                prt[12] = 458;
                talker[13] = starlo;
                message[13] = "* Yes, Mooch.";
                prt[13] = 417;
                talker[14] = mooch;
                message[14] = "* A DUEL!";
                prt[14] = 463;
                talker[15] = starlo;
                message[15] = "* Bingo!";
                prt[15] = 422;
            }
            
            if (!global.dialogue_open)
            {
                scene++;
                audio_sound_gain(mus_feisty, 0, 300);
                timer = 30;
            }
        }
        
        break;
    
    case 5:
        if (!scr_timer())
            exit;
        
        cutscene_event_wildeast_stamp(1258, 253, 150, 10, 50);
        break;
    
    case 6:
        audio_sound_gain(mus_feisty, 1, 300);
        timer = 30;
        scene++;
        break;
    
    case 7:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            color = true;
            col_modif[0] = make_color_rgb(111, 104, 145);
            talker[0] = ace;
            message[0] = "* No, no. This is all#  wrong.";
            prt[0] = 435;
            talker[1] = moray;
            message[1] = "* Oh? What's the matter?";
            prt[1] = 449;
            talker[2] = ace;
            message[2] = "* Clover doesn't... look#  right.";
            message[3] = "* Look at their hat. It's#  tattered and practically#  decomposing.";
            message[4] = "* And that iron in their#  holster. What kinda#  peashooter is that?";
            prt[2] = 435;
            prt[3] = 437;
            prt[4] = 435;
            talker[5] = ed;
            message[5] = "* Cool it, Ace. I'm sure#  they tried their best.";
            message_col[5][0] = "           Ace                                   ";
            prt[5] = 453;
            talker[6] = starlo;
            message[6] = "* No, Ace has a point!";
            message[7] = "* What kinda host am I if#  I don't spoil you with#  gifts?";
            message[8] = "* To the weapon store!";
            prt[6] = 419;
            prt[7] = 417;
            prt[8] = 422;
        }
        
        if (!global.dialogue_open)
        {
            audio_sound_gain(mus_feisty, 0, 600);
            timer = 20;
            scene++;
        }
        
        break;
    
    case 8:
        if (!scr_timer())
            exit;
        
        cutscene_event_wildeast_stamp(1259, 254, 120, 5, 1);
        break;
    
    case 9:
        cutscene_camera_freeze();
        scr_audio_fade_out(184, 1);
        timer = 30;
        break;
    
    case 10:
        if (!scr_timer())
            exit;
        
        with (starlo)
        {
            actor_speed = 3;
            x_dest[0] = x + 200;
            y_dest[0] = y + 30;
            axis_override = "y";
            can_walk = true;
        }
        
        timer = 10;
        scene++;
        break;
    
    case 11:
        if (!scr_timer())
            exit;
        
        with (clover_npc)
        {
            actor_speed = 3;
            x_dest[0] = x + 220;
            y_dest[0] = y + 30;
            axis_override = "y";
            can_walk = true;
        }
        
        scene++;
        break;
    
    case 12:
        if (clover_npc.npc_arrived == true)
        {
            trn = instance_create(0, 0, obj_transition);
            trn.newRoom = 133;
            trn.xx = 40;
            trn.yy = 440;
            instance_destroy();
        }
        
        break;
}
