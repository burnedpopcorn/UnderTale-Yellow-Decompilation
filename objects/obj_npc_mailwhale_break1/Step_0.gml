interact = 0;

if (keyboard_multicheck_pressed(0) && scr_interact() == true)
    interact = 1;

if (scene < 7)
{
    if (instance_exists(obj_dialogue) && is_talking == true)
    {
        if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
        {
            image_speed = 0;
            image_index = 0;
        }
        else
        {
            image_speed = 0.2;
        }
    }
    else
    {
        image_speed = 0;
        is_talking = false;
    }
    
    depth = -y;
}

switch (scene)
{
    case 0:
        if (interact)
        {
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = other.object_index;
            
            if (global.mail_count < 2)
            {
                message[0] = "* Oh hey, I recognize you!";
                message[1] = "* Ummm... wait, don't tell me!#  It's... Uh...";
                message[2] = "* Clover! ";
                message[3] = "* Yeah, I remember you! ";
                message[4] = "* I delivered your intro letter!";
            }
            else if (global.mail_count >= 2 && global.mail_count < 5)
            {
                message[0] = "* You're Clover? Am I right? ";
                message[1] = "* Your name has come up once or#  twice!";
            }
            else
            {
                message[0] = "* Clover, right? Your name comes#  up all the time!";
                message[1] = "* You must be real popular!";
            }
        }
        
        break;
    
    case 2:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Hm? You look confused...";
            message[1] = "* Oh right, I'm not rhyming!";
            message[2] = "* Yeah, that's just a company#  policy.";
            message[3] = "* It gets a little tiresome#  sometimes.";
            message[4] = "* But other than that, I have no#  complaints!";
            message[5] = "* It's a great job! Wouldn't#  trade it for the world!";
            message[6] = "* I'm a little worried, though.";
            message[7] = "* These days, those fancy \"cell#  phones\" are all the rage!";
            message[8] = "* I don't know how long the mail#  service will-";
        }
        
        break;
    
    case 3:
        cutscene_audio_fade(obj_radio.current_song, 0, 200, 0.1, false);
        break;
    
    case 4:
        cutscene_sfx_play(342, 0.75);
        break;
    
    case 5:
        cutscene_wait(2);
        break;
    
    case 6:
        if (cutscene_dialogue())
            y -= 10;
        
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Oh me! Oh my! My break's come#  to an end!";
            message[1] = "* See you next time there's#  letters to send!";
        }
        
        break;
    
    case 7:
        cutscene_sfx_play(309, 0.75);
        break;
    
    case 8:
        depth = -room_height;
        
        if (sprite_index != spr_mail_whale_yellow)
            sprite_index = spr_mail_whale_yellow;
        
        image_speed = 0.2;
        
        if (vspeed > -2)
            vspeed -= 0.1;
        
        if (y < 20)
            cutscene_advance();
        
        break;
    
    case 9:
        global.dunes_flag_ext[5] = 1;
        cutscene_audio_fade(obj_radio.current_song, 1, 300, 0, true);
        instance_destroy();
        scr_cutscene_end();
        break;
}
