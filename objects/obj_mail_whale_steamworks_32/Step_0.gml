var yy;

yy = 250;

if (room == rm_steamworks_37)
    yy = 150;

switch (scene)
{
    case 1:
        y += fly_speed;
        
        if (y > yy && fly_speed > 0)
            fly_speed -= 0.2;
        else if (fly_speed == 0)
            scene = 2;
        
        break;
    
    case 2:
        cutscene_dialogue();
        
        with (msg)
        {
            portrait = false;
            message[0] = "* Greetings! Hello! How do you#  do?";
            message[1] = "* I have a very special letter#  just for you!";
            message[2] = "* Why so sudden, without a ring?";
            message[3] = "* Because priority mail is what#  I bring!";
            message[4] = "* (You received mail!)";
            message[5] = "* Make sure to read it before I#  flee!";
            message[6] = "* The one who sent it paid a#  premium fee!";
            
            if (message_current == 4 && !other.jingle_noloop)
            {
                audio_play_sound(snd_success, 1, 0);
                other.jingle_noloop = true;
            }
        }
        
        break;
    
    case 3:
        scr_mail_add("Martlet's Letter");
        scr_mail_check("Martlet's Letter");
        cutscene_advance();
        break;
    
    case 4:
        if (!instance_exists(obj_mail))
        {
            cutscene_dialogue();
            
            with (msg)
            {
                portrait = false;
                message[0] = "* Hope my speedy service helped#  you out!";
                message[1] = "* The UGPS always delivers#  without a doubt!";
            }
        }
        
        break;
    
    case 5:
        y -= fly_speed;
        
        if (y > -40 && fly_speed < 2)
            fly_speed += 0.2;
        
        if (y <= (camera_get_view_y(view_camera[0]) - (camera_get_view_height(view_camera[0]) * 0.5) - 40))
        {
            scr_radio_fade(1, 1000);
            scr_cutscene_end();
            global.sworks_flag[27] = 1;
            instance_destroy();
        }
        
        break;
}
