switch (scene)
{
    case 0:
        if (scr_interact() && keyboard_multicheck_pressed(0))
            cutscene_advance();
        
        break;
    
    case 1:
        if (global.sworks_flag[28] >= 1)
        {
            scr_text();
            
            with (msg)
            {
                message[0] = "* (You hear the whirring of#  cooling fans inside the hot#  console.)\t";
                message[1] = "* (Best leave it be.)";
            }
            
            scene = 0;
            exit;
        }
        
        if (global.route == 3)
        {
            scr_text();
            
            with (msg)
                message[0] = "* (The computer was recently#  used.)";
            
            scene = 0;
        }
        else
        {
            cutscene_dialogue();
            
            with (msg)
            {
                message[0] = "* (A daunting array of screens#  and buttons lie before you.)";
                message[1] = "* (You press one of the#  buttons.)";
            }
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
        audio_sound_gain(obj_radio.current_song, 0, 500);
        cutscene_advance();
        break;
    
    case 11:
        if (obj_steamworks_33_bridge.active == false)
            cutscene_advance();
        
        break;
    
    case 12:
        scr_cutscene_end();
        audio_sound_gain(obj_radio.current_song, 1, 500);
        cutscene_advance();
        instance_destroy(105663);
        ds_list_clear(global.encounter_list);
        global.sworks_flag[28] = 1;
        break;
}
