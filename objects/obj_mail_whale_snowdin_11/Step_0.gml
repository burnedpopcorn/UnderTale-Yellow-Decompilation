switch (scene)
{
    case 1:
        y += fly_speed;
        
        if (y > 0)
            mail_whale_shadow_alpha += 0.025;
        
        if (y > 80 && fly_speed > 0)
            fly_speed -= 0.2;
        else if (fly_speed == 0)
            scene = 2;
        
        break;
    
    case 2:
        scr_text();
        
        with (msg)
        {
            portrait = false;
            message[0] = "* Oh boy, oh gee, a customer!#* I'm nervous!";
            message[1] = "* I'm a Mail Whale from the#  Underground Postal Service!";
            message[2] = "* Haven't heard of us? We're the#  best!";
            message[3] = "* For short, just call us UGPS!";
            message[4] = "* So I hear you're new to the#  Underground!";
            message[5] = "* How you ask? Well, word sure#  gets around!";
            message[6] = "* The Underground is great and it#  keeps getting better.";
            message[7] = "* 'Cause I brought for you your#  very first letter!";
            message[8] = "* (YOU RECEIVED MAIL!)";
            message[9] = "* That was a special letter, from#  us to you!";
            message[10] = "* Do you feel welcome now? I hope#  you do!";
            message[11] = "* Isn't the mail system a#  wonderful innovation?";
            message[12] = "* If you ever want to use it,#  just come to a station!";
            message[13] = "* They look just like this and#  they're scattered all about!";
            message[14] = "* If you want to receive some#  mail, find one, and give a#  shout!";
            message[15] = "* We assure you, they are#  conveniently situated!";
            message[16] = "* Here at UGPS, we're anything#  but dated!";
            message[17] = "* Talking and sharing, all using#  mail!";
            message[18] = "* From your Underground friends,#  but that's all for this whale!";
            message[19] = "* Now, I must be off! The mail#  mustn't be late!";
            message[20] = "* See you later on in your#  journey, mate!";
            
            if (message_current == 8)
            {
                scr_mail_add("Intro Letter");
                audio_play_sound(snd_success, 20, 0);
                other.scene++;
            }
        }
        
        break;
    
    case 3:
        if (!instance_exists(obj_dialogue))
        {
            audio_sound_gain(mus_delivery, 0, 1000);
            y -= fly_speed;
            mail_whale_shadow_alpha -= 0.05;
            
            if (y > -40 && fly_speed < 2)
                fly_speed += 0.2;
            
            if (y <= -40)
            {
                instance_destroy();
                scr_radio_fade(1, 1000);
                scr_cutscene_end();
                global.snowdin_flag[7] = 1;
                instance_destroy();
            }
        }
        
        break;
}
