if (live_call())
    return global.live_result;

if (global.sworks_flag[28] >= 2)
{
    if (scr_interact() && keyboard_multicheck_pressed(0))
    {
        scr_text();
        
        with (msg)
        {
            message[0] = "* (You hear the whirring of#  cooling fans inside the hot#  console.)\t";
            message[1] = "* (Best leave it be.)";
        }
    }
    
    exit;
}

switch (scene)
{
    case -12:
        if (obj_pl.x < 440)
        {
            scr_cutscene_start();
            instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            cutscene_follower_into_actor();
            
            with (obj_shadow_master)
            {
                event_perform(ev_alarm, 0);
                reverse = true;
            }
        }
        
        break;
    
    case -11:
        audio_play_sound(snd_encounter, 1, 0);
        instance_create(obj_ceroba_npc.x, obj_ceroba_npc.y - 40, obj_cutscene_ex);
        cutscene_advance();
        break;
    
    case -10:
        if (cutscene_wait(1))
            instance_destroy(obj_cutscene_ex);
        
        break;
    
    case -9:
        cutscene_npc_walk(1161, 360, 200, 4, "x", "up");
        break;
    
    case -8:
        cutscene_wait(1);
        break;
    
    case -7:
        cutscene_npc_direction(1161, "right");
        break;
    
    case -6:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Whoa...";
            message[1] = "* I'm guessing this is our#  ticket out of here.";
            prt[0] = 393;
            prt[1] = 377;
        }
        
        break;
    
    case -5:
        cutscene_camera_move(290, 160, 3, true);
        scene = -4;
        break;
    
    case -4:
        cutscene_npc_walk(1161, 290, 160, 3, "x", "up");
        cutscene_npc_walk(1168, 320, 180, 3, "x", "up");
        scene = -3;
        break;
    
    case -3:
        if (obj_ceroba_npc.npc_arrived && obj_player_npc.npc_arrived)
            cutscene_wait(1);
        
        break;
    
    case -2:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Just have to... uh...";
            message[1] = "* Why don't you take a#  stab at it?";
            message[2] = "* Technology and I don't#  exactly mix well.";
            prt[0] = 371;
            prt[1] = 370;
            prt[2] = 377;
            
            if (message_current == 1)
                obj_ceroba_npc.npc_direction = "down";
        }
        
        break;
    
    case -1:
        if (cutscene_npc_walk(1161, obj_player_npc.x, obj_player_npc.y + 20, 3, "y", "up") && cutscene_camera_move(obj_player_npc.x, obj_player_npc.y, 2, true))
        {
            instance_destroy(obj_player_npc);
            cutscene_actor_into_follower();
            cutscene_camera_reset(true);
            scene = 0;
            scr_cutscene_end();
            global.sworks_flag[28] = 1;
        }
        else
        {
            scene = -1;
        }
        
        break;
    
    case 0:
        if (scr_interact() && keyboard_multicheck_pressed(0))
        {
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* (A daunting array of screens#  and buttons lie before you.)";
            message[1] = "* (You press one of the#  buttons.)";
        }
        
        break;
    
    case 2:
        cutscene_sfx_play(657, 1);
        break;
    
    case 3:
        cutscene_wait(1);
        break;
    
    case 4:
        if (!instance_exists(obj_dialogue_steamworks_33))
        {
            msg = instance_create_depth(0, 0, -9999, obj_dialogue_steamworks_33);
            msg.draw_alpha = 0;
        }
        
        with (msg)
        {
            ch_msg = 2;
            ch[1] = "Info";
            ch[2] = "Docs";
            ch[3] = "Pictures";
            ch[4] = "Games";
            ch[5] = "Settings";
            message[0] = "* Robotics Control Status:#  Functioning at 78%.";
            message[1] = "* Awaiting input . .";
            message[2] = "* MAIN DIRECTORY:";
            
            switch (outcome)
            {
                case 1:
                    message[3] = "* Steamworks Station R#  System";
                    message[4] = "* OS Delta - Version 1.4 -#  Installed X/X/20XX";
                    message[5] = "* Processor - Ultra McTurbo#  Core 180 - 0.5GHz";
                    message[6] = "* Installed Physical Memory -#  500 MB";
                    message[7] = "* Graphics Card - ERROR";
                    break;
                
                case 2:
                    message[3] = "* ERROR - Information#  classified.";
                    break;
                
                case 3:
                    message[3] = "* Loading . .";
                    message[4] = "* Estimated time remaining:#  9 hours . .";
                    break;
                
                case 4:
                    message[3] = "* Loading . .";
                    message[4] = "* Feature BLOCKED.";
                    message[5] = "* Custom message: Trying to#  play video games on#  the job? ";
                    message[6] = "* Please report to the head#  office. We have a#  pink-colored gift for you.";
                    break;
                
                case 5:
                    message_reset = true;
                    other.scene = 5;
                    break;
            }
        }
        
        if (!global.dialogue_open)
        {
            msg.message_reset = true;
            cutscene_advance(4);
            return true;
        }
        
        break;
    
    case 5:
        with (msg)
        {
            ch_msg = 0;
            ch[1] = "Emergency Shutdown";
            ch[2] = "Back";
            message[0] = "* Select your option.";
            
            switch (outcome)
            {
                case 1:
                    other.scene = 6;
                    message_reset = true;
                    break;
                
                case 2:
                    other.scene = 4;
                    message_reset = true;
                    break;
            }
        }
        
        break;
    
    case 6:
        with (msg)
        {
            ch_msg = 0;
            ch[1] = "Yes";
            ch[2] = "No";
            message[0] = "* Shut down all helper bots#  within the vicinity?";
            
            switch (outcome)
            {
                case 1:
                    message[1] = "* Attempting shut down . .";
                    message[2] = "* . .";
                    message[3] = "* ERROR: Could not complete#  task.";
                    message[4] = "* . .";
                    message[5] = "* Just kidding ;)";
                    message[6] = "* Emergency shutdown#  complete.";
                    other.scene = 7;
                    break;
                
                case 2:
                    message[1] = "* Why did you select this#  option then?";
                    break;
            }
        }
        
        if (!global.dialogue_open)
        {
            msg.message_reset = true;
            cutscene_advance(5);
        }
        
        break;
    
    case 7:
        if (global.dialogue_open)
            exit;
        
        msg.message_reset = true;
        msg.fade_out = true;
        cutscene_advance();
        break;
    
    case 8:
        if (instance_exists(obj_dialogue_steamworks_33))
            exit;
        
        cutscene_advance();
        break;
    
    case 9:
        cutscene_wait(0.5);
        break;
    
    case 10:
        obj_steamworks_33_bridge.active = true;
        obj_pl.direction = 180;
        audio_sound_gain(obj_radio.current_song, 0, 500);
        cutscene_follower_into_actor();
        break;
    
    case 11:
        cutscene_npc_direction(1161, "left");
        break;
    
    case 12:
        if (obj_steamworks_33_bridge.active == false)
            cutscene_advance();
        
        break;
    
    case 13:
        audio_sound_gain(obj_radio.current_song, 1, 500);
        cutscene_advance();
        break;
    
    case 14:
        cutscene_npc_walk(1161, 210, 190, 3, "y", "left");
        break;
    
    case 15:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* I hope that worked.";
            message[1] = "* It's unfortunate Axis#  had to end up this way.";
            message[2] = "* Maybe I should...";
            message[3] = "* No.";
            message[4] = "* I wish Chujin's project#  could thrive but a line#  had to be drawn.";
            message[5] = "* Can't dwell in the past#  any longer.";
            message[6] = "* Let's go.";
            prt[0] = 377;
            prt[1] = 371;
            prt[2] = 394;
            prt[3] = 377;
            prt[4] = 371;
            prt[5] = 371;
            prt[6] = 370;
            
            if (message_current == 1)
                obj_ceroba_npc.npc_direction = "up";
            
            if (message_current == 4)
                obj_ceroba_npc.npc_direction = "left";
        }
        
        break;
    
    case 16:
        if (cutscene_npc_walk(1161, obj_pl.x + 20, obj_pl.y, 3, "y", "left"))
        {
            cutscene_actor_into_follower();
            scene = 17;
        }
        
        break;
    
    case 17:
        scr_cutscene_end();
        cutscene_advance();
        instance_destroy(105663);
        ds_list_clear(global.encounter_list);
        global.sworks_flag[28] = 2;
        break;
}
