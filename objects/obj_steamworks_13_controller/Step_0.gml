var xbound_left, xbound_right, ybound_top, ybound_bottom, robot_part_inside_zone, i, new_image_index, max_points;

xbound_left = 50;
xbound_right = 180;
ybound_top = 100;
ybound_bottom = 190;

switch (scene)
{
    case 0:
        cutscene_wait(2);
        break;
        break;
    
    case 1:
        cutscene_dialogue();
        
        with (msg)
        {
            ch_msg = 16;
            ch[1] = "Yes";
            ch[2] = "No";
            talker[0] = 1161;
            message[0] = "* Ouch... Can't say I was#  prepared for that.";
            message[1] = "* I knew my husband was#  an engineer but he never#  told me about that guy.";
            message[2] = "* He'd mention a robotics#  project that could net#  him a promotion but...";
            message[3] = "* He stopped talking#  about it after he quit#  his job here.";
            message[4] = "* Ugh...";
            message[5] = "* I would've used force#  to bypass \"Axis\" but I...#  I'm not sure now.";
            message[6] = "* He may be the last#  remnant of Chujin's#  talent.";
            message[7] = "* It would be best if we#  could just avoid him#  from now on...";
            message[8] = "* ...";
            message[9] = "* In any case, we're#  pretty lucky he's the#  only guard-bot around.";
            message[10] = "* Wait a second...";
            message[11] = "* I have an idea!";
            message[12] = "* He mentioned how he was#  \"lonely\" right? Well#  what if we fixed that?";
            message[13] = "* We could use scraps#  lying around to forge a#  companion for him!";
            message[14] = "* He doesn't seem too#  bright after all. ";
            message[15] = "* Maybe that's all we#  need to distract him?";
            message[16] = "* What do you think?";
            prt[0] = 368;
            prt[1] = 377;
            prt[2] = 370;
            prt[3] = 394;
            prt[4] = 368;
            prt[5] = 366;
            prt[6] = 394;
            prt[7] = 370;
            prt[8] = 371;
            prt[9] = 377;
            prt[10] = 393;
            prt[11] = 372;
            prt[12] = 370;
            prt[13] = 371;
            prt[14] = 395;
            prt[15] = 372;
            prt[16] = 370;
            
            if (outcome == 1)
            {
                message[17] = "* Great!";
                message[18] = "* It's the best plan I#  could think of.";
                prt[17] = 372;
                prt[18] = 395;
            }
            
            if (outcome == 2)
            {
                message[17] = "* You got a better idea?";
                message[18] = "* It'll be easy, trust#  me.";
                prt[17] = 368;
                prt[18] = 370;
            }
            
            message[19] = "* So... ";
            message[20] = "* We seem to be in some#  sort of storage room.";
            message[21] = "* Look around for parts#  we can use. Shouldn't#  take many.";
            prt[19] = 377;
            prt[20] = 370;
            prt[21] = 370;
        }
        
        break;
    
    case 2:
        cutscene_npc_walk(1161, 105, 125, 3, "x", "down");
        break;
    
    case 3:
        global.sworks_flag[3] = 1;
        obj_ceroba_npc.npc_direction = "down";
        scr_cutscene_end();
        cutscene_advance();
        break;
    
    case 4:
        if (obj_ceroba_npc.interact)
        {
            scr_text();
            
            with (msg)
            {
                talker[0] = 1161;
                message[0] = "* Find anything that looks#  like a makeshift body#  part.";
                message[1] = "* I don't know, be#  creative.";
                prt[0] = 370;
                prt[1] = 377;
            }
        }
        
        robot_part_inside_zone = false;
        
        if (robot_part_no_loop == false)
        {
            with (obj_robuild_parent)
            {
                if (robot_item_is_carried && point_in_rectangle(x, y, xbound_left, ybound_top, xbound_right, ybound_bottom))
                    robot_part_inside_zone = true;
            }
        }
        
        if (robot_part_inside_zone)
        {
            if (obj_pl.x > (obj_ceroba_npc.x + 15))
            {
                obj_ceroba_npc.npc_direction_hold = "down";
                obj_ceroba_npc.npc_direction = "right";
            }
            
            scr_text();
            
            switch (robot_part_current)
            {
                case 0:
                    with (msg)
                    {
                        talker[0] = 1161;
                        message[0] = "* You want to use this?";
                        prt[0] = 370;
                        ch_msg = 0;
                        ch[1] = "Positive";
                        ch[2] = "Negative";
                    }
                    
                    break;
                
                case 1:
                    with (msg)
                    {
                        talker[0] = 1161;
                        message[0] = "* You think this'll work?";
                        prt[0] = 370;
                        ch_msg = 0;
                        ch[1] = "Certain";
                        ch[2] = "Uncertain";
                    }
                    
                    break;
                
                case 2:
                    with (msg)
                    {
                        talker[0] = 1161;
                        message[0] = "* Is this a good pick?";
                        prt[0] = 370;
                        ch_msg = 0;
                        ch[1] = "Definitely";
                        ch[2] = "Definitely\nnot";
                    }
                    
                    break;
                
                case 3:
                    with (msg)
                    {
                        talker[0] = 1161;
                        message[0] = "* Is this your final#  choice?";
                        prt[0] = 370;
                        ch_msg = 0;
                        ch[1] = "Yea";
                        ch[2] = "Nay";
                    }
                    
                    break;
            }
            
            with (msg)
            {
                if (outcome == 1)
                {
                    global.cutscene = true;
                    
                    with (obj_robuild_parent)
                    {
                        if (robot_item_is_carried == true)
                        {
                            robot_item_is_jumping = true;
                            robot_item_can_pickup = false;
                            robot_item_x_target = obj_steamworks_13_controller.robot_part_xx[obj_steamworks_13_controller.robot_part_current];
                            robot_item_y_target = obj_steamworks_13_controller.robot_part_yy[obj_steamworks_13_controller.robot_part_current];
                            audio_play_sound(snd_playerjump, 1, 0);
                            obj_steamworks_13_controller.robot_part[obj_steamworks_13_controller.robot_part_current] = editor_sprite;
                        }
                    }
                    
                    other.robot_part_current += 1;
                    other.robot_part_no_loop = true;
                    other.scene++;
                }
                
                if (outcome == 2)
                {
                    message[1] = "* Grab something else#  then.";
                    prt[1] = 368;
                    other.robot_part_no_loop = true;
                }
            }
        }
        
        break;
    
    case 5:
        with (obj_robuild_parent)
        {
            if (robot_item_is_carried)
                exit;
        }
        
        cutscene_dialogue();
        
        switch (robot_part_current)
        {
            case 1:
                with (msg)
                {
                    talker[0] = 1161;
                    message[0] = "* Okay, we'll need three#  more objects.";
                    prt[0] = 370;
                }
                
                break;
            
            case 2:
                with (msg)
                {
                    talker[0] = 1161;
                    message[0] = "* Alright, two more and#  we can make this thing.";
                    prt[0] = 370;
                }
                
                break;
            
            case 3:
                with (msg)
                {
                    talker[0] = 1161;
                    message[0] = "* One more object should#  do the trick.";
                    prt[0] = 370;
                }
                
                break;
            
            case 4:
                with (msg)
                {
                    talker[0] = 1161;
                    message[0] = "* Okay, let's build a#  robot!";
                    prt[0] = 372;
                }
                
                break;
        }
        
        break;
    
    case 6:
        if (robot_part_current < 4)
        {
            scene = 4;
            global.cutscene = false;
            other.robot_part_no_loop = false;
            obj_ceroba_npc.npc_direction = "down";
        }
        else
        {
            scene = 7;
        }
        
        break;
    
    case 7:
        cutscene_audio_fade(obj_radio.current_song, 0, 800, 0.15, false, true);
        break;
    
    case 8:
        if (global.dialogue_open)
            exit;
        
        if (!instance_exists(obj_robot_build_controller))
            instance_create(0, 0, obj_robot_build_controller);
        
        for (i = 0; i < array_length_1d(robot_part); i++)
            obj_robot_build_controller.robot_item[i] = robot_part[i];
        
        cutscene_advance();
        break;
    
    case 9:
        if (!instance_exists(obj_robot_build_controller))
        {
            scr_radio_restart();
            cutscene_advance();
            exit;
        }
        
        if (obj_robot_build_controller.destroy_self == true)
        {
            with (obj_ceroba_npc)
            {
                x = 90;
                y = 190;
                npc_direction = "up";
            }
            
            with (obj_pl)
            {
                x = 130;
                y = 190;
                direction = 90;
            }
            
            if (!instance_exists(obj_steamworks_13_robuild_complete))
            {
                instance_create(110, 140, obj_steamworks_13_robuild_complete);
                overworld_robot_sprite[6] = 0;
                
                for (i = 0; i < array_length(robot_part); i++)
                {
                    switch (robot_part[i])
                    {
                        case 1515:
                            overworld_robot_sprite[2] += 1;
                            overworld_robot_sprite[6] += 1;
                            break;
                        
                        case 1513:
                            overworld_robot_sprite[2] += 1;
                            overworld_robot_sprite[3] += 1;
                            break;
                        
                        case 1516:
                            overworld_robot_sprite[4] += 1;
                            overworld_robot_sprite[6] += 1;
                            break;
                        
                        case 1522:
                            overworld_robot_sprite[4] += 1;
                            overworld_robot_sprite[5] += 1;
                            break;
                        
                        case 1519:
                            overworld_robot_sprite[1] += 1;
                            break;
                        
                        case 1514:
                            overworld_robot_sprite[2] += 1;
                            overworld_robot_sprite[3] += 1;
                            break;
                        
                        case 1512:
                            overworld_robot_sprite[0] += 2;
                            break;
                        
                        case 1521:
                            overworld_robot_sprite[0] += 1;
                            overworld_robot_sprite[4] += 1;
                            overworld_robot_sprite[5] += 1;
                            break;
                        
                        case 1518:
                            overworld_robot_sprite[1] += 1;
                            overworld_robot_sprite[0] += 1;
                            break;
                    }
                }
                
                new_image_index = 0;
                max_points = max(overworld_robot_sprite[0], overworld_robot_sprite[1], overworld_robot_sprite[2], overworld_robot_sprite[3], overworld_robot_sprite[4], overworld_robot_sprite[5], overworld_robot_sprite[6]);
                
                for (i = 0; i < array_length(overworld_robot_sprite); i++)
                {
                    if (max_points == overworld_robot_sprite[i])
                    {
                        new_image_index = i;
                        break;
                    }
                }
                
                global.sworks_flag[44] = new_image_index;
                obj_steamworks_13_robuild_complete.image_index = new_image_index;
            }
            
            with (obj_robuild_parent)
            {
                if (point_in_rectangle(x, y, xbound_left, ybound_top, xbound_right, ybound_bottom))
                    instance_destroy();
            }
        }
        
        break;
    
    case 10:
        cutscene_wait(1);
        break;
    
    case 11:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* That takes care of#  that.";
            message[1] = "* You're kinda creative#  when push comes to#  shove.";
            message[2] = "* All due respect to#  Chujin's work but this#  might just fool Axis.";
            message[3] = "* I'll hold onto it for#  you.";
            prt[0] = 370;
            prt[1] = 372;
            prt[2] = 395;
            prt[3] = 372;
        }
        
        break;
    
    case 12:
        cutscene_npc_walk(1161, 110, 160, 3, "x", "up");
        break;
    
    case 13:
        obj_ceroba_npc.action_sprite = true;
        obj_ceroba_npc.sprite_index = spr_ceroba_up_walk;
        obj_ceroba_npc.image_speed = 1/3;
        global.sworks_flag[6] = 4;
        cutscene_advance();
        break;
    
    case 14:
        cutscene_wait(0.5);
        break;
    
    case 15:
        obj_ceroba_npc.action_sprite = false;
        instance_destroy(obj_steamworks_13_robuild_complete);
        cutscene_sfx_play(319, 1);
        break;
    
    case 16:
        cutscene_npc_direction(1161, "down");
        break;
    
    case 17:
        cutscene_wait(0.5);
        break;
    
    case 18:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Let's get outta here,#  yeah?";
            prt[0] = 370;
        }
        
        break;
    
    case 19:
        cutscene_npc_walk(1161, obj_pl.x - 30, obj_pl.y, 3, "y", "right");
        obj_pl.direction = 0;
        break;
    
    case 20:
        global.party_member = 1171;
        
        with (instance_create(obj_ceroba_npc.x, obj_ceroba_npc.y, global.party_member))
            npc_reset = true;
        
        instance_destroy(obj_ceroba_npc);
        global.sworks_flag[3] = 2;
        instance_destroy();
        scr_cutscene_end();
        break;
}

if (robot_part_no_loop == true)
{
    with (obj_pl)
    {
        if (!point_in_rectangle(x, y, xbound_left - 10, ybound_top - 10, xbound_right + 10, ybound_bottom + 10))
            other.robot_part_no_loop = false;
    }
}
