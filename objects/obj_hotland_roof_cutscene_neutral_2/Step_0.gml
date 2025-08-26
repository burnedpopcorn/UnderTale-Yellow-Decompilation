if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (obj_pl.x < 400)
        {
            instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            obj_player_npc.image_blend = make_colour_rgb(80, 80, 80);
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_npc_walk(obj_player_npc, obj_martlet_npc.x, obj_pl.y, 3, "x", "up");
        break;
    
    case 2:
        if (cutscene_wait(1.5))
            cutscene_advance(2.5);
        
        break;
    
    case 2.5:
        if (cutscene_npc_walk(obj_player_npc, obj_martlet_npc.x, obj_martlet_npc.y + 60, 1, "x", "up"))
            cutscene_advance(3);
        
        break;
    
    case 3:
        cutscene_camera_move(obj_martlet_npc.x, 300, 1);
        camera_set_view_speed(view_camera[0], -1, -1);
        break;
    
    case 4:
        cutscene_wait(0.5);
        break;
    
    case 5:
        cutscene_instance_create(obj_martlet_npc.x, obj_martlet_npc.y - 45, obj_cutscene_ex);
        break;
    
    case 6:
        cutscene_wait(1);
        break;
    
    case 7:
        cutscene_npc_direction(obj_martlet_npc, "down");
        instance_destroy(obj_cutscene_ex);
        break;
    
    case 8:
        cutscene_wait(0.5);
        break;
    
    case 9:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            position = 0;
            message[0] = "* Ah, you got my message!#  Great!";
            prt[0] = spr_martlet_head_regular;
        }
        
        break;
    
    case 10:
        cutscene_wait(0.5);
        break;
    
    case 11:
        cutscene_npc_direction(obj_martlet_npc, "up");
        break;
    
    case 12:
        cutscene_camera_move(obj_martlet_npc.x, 260, 1);
        camera_set_view_speed(view_camera[0], -1, -1);
        break;
    
    case 13:
        cutscene_wait(0.5);
        break;
    
    case 14:
        cutscene_dialogue();
        
        with (msg)
        {
            color = true;
            col_modif[0] = c_aqua;
            talker[0] = obj_martlet_npc;
            message[0] = "* What a view...";
            message[1] = "* That large facility in#  front of us is the#  CORE...";
            message[2] = "* ...The main source of#  power for the#  Underground.";
            message[3] = "* Behind that is New Home.#  The capital city.";
            message_col[3][0] = "                 New Home                     ";
            message[4] = "* ...King ASGORE's Castle.";
            prt[0] = spr_martlet_head_regular;
            prt[1] = spr_martlet_head_moderate;
            prt[2] = spr_martlet_head_moderate;
            prt[3] = spr_martlet_head_wondering;
            prt[4] = spr_martlet_head_sad;
        }
        
        break;
    
    case 15:
        cutscene_wait(0.5);
        break;
    
    case 16:
        cutscene_npc_direction(obj_martlet_npc, "down");
        break;
    
    case 17:
        cutscene_wait(1);
        break;
    
    case 18:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* Look, I haven't been#  100% honest with you...";
            message[1] = "* My whole life, I was#  taught that humans are#  the enemy.";
            message[2] = "* But you... you never#  really came across as#  such. ";
            message[3] = "* Though...";
            message[4] = "* During our journey, I#  did sense a faint,#  alarming aura in you.";
            prt[0] = spr_martlet_head_downer;
            prt[1] = spr_martlet_head_sad;
            prt[2] = spr_martlet_head_melancholic;
            prt[3] = spr_martlet_head_sad;
            prt[4] = spr_martlet_head_downer;
        }
        
        break;
    
    case 19:
        cutscene_wait(0.5);
        break;
    
    case 20:
        cutscene_npc_action_sprite(obj_martlet_npc, spr_martlet_roof_syringe, 1, true, 0);
        break;
    
    case 21:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* I had this backup plan#  in case you started a#  rampage but...";
            message[1] = "* ...you never did.";
            prt[0] = spr_martlet_head_downer;
            prt[1] = spr_martlet_head_sad;
        }
        
        break;
    
    case 22:
        syringe_noloop = false;
        cutscene_wait(0.25);
        break;
    
    case 23:
        if (cutscene_npc_action_sprite(obj_martlet_npc, spr_martlet_roof_syringe_throw, 1, true, 0))
        {
            obj_martlet_npc.action_sprite = false;
            cutscene_music_start(296);
            cutscene_advance(24);
        }
        
        if (syringe_noloop == false && obj_martlet_npc.image_index >= 8)
        {
            syringe_noloop = true;
            instance_create_depth(obj_martlet_npc.x - 12, obj_martlet_npc.y - 22, 150, obj_hotland_roof_syringe);
        }
        
        break;
    
    case 24:
        cutscene_wait(0.5);
        break;
    
    case 25:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* Phew... that feels#  liberating.";
            message[1] = "* I'm so sorry for keeping#  that from you. You're a#  good kid.";
            message[2] = "* Even so, there's another#  problem...";
            message[3] = "* I don't think ASGORE#  would agree.";
            message[4] = "* You see, he needs seven#  human SOULs to destroy#  the barrier.";
            message[5] = "* So far he's collected#  five and he might try#  for another...";
            message[6] = "* Now that we're this#  close...";
            message[7] = "* I'm afraid there isn't a#  peaceful way of#  confronting him.";
            message[8] = "* I'm sorry.";
            prt[0] = spr_martlet_head_melancholic;
            prt[1] = spr_martlet_head_melancholic;
            prt[2] = spr_martlet_head_disappointed;
            prt[3] = spr_martlet_head_downer;
            prt[4] = spr_martlet_head_wondering;
            prt[5] = spr_martlet_head_moderate;
            prt[6] = spr_martlet_head_nervous;
            prt[7] = spr_martlet_head_disappointed;
            prt[8] = spr_martlet_head_disappointed;
            
            if (message_current == 7)
                obj_martlet_npc.npc_direction = "up";
        }
        
        break;
    
    case 26:
        cutscene_wait(1);
        break;
    
    case 27:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* ...";
            message[1] = "* I know this isn't the#  path you intended but...";
            message[2] = "* Let's... put all this#  behind us.";
            message[3] = "* You can come stay with#  me. Live out a happy,#  violence-free childhood!";
            message[4] = "* I'll teach you#  craftsmanship...";
            message[5] = "* And you can teach me#  marksmanship!";
            message[6] = "* You don't deserve to die#  this young.";
            message[7] = "* ...";
            message[8] = "* What do you say?";
            prt[0] = spr_martlet_head_sad;
            prt[1] = spr_martlet_head_downer;
            prt[2] = spr_martlet_head_downer;
            prt[3] = spr_martlet_head_melancholic;
            prt[4] = spr_martlet_head_content;
            prt[5] = spr_martlet_head_content;
            prt[6] = spr_martlet_head_melancholic;
            prt[7] = spr_martlet_head_sad;
            prt[8] = spr_martlet_head_melancholic;
            ch_msg = 8;
            ch[1] = "Sounds good";
            ch[2] = "...Okay";
            message[9] = "* Really???";
            message[10] = "* Wow! We are going to#  have so much fun!";
            message[11] = "* I promise this is the#  best outcome for both of#  us.";
            message[12] = "* Well, \"roommate,\" let's#  go to Snowdin!";
            prt[9] = spr_martlet_head_shocked;
            prt[10] = spr_martlet_head_content;
            prt[11] = spr_martlet_head_happy;
            prt[12] = spr_martlet_head_content;
            
            if (message_current == 1)
                obj_martlet_npc.npc_direction = "down";
            
            if (message_current >= 7)
                scr_audio_fade_out(mus_acquittal, 1000);
            
            break;
        }
        
        break;
    
    case 28:
        cutscene_npc_walk_relative(obj_martlet_npc, 0, 20, 1, "y", "down");
        break;
    
    case 29:
        cutscene_instance_create(obj_martlet_npc.x, obj_martlet_npc.y, obj_hotland_roof_martlet_vine);
        break;
    
    case 30:
        break;
    
    case 31:
        cutscene_wait(1);
        break;
    
    case 32:
        cutscene_dialogue_dark();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            message[0] = "  W-What is this?";
            message[1] = "  Clover...?";
            message[2] = "  W-Why would you...";
        }
        
        break;
    
    case 33:
        obj_hotland_roof_martlet_vine.scene++;
        cutscene_advance();
        break;
    
    case 34:
        break;
    
    case 35:
        cutscene_wait(1.5);
        break;
    
    case 36:
        cutscene_music_start(38);
        break;
    
    case 37:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* You gotta be kidding me!";
            message[1] = "* I just knew something#  like this would happen!";
            message[2] = "* And after all we've been#  through...";
            message[3] = "* I tried for so long.";
            message[4] = "* I tried to uphold a#  friendly persona but#  wow...";
            message[5] = "* You really brought me to#  my limit!";
            message[6] = "* Though, I gotta say, it#  did feel good to finally#  SNAP, ya know?";
            message[7] = "* She never saw it coming!";
            message[8] = "* Best of all, she thought#  YOU betrayed her in the#  end!";
            message[9] = "* What an IDIOT!";
            message[10] = "* I bet she even-   ";
            prt[0] = flowey_pissed;
            prt[1] = flowey_pissed;
            prt[2] = flowey_sad;
            prt[3] = flowey_pissed;
            prt[4] = flowey_pissed;
            prt[5] = flowey_pissed;
            prt[6] = flowey_evil;
            prt[7] = flowey_grin;
            prt[8] = flowey_evil;
            prt[9] = flowey_evil;
            prt[10] = flowey_smirk;
            
            if (message_current == 6)
                sndfnt = sndfnt_flowey_2;
            else if (message_current == 10)
                sndfnt = sndfnt_flowey;
            
            if (message_current == 10)
            {
                if (cutoff >= string_length(message[message_current]))
                {
                    instance_create_depth(obj_pl.x, obj_pl.y, -1000, obj_heart_initiate_battle_flowey_rooftop);
                    instance_destroy();
                    global.dialogue_open = false;
                    other.scene++;
                }
                
                skippable = false;
            }
        }
        
        break;
    
    case 38:
        cutscene_advance();
        break;
    
    case 39:
        if (!instance_exists(obj_heart_initiate_battle_flowey_rooftop))
            cutscene_advance();
        
        break;
    
    case 40:
        audio_play_sound(snd_fail, 1, 0);
        cutscene_instance_create(0, 0, obj_rooftop_resettext);
        break;
    
    case 41:
        cutscene_wait(1);
        break;
    
    case 42:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* Nuh-uh-uh!";
            message[1] = "* Trigger-happy are we?";
            message[2] = "* I think you forgot who's#  in charge here.";
            prt[0] = flowey_wink;
            prt[1] = flowey_smirk;
            prt[2] = flowey_smirk;
        }
        
        break;
    
    case 43:
        var xx = obj_pl.x;
        var yy = obj_pl.y;
        var offset = 14;
        audio_play_sound(snd_undertale_appear, 1, 0);
        scr_audio_fade_out(cutscene_music, 500);
        instance_create_depth(xx - (offset * 1.5), yy, depth - 2, obj_hotland_roof_flowey_pellets);
        instance_create_depth(xx - offset, yy - offset, depth - 2, obj_hotland_roof_flowey_pellets);
        instance_create_depth(xx, yy - (offset * 1.5), depth - 2, obj_hotland_roof_flowey_pellets);
        instance_create_depth(xx + offset, yy + offset, depth - 2, obj_hotland_roof_flowey_pellets);
        instance_create_depth(xx + (offset * 1.5), yy, depth - 2, obj_hotland_roof_flowey_pellets);
        instance_create_depth(xx + offset, yy - offset, depth - 2, obj_hotland_roof_flowey_pellets);
        instance_create_depth(xx, yy + (offset * 1.5), depth - 2, obj_hotland_roof_flowey_pellets);
        instance_create_depth(xx - offset, yy + offset, depth - 2, obj_hotland_roof_flowey_pellets);
        cutscene_advance();
        break;
    
    case 44:
        cutscene_wait(1);
        break;
    
    case 45:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* We had a nice run,#  didn't we?";
            prt[0] = flowey_nice;
        }
        
        break;
    
    case 46:
        with (obj_hotland_roof_flowey_pellets)
            scene = 1;
        
        cutscene_advance();
        break;
    
    case 47:
        cutscene_wait(1.5);
        break;
    
    case 48:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* Too bad I won't#  miss it.";
            prt[0] = flowey_evil;
            sndfnt = sndfnt_flowey_2;
        }
        
        break;
    
    case 49:
        if (cutscene_npc_action_sprite(obj_flowey_npc, spr_flowey_rooftop_grows, 1, true, 1))
        {
            obj_flowey_npc.action_sprite_stop = false;
            obj_flowey_npc.action_sprite = true;
            obj_flowey_npc.sprite_index = spr_flowey_laughs;
            obj_flowey_npc.image_speed = 1;
            obj_flowey_npc.image_index = 0;
            audio_play_sound(snd_flowey_laugh, 1, 0);
            alarm[0] = 15;
        }
        
        break;
    
    case 50:
        obj_player_npc.npc_dynamic_depth = false;
        obj_player_npc.depth = depth - 1;
        obj_flowey_npc.npc_dynamic_depth = false;
        obj_flowey_npc.depth = depth - 1;
        
        if (!instance_exists(obj_hotland_roof_flowey_pellets))
        {
            instance_destroy(obj_player_npc);
            obj_pl.image_alpha = 0;
            obj_flowey_npc.image_alpha = 0;
            var heart = instance_create_depth(obj_pl.x, obj_pl.y, -10000, obj_heart_flowey_rooftop);
            heart.image_alpha = 0;
            audio_play_sound(snd_hurt, 1, 0);
            cutscene_advance();
        }
        else if (instance_exists(obj_hotland_roof_flowey_pellets) && obj_hotland_roof_flowey_pellets.scene >= 4)
        {
            if (draw_alpha < 0.99)
                draw_alpha = lerp(draw_alpha, 1, 0.04);
            else
                draw_alpha = 1;
        }
        
        break;
    
    case 51:
        cutscene_wait(2.5);
        break;
    
    case 52:
        if (obj_heart_flowey_rooftop.image_alpha < 0.99)
            obj_heart_flowey_rooftop.image_alpha += 0.05;
        else
            cutscene_advance();
        
        break;
    
    case 53:
        cutscene_wait(3.5);
        break;
    
    case 54:
        if (obj_flowey_npc.image_alpha >= 1)
            cutscene_wait(1.5);
        else
            obj_flowey_npc.image_alpha += 0.05;
        
        break;
    
    case 55:
        obj_heart_flowey_rooftop.waiter = 1;
        instance_create_depth(obj_flowey_npc.x - 1, obj_flowey_npc.y + 9, obj_flowey_npc.depth - 10001, obj_hotland_roof_soul_grab);
        cutscene_advance();
        break;
    
    case 56:
        var img_index = obj_hotland_roof_soul_grab.image_index;
        
        if (img_index >= 15)
            obj_heart_flowey_rooftop.image_alpha = 0;
        
        if (img_index >= 19)
            draw_alpha_white = (img_index - 19) / (obj_hotland_roof_soul_grab.image_number - 1 - 19);
        
        if (img_index >= (obj_hotland_roof_soul_grab.image_number - 1))
        {
            obj_hotland_roof_soul_grab.image_speed = 0;
            cutscene_advance();
        }
        
        break;
    
    case 57:
        instance_destroy(obj_flowey_npc);
        instance_destroy(obj_hotland_roof_soul_grab);
        cutscene_advance();
        break;
    
    case 58:
        cutscene_wait(3);
        break;
    
    case 59:
        draw_alpha_white = lerp(draw_alpha_white, 0, 0.05);
        
        if (draw_alpha_white < 0.01)
        {
            draw_alpha_white = 0;
            cutscene_advance();
        }
        
        break;
    
    case 60:
        cutscene_wait(1);
        instance_create_depth(camera_get_view_x(view_camera[0]) + 160, camera_get_view_y(view_camera[0]) + 140, obj_pl.depth, obj_player_npc);
        obj_player_npc.image_alpha = 0;
        break;
    
    case 61:
        draw_clover_yellow_alpha = lerp(draw_clover_yellow_alpha, 1, 0.03);
        
        if (draw_clover_yellow_alpha > 0.99)
        {
            draw_clover_yellow_alpha = 1;
            cutscene_advance();
        }
        
        break;
    
    case 62:
        cutscene_wait(1);
        break;
    
    case 63:
        var big_flowey = instance_create_depth(camera_get_view_x(view_camera[0]) + 160, camera_get_view_y(view_camera[0]) + 80, -99999, obj_flowey_rooftop_big);
        var noise = instance_create_depth(camera_get_view_x(view_camera[0]) + 160, camera_get_view_y(view_camera[0]) + 80, -999990, obj_flowey_rooftop_noise);
        cutscene_advance();
        noise_pop = 0;
        break;
    
    case 64:
        cutscene_wait(1);
        break;
    
    case 65:
        var noise = instance_create_depth(camera_get_view_x(view_camera[0]) + 160, camera_get_view_y(view_camera[0]) + 80, -999990, obj_flowey_rooftop_noise);
        obj_flowey_rooftop_big.image_alpha = 0;
        cutscene_advance();
        break;
    
    case 66:
        with (obj_player_npc)
        {
            if (y < (camera_get_view_y(view_camera[0]) + 180))
            {
                y += 5;
            }
            else
            {
                with (other)
                    scene = 67;
            }
        }
        
        break;
    
    case 67:
        cutscene_wait(0.5);
        break;
    
    case 68:
        var noise = instance_create_depth(camera_get_view_x(view_camera[0]) + 160, camera_get_view_y(view_camera[0]) + 40, -999990, obj_flowey_rooftop_noise);
        obj_flowey_rooftop_big.y = noise.y;
        obj_flowey_rooftop_big.image_alpha = 1;
        cutscene_advance();
        break;
    
    case 69:
        cutscene_wait(0.5);
        break;
    
    case 70:
        cutscene_music_start(620);
        break;
    
    case 71:
        if (!instance_exists(obj_dialogue_flowey_alone))
            msg = instance_create(x, y, obj_dialogue_flowey_alone);
        
        if (!global.dialogue_open)
        {
            cutscene_advance();
            return true;
        }
        
        var flowey_face;
        
        with (msg)
        {
            sndfnt = sndfnt_flowey;
            message[0] = "* MMMmm I shoulda done this#  earlier, huh!";
            message[1] = "* Oh?";
            message[2] = "* You're still holding on? So#  stubborn!";
            message[3] = "* Lighten up a little, pal!";
            message[4] = "* You do know this didn't have to#  happen, right?";
            message[5] = "* We had a plan. A simple one.";
            message[6] = "* Go. To. ASGORE.";
            message[7] = "* But I guess you're too stupid#  to follow directions.";
            message[8] = "* Don't know why I thought this#  would end any differently...";
            
            if (global.meta_flowey_fight_count == 0)
            {
                message[9] = "* You've always been predictable.";
                message[10] = "* Oh? What do I mean? Well,#  buddy, let me show you!";
            }
            else
            {
                message[9] = "* You've always been#  predictable, heh.";
                message[10] = "* But enough about YOU.";
                message[11] = "* I wanna have a little fun#  before I absorb your SOUL for#  good!";
            }
            
            switch (message_current)
            {
                case 0:
                    flowey_face = 3144;
                    break;
                
                case 1:
                    flowey_face = 699;
                    break;
                
                case 2:
                    flowey_face = 2921;
                    break;
                
                case 3:
                    flowey_face = 1953;
                    break;
                
                case 4:
                    flowey_face = 1358;
                    break;
                
                case 5:
                    flowey_face = 1358;
                    break;
                
                case 6:
                    flowey_face = 3573;
                    break;
                
                case 7:
                    flowey_face = 2930;
                    break;
                
                case 8:
                    flowey_face = 2930;
                    break;
                
                case 9:
                    if (global.meta_flowey_fight_count == 0)
                        flowey_face = 2921;
                    else
                        flowey_face = 2921;
                    
                    break;
                
                case 10:
                    if (global.meta_flowey_fight_count == 0)
                        flowey_face = 1953;
                    else
                        flowey_face = 2727;
                    
                    break;
                
                case 11:
                    flowey_face = 3124;
                    break;
                
                default:
                    flowey_face = 1358;
                    break;
            }
            
            switch (message_current)
            {
                case 4:
                case 6:
                case 7:
                case 10:
                    if (other.noise_pop < message_current)
                    {
                        other.noise_pop = message_current;
                        instance_create_depth(obj_flowey_rooftop_big.x, obj_flowey_rooftop_big.y, -999990, obj_flowey_rooftop_noise);
                    }
                    
                    break;
            }
            
            if (message_current == 6)
            {
                sndfnt = sndfnt_flowey_2;
                shake = true;
            }
            else
            {
                sndfnt = sndfnt_flowey;
                shake = false;
            }
        }
        
        obj_flowey_rooftop_big.sprite_index = flowey_face;
        break;
    
    case 72:
        cutscene_wait(0.5);
        break;
    
    case 73:
        if (global.meta_flowey_fight_count > 0)
        {
            var controller = instance_create_depth(0, 0, -9999, obj_flowey_world_controller);
            controller.scene = 95;
            obj_flowey_rooftop_big.persistent = true;
            room_goto(rm_battle_flowey);
            global.battling_boss = true;
            global.battle_start = true;
            global.sound_carry_overworld = false;
            global.cutscene = true;
            global.battle_enemy_name = "flowey";
            obj_pl.image_alpha = 0;
            instance_destroy();
            exit;
        }
        
        audio_play_sound(mus_cymbal, 10, 0);
        cutscene_advance();
        break;
    
    case 74:
        if (!instance_exists(obj_flowey_rooftop_noise))
        {
            var rand = 50;
            
            if (irandom_range(1, 50) == 1)
                instance_create_depth(obj_flowey_rooftop_big.x, obj_flowey_rooftop_big.y, -999990, obj_flowey_rooftop_noise);
        }
        
        scr_audio_fade_out(mus_flowey_soundscape, 1000);
        cutscene_screenshake(999, 1);
        
        if (draw_alpha_white < 1)
            draw_alpha_white += 0.007;
        else
            cutscene_advance();
        
        break;
    
    case 75:
        cutscene_wait(1);
        break;
    
    case 76:
        cutscene_change_room(rm_flashback_01, 184, 651, 0.1);
        break;
}

if (scene >= 50 && scene <= 53 && !audio_is_playing(snd_flowey_laugh))
{
    if (obj_flowey_npc.sprite_index == spr_flowey_laughs || obj_flowey_npc.sprite_index == spr_flowey_rooftop_grows)
    {
        if (cutscene_npc_action_sprite_reverse(obj_flowey_npc, spr_flowey_rooftop_grows, 1, false))
            scene -= 1;
    }
}
