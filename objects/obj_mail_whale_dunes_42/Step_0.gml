switch (scene)
{
    case 1:
        y += fly_speed;
        
        if (y > 0)
            mail_whale_shadow_alpha += 0.025;
        
        if (y > 100 && fly_speed > 0)
            fly_speed -= 0.2;
        else if (fly_speed == 0)
            scene = 2;
        
        break;
    
    case 2:
        scr_text();
        
        with (msg)
        {
            portrait = false;
            message[0] = "* Hello again! I have some news!";
            message[1] = "* You now can ship yourself, if#  you so choose!";
            message[2] = "* \"Ship myself? What could that#  mean?\"";
            message[3] = "* Transportation, all for free!";
            message[4] = "* If you want to travel, give me#  a call!";
            message[5] = "* We will set to the skies#  without a care at all!";
            message[6] = "* Now I must go but don't be#  nervous...";
            message[7] = "* Just ring the bell for our#  service!";
        }
        
        scene++;
        break;
    
    case 3:
        if (!instance_exists(obj_dialogue))
        {
            y -= fly_speed;
            mail_whale_shadow_alpha -= 0.05;
            scr_audio_fade_out(114, 500);
            
            if (y > -40 && fly_speed < 2)
                fly_speed += 0.2;
            
            if (y <= -40)
            {
                instance_destroy();
                scr_radio_fade(1, 1000);
                scr_cutscene_end();
                global.player_can_travel = 1;
                instance_destroy();
            }
        }
        
        break;
}
