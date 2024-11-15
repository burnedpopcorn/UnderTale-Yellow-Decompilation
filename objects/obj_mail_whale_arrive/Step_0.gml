switch (scene)
{
    case 0:
        y += fly_speed;
        
        if (y > 0)
            mail_whale_shadow_alpha += 0.025;
        
        if (y > mail_whale_y_target && fly_speed > 0)
            fly_speed -= 0.2;
        else if (fly_speed == 0)
            scene = 1;
        
        break;
    
    case 1:
        obj_pl.direction = 270;
        obj_pl.image_alpha = 1;
        sprite_index = spr_mail_whale_basket_empty_yellow;
        cutscene_sfx_play(373, 1);
        break;
    
    case 2:
        cutscene_wait(1);
        break;
    
    case 3:
        obj_pl.direction = 270;
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* We have arrived without a#  scratch!";
            message[1] = "* The journey was fun but it's#  time to dispatch!";
            message[2] = "* Just ring the bell for any#  further assistance!";
            message[3] = "* The UGPS will be there with#  little resistance!";
        }
        
        break;
    
    case 4:
        if (vspeed > -3)
            vspeed -= 0.2;
        
        mail_whale_shadow_alpha -= 0.025;
        
        if (y < camera_get_view_y(view_camera[0]))
        {
            scr_cutscene_end();
            instance_destroy();
        }
        
        break;
}

depth = -y - 10;
