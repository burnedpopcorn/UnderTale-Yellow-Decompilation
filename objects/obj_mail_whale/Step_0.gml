var yy;

palette_index = obj_pl.palette_index;
shader_on = obj_pl.shader_on;

switch (scene)
{
    case 1:
        y += fly_speed;
        
        if (y > 0)
            mail_whale_shadow_alpha += 0.025;
        
        if (y > mail_whale_y_target && fly_speed > 0)
            fly_speed -= 0.2;
        else if (fly_speed == 0)
            scene = 2;
        
        break;
    
    case 2:
        if (global.player_can_travel == true)
        {
            scr_text();
            
            with (msg)
            {
                portrait = false;
                message[0] = "* Hello -  greetings - hip hip#  hooray!";
                message[1] = "* What can I do for you today?";
                ch_msg = 1;
                ch[1] = "Mail";
                ch[2] = "Travel";
                
                if (outcome == 1)
                    other.mail_whale_mail_noloop = true;
                
                if (outcome == 2)
                    other.mail_whale_travel_noloop = true;
                
                if (other.mail_whale_mail_noloop)
                {
                    message[2] = "* You have a watch? If you don't,#  that's fine!";
                    message[3] = "* Cause you know what time it is?#  Mail time! Mail time! ";
                    
                    if (ds_list_empty(global.mail_unclaimed_list))
                    {
                        message[4] = "* Do you have mail to claim?";
                        message[5] = "* Let's take a look. You don't!#  What a shame.";
                        message[6] = "* If you want to check again,#  just ring the bell!";
                        message[7] = "* Until we meet again; I bid you#  farewell!";
                        other.scene++;
                    }
                    else
                    {
                        portrait = false;
                        message[4] = "* (You received mail!)";
                        message[5] = "* I truly hope you like your#  mail!";
                        message[6] = "* As for me, I must set sail!";
                        
                        if (message_current == 4)
                        {
                            audio_play_sound(snd_success, 1, 0);
                            scr_mail_claim();
                            other.scene = 3;
                        }
                    }
                }
                
                if (other.mail_whale_travel_noloop)
                {
                    message[2] = "* Where in the world would you#  like to fly?";
                    message[3] = "* Just choose the place and the#  UGPS sign!";
                    global.cutscene = true;
                    other.scene = 4;
                }
            }
        }
        else
        {
            scr_text();
            
            if (ds_list_empty(global.mail_unclaimed_list))
            {
                with (msg)
                {
                    portrait = false;
                    message[0] = "* Hello again, friend! Do you#  have mail to claim?";
                    message[1] = "* Let's take a look. You don't!#  What a shame.";
                    message[2] = "* If you want to check again,#  just ring the bell!";
                    message[3] = "* Until we meet again; I bid you#  farewell!";
                }
                
                scene++;
            }
            else
            {
                with (msg)
                {
                    portrait = false;
                    message[0] = "* You have a watch? If you don't,#  that's fine!";
                    message[1] = "* Cause you know what time it is?#  Mail time! Mail time! ";
                    message[2] = "* (You received mail!)";
                    message[3] = "* I truly hope you like your#  mail!";
                    message[4] = "* As for me, I must set sail!";
                    
                    if (message_current == 2)
                    {
                        audio_play_sound(snd_success, 1, 0);
                        scr_mail_claim();
                        other.scene++;
                    }
                }
            }
        }
        
        break;
    
    case 3:
        if (instance_exists(obj_dialogue))
            exit;
        
        y -= fly_speed;
        mail_whale_shadow_alpha -= 0.05;
        
        if (y > ystart && fly_speed < 2)
            fly_speed += 0.2;
        
        if (y <= ystart)
        {
            instance_destroy();
            scr_cutscene_end();
            instance_destroy();
        }
        
        break;
    
    case 4:
        if (instance_exists(obj_dialogue))
            exit;
        
        instance_create(0, 0, obj_fast_travel_menu);
        scene++;
        break;
    
    case 5:
        if (instance_exists(obj_fast_travel_menu))
            exit;
        
        if (global.fast_travel_point == "None")
        {
            scr_text();
            
            with (msg)
                message[0] = "* OOF.";
            
            scene = 3;
        }
        else
        {
            scr_text();
            
            with (msg)
            {
                message[0] = "* A very fine choice, I cannot#  scoff!";
                message[1] = "* Hop into my basket and we'll#  takeoff!";
            }
            
            scene = 6;
        }
        
        break;
    
    case 6:
        if (global.dialogue_open)
            exit;
        
        depth = -y - 10;
        
        if (!instance_exists(obj_player_npc))
        {
            instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        }
        else
        {
            yy = y + 40;
            
            if (room == rm_steamworks_32)
                yy = y + 20;
            
            cutscene_npc_walk(1168, x, yy, 2, "nothing", "up");
        }
        
        break;
    
    case 7:
        cutscene_wait(0.5);
        break;
    
    case 8:
        audio_play_sound(snd_playerjump, 1, 0);
        
        with (obj_doorway)
            instance_destroy();
        
        obj_player_npc.image_alpha = 0;
        sprite_index = spr_mail_whale_basket_clover_yellow;
        cutscene_advance();
        break;
    
    case 9:
        cutscene_wait(1);
        break;
    
    case 10:
        depth = -room_height + 1;
        y -= fly_speed;
        mail_whale_shadow_alpha -= 0.05;
        
        if (y > -40 && fly_speed < 2)
            fly_speed += 0.2;
        
        if (y <= (camera_get_view_y(view_camera[0]) - 40))
            event_user(1);
        
        break;
}
