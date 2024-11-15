var item_1_xx, item_1_yy, item_2_xx, item_2_yy, item_3_xx, item_3_yy, item_4_xx, item_4_yy, player_carrying_item, i;

item_1_xx = 88;
item_1_yy = 160;
item_2_xx = 128;
item_2_yy = 160;
item_3_xx = 88;
item_3_yy = 190;
item_4_xx = 128;
item_4_yy = 190;

switch (scene)
{
    case 0:
        cutscene_wait(2);
        break;
    
    case 1:
        cutscene_dialogue();
        
        with (msg)
        {
            ch_msg = 15;
            ch[1] = "Yes";
            ch[2] = "No";
            talker[0] = 1161;
            message[0] = "* Ouch... Can't say I was#  prepared for that.";
            message[1] = "* I knew my husband was#  an engineer but he never#  told me about that guy.";
            message[2] = "* He'd vaguely mention a#  robotics project that#  could net him a#  promotion but...";
            message[3] = "* He stopped talking#  about it after he quit#  his job here.";
            message[4] = "* Ugh...";
            message[5] = "* I would've used force#  to bypass \"Axis\" but I...#  I'm not sure now.";
            message[6] = "* He may be the last#  remnant of Chujin's#  talent.";
            message[7] = "* It would be best if we#  could just avoid him#  from now on...";
            message[8] = "* ...";
            message[9] = "* In any case, I guess#  we're pretty lucky he's#  the only guard bot#  around.";
            message[10] = "* Wait a second...";
            message[11] = "* I have an idea!";
            message[12] = "* He mentioned how he was#  \"lonely\" right? Well#  what if we fixed that?";
            message[13] = "* We could use scraps#  lying around to forge a#  companion for him!";
            message[14] = "* He doesn't seem too#  bright after all. Maybe#  that's all we need to#  distract him?";
            message[15] = "* What do you think?";
            prt[0] = 370;
            prt[1] = 370;
            prt[2] = 370;
            prt[3] = 370;
            prt[4] = 370;
            prt[5] = 370;
            prt[6] = 370;
            prt[7] = 370;
            prt[8] = 370;
            prt[9] = 370;
            prt[10] = 370;
            prt[11] = 370;
            prt[12] = 370;
            prt[13] = 370;
            prt[14] = 370;
            prt[15] = 370;
            
            if (outcome == 1)
            {
                message[16] = "* Great!";
                message[17] = "* It's the best plan I#  could think of.";
                prt[16] = 370;
                prt[17] = 370;
            }
            
            if (outcome == 2)
            {
                message[16] = "* You got a better idea?";
                message[17] = "* It'll be easy, trust#  me.";
                prt[16] = 370;
                prt[17] = 370;
            }
        }
        
        break;
    
    case 2:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* So... ";
            message[1] = "* We seem to be in some#  sort of storage room.";
            message[2] = "* Look around for parts#  we can use. Shouldn't#  take many.";
            prt[0] = 370;
            prt[1] = 370;
            prt[2] = 370;
        }
        
        break;
    
    case 3:
        cutscene_npc_walk(1161, 105, 125, 3, "x", "down");
        break;
    
    case 4:
        scr_cutscene_end();
        cutscene_advance();
        break;
    
    case 5:
        player_carrying_item = false;
        
        with (obj_robuild_parent)
        {
            if (robot_item_is_carried == true)
                player_carrying_item = true;
        }
        
        if (player_carrying_item && point_in_rectangle(obj_pl.x, obj_pl.y, 50, 120, 180, 200))
        {
            scr_text();
            
            with (msg)
            {
                talker[0] = 1161;
                message[0] = "* You want to use this?";
                prt[0] = 370;
                ch_msg = 0;
                ch[1] = "Positive";
                ch[2] = "Negative";
                
                if (outcome == 1)
                {
                    global.cutscene = true;
                    
                    with (obj_robuild_parent)
                    {
                        if (robot_item_is_carried == true)
                        {
                            robot_item_is_jumping = true;
                            robot_item_x_target = item_1_xx;
                            robot_item_y_target = item_1_yy;
                            audio_play_sound(snd_playerjump, 1, 0);
                            obj_steamworks_13_controller.robot_part[0] = editor_sprite;
                        }
                    }
                    
                    other.scene++;
                }
                
                if (outcome == 2)
                {
                    message[1] = "* Grab something else#  then.";
                    prt[1] = 370;
                }
            }
        }
        
        break;
    
    case 6:
        with (obj_robuild_parent)
        {
            if (robot_item_is_carried)
                exit;
        }
        
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Okay, we'll need three#  more objects.";
            prt[0] = 370;
        }
        
        global.cutscene = false;
        break;
    
    case 7:
        player_carrying_item = false;
        
        with (obj_robuild_parent)
        {
            if (robot_item_is_carried == true)
                player_carrying_item = true;
        }
        
        if (player_carrying_item && point_in_rectangle(obj_pl.x, obj_pl.y, 50, 120, 180, 200))
        {
            scr_text();
            
            with (msg)
            {
                talker[0] = 1161;
                message[0] = "* You think this'll work?";
                prt[0] = 370;
                ch_msg = 0;
                ch[1] = "Certain";
                ch[2] = "Uncertain";
                
                if (outcome == 1)
                {
                    global.cutscene = true;
                    
                    with (obj_robuild_parent)
                    {
                        if (robot_item_is_carried == true)
                        {
                            robot_item_is_jumping = true;
                            robot_item_x_target = item_2_xx;
                            robot_item_y_target = item_2_yy;
                            audio_play_sound(snd_playerjump, 1, 0);
                            obj_steamworks_13_controller.robot_part[1] = editor_sprite;
                        }
                    }
                    
                    other.scene++;
                }
                
                if (outcome == 2)
                {
                    message[1] = "* We don't have time to waste.";
                    prt[1] = 370;
                }
            }
        }
        
        break;
    
    case 8:
        with (obj_robuild_parent)
        {
            if (robot_item_is_carried)
                exit;
        }
        
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Alright, two more and#  we can make this thing.";
            prt[0] = 437;
        }
        
        global.cutscene = false;
        break;
    
    case 9:
        player_carrying_item = false;
        
        with (obj_robuild_parent)
        {
            if (robot_item_is_carried == true)
                player_carrying_item = true;
        }
        
        if (player_carrying_item && point_in_rectangle(obj_pl.x, obj_pl.y, 50, 120, 180, 200))
        {
            scr_text();
            
            with (msg)
            {
                talker[0] = 1161;
                message[0] = "* Is this a good pick?";
                prt[0] = 370;
                ch_msg = 0;
                ch[1] = "Definitely";
                ch[2] = "Definitely\nnot";
                
                if (outcome == 1)
                {
                    global.cutscene = true;
                    
                    with (obj_robuild_parent)
                    {
                        if (robot_item_is_carried == true)
                        {
                            robot_item_is_jumping = true;
                            robot_item_x_target = item_3_xx;
                            robot_item_y_target = item_3_yy;
                            audio_play_sound(snd_playerjump, 1, 0);
                            obj_steamworks_13_controller.robot_part[2] = editor_sprite;
                        }
                    }
                    
                    other.scene++;
                }
                
                if (outcome == 2)
                {
                    message[1] = "* Make up your mind.";
                    prt[1] = 370;
                }
            }
        }
        
        break;
    
    case 10:
        with (obj_robuild_parent)
        {
            if (robot_item_is_carried)
                exit;
        }
        
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* One more object should#  do the trick.";
            prt[0] = 370;
        }
        
        global.cutscene = false;
        break;
    
    case 11:
        player_carrying_item = false;
        
        with (obj_robuild_parent)
        {
            if (robot_item_is_carried == true)
                player_carrying_item = true;
        }
        
        if (player_carrying_item && point_in_rectangle(obj_pl.x, obj_pl.y, 50, 120, 180, 200))
        {
            scr_text();
            
            with (msg)
            {
                talker[0] = 1161;
                message[0] = "* Is this your final#  choice?";
                prt[0] = 370;
                ch_msg = 0;
                ch[1] = "Yea";
                ch[2] = "Nay";
                
                if (outcome == 1)
                {
                    global.cutscene = true;
                    
                    with (obj_robuild_parent)
                    {
                        if (robot_item_is_carried == true)
                        {
                            robot_item_is_jumping = true;
                            robot_item_x_target = item_4_xx;
                            robot_item_y_target = item_4_yy;
                            audio_play_sound(snd_playerjump, 1, 0);
                            obj_steamworks_13_controller.robot_part[3] = editor_sprite;
                        }
                    }
                    
                    scr_audio_fade_out(obj_radio.current_song, 0);
                    other.scene++;
                }
                
                if (outcome == 2)
                {
                    message[1] = "* Hurry it up then.";
                    prt[1] = 370;
                }
            }
        }
        
        break;
    
    case 12:
        with (obj_robuild_parent)
        {
            if (robot_item_is_carried)
                exit;
        }
        
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[1] = "* Okay, let's build a#  robot!";
            prt[1] = 372;
        }
        
        break;
    
    case 13:
        cutscene_wait(2);
        break;
    
    case 14:
        if (global.dialogue_open)
            exit;
        
        if (!instance_exists(obj_robot_build_controller))
            instance_create(0, 0, obj_robot_build_controller);
        
        for (i = 0; i < array_length_1d(robot_part); i++)
            obj_robot_build_controller.robot_item[i] = robot_part[i];
        
        break;
}
