if (global.dunes_flag[2] == 0)
{
    if (obj_sandstorm_controller.storm_active == true)
    {
        sprite_index = spr_storm_fan;
        image_speed = 0.6;
    }
    else if (sprite_index == spr_storm_fan)
    {
        sprite_index = spr_storm_fan_stop;
        image_index = 0;
        image_speed = 0.4;
    }
}
else if (sprite_index == spr_storm_fan)
{
    sprite_index = spr_storm_fan_stop;
    image_index = 0;
    image_speed = 0.4;
}

if (sprite_index == spr_storm_fan_stop)
{
    if (on_animation_end())
        image_speed = 0;
}

if (scr_interact() && keyboard_multicheck_pressed(0))
    waiter = 1;

if (waiter == 1)
{
    if (instance_exists(obj_sandstorm_controller) && obj_sandstorm_controller.storm_active && obj_pl.x < x)
    {
        waiter = 0;
        exit;
    }
    
    scr_text();
    
    if (global.dunes_flag[2] == 0)
    {
        with (msg)
        {
            message[0] = "* (Turn it off?)";
            ch_msg = 0;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1)
            {
                global.dialogue_open = false;
                global.dunes_flag[2] = 1;
                instance_destroy(obj_sandstorm_controller);
                
                if (audio_is_playing(snd_sandstorm))
                    audio_stop_sound(snd_sandstorm);
                
                obj_storm_fan_lever.image_speed = 1;
                other.waiter = 0;
            }
            
            if (outcome == 2)
            {
                global.dialogue_open = false;
                other.waiter = 0;
            }
        }
    }
    else if (global.dunes_flag[2] >= 1)
    {
        if (obj_pl.y > (bbox_bottom - 10))
        {
            with (msg)
            {
                message[0] = "* Built to order by Hotland#  Mechanics.";
                message[1] = "* Super Seal of Hotland Quality:";
                message[2] = "* (The seal is drawn in permanent#  marker.)";
            }
        }
        else
        {
            with (msg)
                message[0] = "* (It's probably better to#  leave it turned off.)";
        }
        
        waiter = 0;
    }
}
